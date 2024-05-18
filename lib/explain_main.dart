import 'package:flutter/material.dart';

class ExplainMain extends StatelessWidget{
  const ExplainMain({Key? key}) : super(key: key);

  // 기본 텍스트 스타일
  TextSpan normalText(String text) {
    return TextSpan(text: text);
  }

  // 굵은 텍스트 스타일
  TextSpan boldText(String text) {
    return TextSpan(
        text: text,
        style: TextStyle(
            fontWeight: FontWeight.w800,
            fontSize: 19));
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('AI 카메라 서비스',
          style: TextStyle(
            fontSize: 19,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close,
                semanticLabel: "닫기"),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.black, fontSize: 17, height: 1.3), // Default text style
            children: [
              normalText('\n편의점 물건들을 카메라로 비추면, 물건이 무엇인 지 보이스 오버 기능을 통해 읽어줍니다.\n'),
              boldText('\n기능 소개\n'),
              normalText('□ 물건 인식: 카메라를 편의점 물건에 비추면 물건의 종류를 읽어줍니다.\n\n'),
              boldText('사용 방법\n'),
              normalText('1. 카메라로 물건 비추기: 편의점에서 원하는 물건을 카메라로 비춥니다.\n\n'),
              normalText('2. 물건 정보 듣기: 물건이 어떤 것인지 보이스 오버 기능을 통해 음성으로 확인하세요.\n')
            ],
          ),
        ),
      ),
    );
  }
}