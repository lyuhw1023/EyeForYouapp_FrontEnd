import 'dart:io';
import 'package:app_eyeforyou/explain_main.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

// 사용가능한 카메라 장치의 목록을 저장하는 변수
late List<CameraDescription> _cameras;

Future<void> main() async {
  // 앱이 실행되기 전에 필요한 초기화 작업을 수행하는 메소드
  // 사용가능한 카메라를 확인
  WidgetsFlutterBinding.ensureInitialized();

  // 사용 가능한 카메라 확인
  _cameras = await availableCameras();

  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            body: SafeArea(child: CameraApp()),
          )
      ));
}

//메인화면
class CameraApp extends StatefulWidget {
  // Default Constructor
  const CameraApp({super.key});

  @override
  State<CameraApp> createState() => CameraAppState();
}

class CameraAppState extends State<CameraApp> {
  // 카메라 컨트롤러 인스턴스 생성
  late CameraController controller;

  @override
  void initState() {
    super.initState();
    // 카메라 컨트롤러 초기화
    // _cameras[0] : 사용 가능한 첫번째 카메라
    // Resulutionpreset : 사진 품질
    // enableAudio : 오디오 녹음 여부
    controller =
        CameraController(_cameras[0], ResolutionPreset.max, enableAudio: false);

    controller.initialize().then((_) {
      // 카메라가 작동되지 않을 경우
      if (!mounted) {
        return;
      }
      // 카메라가 작동될 경우
      setState(() {
        // 코드 작성
      });
    })
    // 카메라 오류 시
        .catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            print("CameraController Error : CameraAccessDenied");
            // Handle access errors here.
            break;
          default:
            print("CameraController Error");
            // Handle other errors here.
            break;
        }
      }
    });
  }

  // 사진을 찍는 함수
  Future<void> _takePicture() async {
    if (!controller.value.isInitialized) {
      return;
    }

    try {
      // 사진 촬영
      final XFile file = await controller.takePicture();

      // 사진을 저장할 경로 : 기본경로(storage/emulated/0/)
      Directory directory = Directory('storage/emulated/0/DCIM/MyImages');

      // 지정한 경로에 디렉토리를 생성하는 코드
      // .create : 디렉토리 생성
      // recursive : true - 존재하지 않는 디렉토리일 경우 자동 생성
      await Directory(directory.path).create(recursive: true);

      // 지정한 경로에 사진 저장
      await File(file.path).copy('${directory.path}/${file.name}');
    } catch (e) {
      print('Error taking picture: $e');
    }
  }

  @override
  void dispose() {
    // 카메라 컨트롤러 해제
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 카메라가 준비되지 않으면 아무것도 띄우지 않음
    if (!controller.value.isInitialized) {
      return Container();
    }

    // 카메라 인터페이스와 위젯을 겹쳐 구성할 예정이므로 Stack 위젯 사용
    return Scaffold(
      appBar: AppBar(
        title: Text('EYEFORYOU'),
        centerTitle: true,
        actions: [
          IconButton(//CameraAppState
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => ExplainMain()),
              );
            },
            icon: Icon(Icons.question_mark_rounded),
          )
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
              onTap: () {},
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
      body: Stack(
        children: [
          // 화면 전체를 차지하도록 Positioned.fill 위젯 사용
          Positioned.fill(
            // 카메라 촬영 화면이 보일 CameraPrivew
            child: CameraPreview(controller),
          ),
        ],
      ),
    );
  }
}