import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
//import 'package:path_provider/path_provider.dart';
//import 'package:flutter_tts/flutter_tts.dart';
import 'dart:async';
import 'dart:convert';
import 'package:app_eyeforyou/explain_main.dart';
import 'package:app_eyeforyou/benefit_first.dart';


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

class _CameraAppState extends State<CameraApp> {
  CameraController? _controller;
  // late FlutterTts flutterTts;
  String _imagePath = ''; // 이미지 파일 경로를 저장할 변수

  @override
  void initState() {
    super.initState();
    initializeCamera(cameras.first);
    // flutterTts = FlutterTts();
  }


  Future<void> initializeCamera(CameraDescription cameraDesc) async {
    if (_controller != null && _controller!.value.isInitialized) {
      return; // 이미 초기화된 경우, 재초기화 방지
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
    if (_controller?.value.isInitialized != true) { // 안전한 접근
      print('Controller is not initialized');
      return;
    }

    final XFile image = await _controller!.takePicture();
    File imageFile = File(image.path);
    setState(() {
      _imagePath = image.path; // 찍힌 이미지의 경로를 저장
    });

    //이미지를 서버에 전송하고 결과 받기
    String result = await sendImageToServer(imageFile);

    //음성으로 결과 알려주기
    // flutterTts.speak(result);

    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ImagePreviewScreen(imagePath: image.path, analysisResult: result),
        )
    ).then((_) => initializeCamera(cameras.first));
  }

  @override
  void dispose() {
    _controller?.dispose();
    // flutterTts.stop();
    super.dispose();
  }

  //서버로 이미지 전송, 결과값 받기
  Future<String> sendImageToServer(File imageFile) async {
    // Ngrok을 통해 터널링된 서버의 주소 사용
    var uri = Uri.parse('https://3a09-220-66-156-236.ngrok-free.app/upload/');
    var request = http.MultipartRequest('POST', uri)
      ..files.add(await http.MultipartFile.fromPath(
        'file',
        imageFile.path,
        contentType: MediaType('image', 'jpeg'), // 파일의 MIME 타입을 올바르게 지정
      ))
      ..headers.addAll({
        'Authorization': 'Bearer your_token_here',  // 예시로 추가된 인증 헤더
      });


    try {
      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);


      if (response.statusCode == 200) {
        //성공적으로 데이터 받았을 경우
        var decodedResponse = utf8.decode(response.bodyBytes);
        return decodedResponse;  // UTF-8로 디코딩된 응답
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


    // 밑에 공간있음
      body: _controller?.value.isInitialized ?? false
          ? GestureDetector(
        onTap: _takePicture,  // 사용자가 화면을 탭할 때 _takePicture 함수 호출
        child: CameraPreview(_controller!),  // 카메라 프리뷰를 보여주는 위젯
      )
          : Center(child: CircularProgressIndicator()),  // 카메라 초기화 중이면 로딩 인디케이터 표시
      // 기존의 FloatingActionButton은 제거하거나 다른 기능으로 대체할 수 있습니다.
    );

    //길게
    //   body: _controller?.value.isInitialized == true
    //       ? Stack(
    //     children: <Widget>[
    //       Positioned.fill(
    //         child: GestureDetector(
    //           onTap: _takePicture,
    //           // child: CameraPreview(_controller),
    //           child: _imagePath.isEmpty
    //               ? CameraPreview(_controller!)  // 이미지 경로가 비어있으면 카메라 미리보기 보여주기
    //               : Image.file(File(_imagePath)),  // 이미지 경로가 있으면 이미지 보여주기
    //         ),
    //       ),
    //     ],
    //   )
    //       : Center(child: CircularProgressIndicator()),
    // );
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
  final String analysisResult;  // 서버로부터 받은 분석 결과

  ImagePreviewScreen({required this.imagePath, required this.analysisResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('사진 확인'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // 이전 화면으로 돌아가기
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Image.file(File(imagePath)), // 찍힌 사진을 화면에 표시
          ),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(analysisResult), // 분석 결과 표시
          ),
        ],
      ),
    );
  }
}