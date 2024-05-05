import 'package:flutter/material.dart';

class ExplainMain extends StatelessWidget{
  const ExplainMain({Key? key}) : super(key: key);

  // 기본 텍스트 스타일
  TextSpan normalText(String text) {
    return TextSpan(text: text);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('AI 카메라 서비스',
          style: TextStyle(
            fontSize: 19,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0), // 적절한 여백 설정
          child: Container(
            alignment: Alignment.center,
            child: Text(
              '카메라를 편의점 물체들에 비추면, \n그 물건이 무엇인 지 자동으로 읽을 수 있습니다.\n\n'
                  '읽고자 하는 물건이 카메라 프레임에 걸치거나, 잘 안보이는 경우, 진동을 \n주어 프레임 안쪽으로 들어오도록 할 수 있습니다.',
              textAlign: TextAlign.center, // 텍스트를 가운데 정렬
              style: TextStyle(
                fontSize: 16,
                height: 1.5,  // 행간 조정
              ),
            ),
          ),
        ),
      ),
    );
  }
}