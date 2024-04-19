import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:path_provider/path_provider.dart';
import 'package:app_eyeforyou/explain_main.dart';
import 'package:app_eyeforyou/benefit.dart';

// 사용가능한 카메라 장치의 목록을 저장하는 변수
late List<CameraDescription> _cameras;

Future<void> main() async {
  // 사용 가능한 카메라 확인
  WidgetsFlutterBinding.ensureInitialized();
  _cameras = await availableCameras();

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
  late CameraController _controller;
  late CameraDescription firstCamera;

  @override
  void initState() {
    super.initState();
    firstCamera = _cameras.first;
    _controller = CameraController(
      firstCamera,
      ResolutionPreset.medium,
      enableAudio: false,
    );
    _controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  //사진 찍는 함수
  Future<void> _takePicture() async {
    if (!_controller.value.isInitialized) {
      print('Controller is not initialized');
      return;
    }

    final XFile image = await _controller.takePicture();
    File imageFile = File(image.path);

    // Temporary place file inside the app's directory
    final Directory extDir = await getApplicationDocumentsDirectory();
    final String dirPath = '${extDir.path}/Pictures/flutter_test';
    await Directory(dirPath).create(recursive: true);
    final String filePath = '$dirPath/${timestamp()}.jpg';

    File tempImage = await imageFile.copy(filePath);

    sendImageToServer(tempImage);
  }

  //서버로 이미지 전송
  Future<void> sendImageToServer(File imageFile) async {
    // Ngrok을 통해 터널링된 서버의 주소를 사용합니다.
    var uri = Uri.parse('https://ead6-220-66-156-153.ngrok-free.app/upload/');
    var request = http.MultipartRequest('POST', uri)
      ..files.add(await http.MultipartFile.fromPath(
        'file',
        imageFile.path,
        contentType: MediaType('image', 'jpeg'),
      ));

    try {
      var response = await request.send();
      if (response.statusCode == 200) {
        print('Image uploaded successfully');
        // You can listen to the response here if you want to use the analysis result immediately
        // 서버의 응답을 받아 처리하는 코드를 여기에 추가할 수 있습니다.
      } else {
        print('Failed to upload image: ${response.statusCode}');
      }
    } catch (e) {
      print('Error occurred: $e');
    }
  }


  String timestamp() => DateTime.now().millisecondsSinceEpoch.toString();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EYEFORYOU'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExplainMain()),
              );
            },
            icon: Icon(Icons.question_mark_rounded),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border(bottom: BorderSide(color: Colors.black, width: 1)),
              ),
              child: Center(
                child: Text('EYEFORYOU',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ),
            ListTile(
              //leading: Icon(Icons.home),
              //iconColor: Colors.purple,
              //focusColor: Colors.grey,
              title: Text('혜택 모아보기'),
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Benefit()),
                );
              },
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              //leading: Icon(Icons.home),
              //iconColor: Colors.purple,
              focusColor: Colors.grey,
              title: Text('복지 시설 모아보기'),
              onTap: () {},
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              //leading: Icon(Icons.home),
              //iconColor: Colors.purple,
              focusColor: Colors.grey,
              title: Text('도움말'),
              onTap: () {},
              trailing: Icon(Icons.navigate_next),
            ),
            ListTile(
              //leading: Icon(Icons.home),
              //iconColor: Colors.purple,
              focusColor: Colors.grey,
              title: Text('설정'),
              onTap: () {},
              trailing: Icon(Icons.navigate_next),
            ),
          ],
        ),
      ),
      // body: FutureBuilder<void>(
      //   future: _controller.initialize(),
      //   builder: (context, snapshot) {
      //     if (snapshot.connectionState == ConnectionState.done) {
      //       // Future가 완료되면, 프리뷰를 표시합니다.
      //       return Stack(
      //         fit: StackFit.expand, // Stack을 전체 화면으로 확장
      //         children: <Widget>[
      //           CameraPreview(_controller), // 카메라 프리뷰를 전체 화면으로 표시합니다.
      //           Positioned( // 카메라 버튼 위치 조정
      //             bottom: 30.0,
      //             right: 150.0,
      //             child: FloatingActionButton(
      //               onPressed: _takePicture, // 사진 찍는 함수 연결
      //               child: const Icon(Icons.circle_rounded),
      //               backgroundColor: new Color((0xff0000)),
      //
      //             ),
      //           ),
      //         ],
      //       );
      //     } else {
      //       // 그렇지 않으면, 로딩 스피너를 표시합니다.
      //       return const Center(child: CircularProgressIndicator());
      //     }
      //   },
      // ),

      body: _controller.value.isInitialized
          ? Stack(
        fit: StackFit.expand,
        children: <Widget>[
          CameraPreview(_controller),
          Positioned(
            bottom: 30.0,
              right: 150.0,
              child: FloatingActionButton(
                onPressed: _takePicture,
                child: const Icon(Icons.camera_alt),
                backgroundColor: new Color(0x000000),
              ))
        ],
      )
          : Container(),

      // body: _controller.value.isInitialized
      //     ? Stack(
      //   children: [
      //     CameraPreview(_controller),
      //     // 여기에 필요한 다른 위젯을 추가하세요
      //   ],
      // )
      //     : Container(),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _takePicture,
      //   child: Icon(Icons.camera_alt),
      // ),


    );
  }
}
