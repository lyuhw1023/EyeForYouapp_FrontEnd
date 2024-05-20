import 'package:flutter/material.dart';

class ExplainBenefitSecond extends StatelessWidget{
  const ExplainBenefitSecond({Key? key}) : super(key: key);

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
    return Theme(
      data: ThemeData(
        primaryColor: Color(0xFF08436D),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF08436D).withOpacity(0.3), // 투명도 조정
        ),
      ),
    child: Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('혜택 모아보기',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        toolbarHeight: 75.0,
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
              boldText('결과 페이지 선택\n\n'),
              normalText('이 페이지에서는 사용자의 중증도에 따라 결과를 선택할 수 있습니다. 중증과 경증 중 어떤 등급에 해당하는 지 선택하세요.\n\n'),
              boldText('중증 (1급~3급)\n'),
              normalText('중증 등급을 선택하면 해당 결과 페이지로 이동합니다. 중증 등급에 해당하는 혜택과 서비스를 확인할 수 있습니다.\n\n'),
              boldText('경증 (4급~6급)\n'),
              normalText('경증 등급을 선택하면 해당 결과 페이지로 이동합니다. 경증 등급에 해당하는 혜택과 서비스를 확인할 수 있습니다.\n\n'),
              boldText('사용 방법\n'),
              normalText('1. 등급 선택: 자신의 중증도에 따라 중증 또는 경증 등급 중 하나를 선택하세요.\n\n'),
              normalText('2. 결과 확인: 선택한 등급에 해당하는 결과 페이지로 이동하여 혜택과 서비스를 확인하세요.\n'),
            ],
          ),
        ),
      ),
    ),
    );
  }
}