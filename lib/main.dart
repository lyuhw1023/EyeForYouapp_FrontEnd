import 'dart:io';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:path_provider/path_provider.dart';
import 'package:app_eyeforyou/explain_main.dart';

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

    // Send to server
    sendImageToServer(tempImage);
  }

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
        // 여기에 드로어의 내용을 추가하세요
      ),
      body: _controller.value.isInitialized
          ? Stack(
        children: [
          CameraPreview(_controller),
          // 여기에 필요한 다른 위젯을 추가하세요
        ],
      )
          : Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: _takePicture,
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}
