import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:path_provider/path_provider.dart';
import 'package:image/image.dart' as img_lib;
import 'dart:async';
import 'dart:convert';
import 'package:app_eyeforyou/explain_main.dart';
import 'package:app_eyeforyou/benefit_first.dart';
import 'package:lottie/lottie.dart';
//import 'package:flutter_tts/flutter_tts.dart';

// 사용가능한 카메라 장치의 목록을 저장하는 변수
late List<CameraDescription> cameras;

Future<void> main() async {
  // 사용 가능한 카메라 확인
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CameraApp(),
    );
  }
}

class CameraApp extends StatefulWidget {
  @override
  _CameraAppState createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> with WidgetsBindingObserver {
  CameraController? _controller;
  String _imagePath = '';   // 이미지 파일 경로를 저장할 변수

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    initializeCamera(cameras.first);
  }

  //카메라 초기화
  Future<void> initializeCamera(CameraDescription cameraDesc) async {
    if (_controller != null) {
      await _controller!.dispose();
    }
    _controller = CameraController(
      cameraDesc,
      ResolutionPreset.medium,
      enableAudio: false,
    );

    try {
      await _controller!.initialize();
      if (!mounted) return;
      setState(() {});
    } catch (e) {
      print('Camera initialization failed: $e');
    }
  }

  //사진 찍는 함수
  Future<void> _takePicture() async {
    if (_controller?.value.isInitialized != true) {   // 안전한 접근
      print('Controller is not initialized');
      return;
    }

    final XFile image = await _controller!.takePicture();
    File imageFile = File(image.path);

    // 이미지 파일의 해상도를 확인
    img_lib.Image? imageTemp = img_lib.decodeImage(imageFile.readAsBytesSync());
    if (imageTemp != null) {
      final width = imageTemp.width;
      final height = imageTemp.height;

      // 이미지 3:4 비율로 크롭
      int targetHeight = (width * 4) ~/ 3;
      if (targetHeight < height) {
        int yOffset = (height - targetHeight) ~/ 2;
        imageTemp = img_lib.copyCrop(
          imageTemp,
          x: 0,                   // 'x' 매개변수 명시
          y: yOffset,             // 'y' 매개변수 명시
          width: width,           // 'width' 매개변수 명시
          height: targetHeight,   // 'height' 매개변수 명시
        );
        File croppedFile = File('${imageFile.path}_cropped.jpg');
        croppedFile.writeAsBytesSync(img_lib.encodeJpg(imageTemp));

        // 크롭된 이미지의 경로를 저장
        setState(() {
          _imagePath = croppedFile.path;
        });

        // 로딩 애니메이션 표시 후 화면 전환
        showLoadingAnimation(context, croppedFile.path, width, targetHeight);
      } else {
        print("Calculated target height exceeds original image height.");
      }
    }
  }

  void showLoadingAnimation(BuildContext context, String imagePath, int width, int height) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Center(
          child: Lottie.asset(
            'assets/lottie/loading.json',
            width: 200,
            height: 200,
            fit: BoxFit.fill,
            repeat: false,
            onLoaded: (composition) {
              Future.delayed(composition.duration, () async {
                String result = await sendImageToServer(File(imagePath));
                Navigator.pop(context); // 로딩 애니메이션 끝나면 닫기
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ImagePreviewScreen(
                      imagePath: imagePath,
                      analysisResult: result,
                      resolution: '${width}x$height',
                    ),
                  ),
                ).then((_) => initializeCamera(cameras.first));
              });
            },
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _controller?.dispose();
    super.dispose();
  }

  //서버로 이미지 전송, 결과값 받기
  Future<String> sendImageToServer(File imageFile) async {
    // Ngrok을 통해 터널링된 서버의 주소 사용
    var uri = Uri.parse('https://b06d-210-115-229-173.ngrok-free.app/predict');
    var request = http.MultipartRequest('POST', uri)
      ..files.add(await http.MultipartFile.fromPath(
        'file',
        imageFile.path,
        contentType: MediaType('image', 'jpeg'),    // 파일의 MIME 타입을 올바르게 지정
      ))
      ..headers.addAll({
        'Authorization': 'Bearer your_token_here',   // 예시로 추가된 인증 헤더
      });

    try {
      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == 200) {
        //성공적으로 데이터 받았을 경우
        var decodedResponse = utf8.decode(response.bodyBytes);
        return decodedResponse;   // UTF-8로 디코딩된 응답 - 한글
      } else {
        //실패했을 경우
        print('사진 업로드를 실패했습니다.: ${response.statusCode}');
        return '사진 업로드를 실패했습니다.${response.statusCode}';
      }
    } catch (e) {
      print('오류가 발생하였습니다.: $e');
      return '오류가 발생하였습니다.';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EYEFORYOU',
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'AllertaStencil',
          ),
        ),
        toolbarHeight: 115.0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.more_horiz,
              semanticLabel: "혜택 모아보기"),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BenefitFirst()),
            );
          },
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                _createRoute(),
              );
            },
            icon: Icon(
                Icons.question_mark_rounded,
                semanticLabel: "도움말"),
          ),
        ],
      ),
      body: _controller?.value.isInitialized ?? false
          ? GestureDetector(
              onTap: _takePicture,                  // 사용자가 화면을 탭할 때 _takePicture 함수 호출
              child: CameraPreview(_controller!),   // 카메라 프리뷰를 보여주는 위젯
          )
          : Center(child: CircularProgressIndicator()), // 카메라 초기화 중이면 로딩 인디케이터 표시
    );
  }


  //애니메이션 추가 함수
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => ExplainMain(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}

class ImagePreviewScreen extends StatelessWidget {
  final String imagePath;
  final String analysisResult;    // 서버로부터 받은 분석 결과
  final String resolution;

  ImagePreviewScreen({required this.imagePath, required this.analysisResult, required this.resolution});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('사진 확인'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context, true); // 이전 화면으로 돌아가기
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Image.file(File(imagePath)),   // 찍힌 사진을 화면에 표시
          ),
          Text('Resolution: $resolution', style: TextStyle(fontSize: 20)),
          Text('Analysis Result: $analysisResult', style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
