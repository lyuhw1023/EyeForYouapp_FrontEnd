import 'package:flutter/material.dart';

class ExplainLifeList extends StatelessWidget{
  const ExplainLifeList({Key? key}) : super(key: key);

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
        title: Text('생애주기',
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
              boldText('생애주기 선택 페이지\n\n'),
              normalText('이 페이지에서 총 4개의 생애주기 중 하나를 선택할 수 있습니다:\n\n'),
              normalText('1. 영유아 (7세 이전)\n'),
              normalText('2. 아동 & 청소년 (8세 ~ 19세)\n'),
              normalText('3. 성인 (20세 ~ 64세)\n'),
              normalText('4. 노인 (65세 이상)\n\n'),
              normalText('해당되는 생애주기를 선택하면, 이에 맞는 결과가 표시됩니다.\n'),
            ],
          ),
        ),
      ),
    ),
    );
  }
}