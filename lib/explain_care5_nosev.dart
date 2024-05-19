import 'package:flutter/material.dart';

class ExplainCare5Nosev extends StatelessWidget{
  const ExplainCare5Nosev({Key? key}) : super(key: key);

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
        title: Text('보육/교육, 경증 혜택',
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
              boldText('\n보육/교육, 경증 결과페이지\n\n'),
              normalText('이 페이지에서는 중증 결과 목록을 스크롤 형식으로 위로 올려서 볼 수 있습니다.알고 싶은 항목이 있다면, 목록을 클릭하여 결과를 확인하세요.\n\n'),
            ],
          ),
        ),
      ),
    ),
    );
  }
}