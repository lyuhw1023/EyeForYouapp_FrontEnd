import 'package:flutter/material.dart';

class ExplainCareList extends StatelessWidget{
  const ExplainCareList({Key? key}) : super(key: key);

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
        title: Text('복지서비스',
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
              normalText('이 페이지에서 총 12개의 복지서비스 중 하나를 선택할 수 있습니다:\n\n'),
              normalText('1. 생활 안정\n'),
              normalText('2. 가족 지원\n'),
              normalText('3. 고용\n'),
              normalText('4. 거주/이용\n'),
              normalText('5. 보육/교육\n'),
              normalText('6. 건강/의료\n'),
              normalText('7. 문화/여가\n'),
              normalText('8. 편의\n'),
              normalText('9. 보조기기\n'),
              normalText('10. 권익\n'),
              normalText('11. 상담\n'),
              normalText('12. 바우처\n\n'),
              normalText('알고 싶은 복지서비스를 클릭하면, 이에 맞는 결과가 표시됩니다.\n'),
            ],
          ),
        ),
      ),
    ),
    );
  }
}