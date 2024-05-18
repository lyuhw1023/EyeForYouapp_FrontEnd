import 'package:flutter/material.dart';

class ExFamily extends StatelessWidget{
  const ExFamily({Key? key}) : super(key: key);

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
      // 새 테마 데이터를 적용
      data: ThemeData(
        primaryColor: Color(0xFF08436D),
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF08436D).withOpacity(0.3), // 투명도 조정
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('  장애가족역량강화프로그램',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          toolbarHeight: 100.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.close,
                  semanticLabel: "닫기"),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 16, height: 1.5),
              children: [
                boldText('장애가족역량강화프로그램\n'),
                normalText('장애가족의 스트레스 해소와 역량강화를 위한 프로그램을 제공합니다.\n\n'),

                boldText('1. 지원 대상:\n'),
                normalText('• 장장애를 가진 자녀를 둔 부모 및 형제 자매\n'),
                normalText('• 프로그램에 따라 대상이 다를 수 있음\n\n'),

                boldText('2. 서비스 내용:\n'),
                normalText('• 양육코칭프로그램, 가족활동프로그램, 가족문화여가프로그램, 자조모임, 주 양육자 심리상담 등이 포함됨\n'),
                normalText('• 역량 강화 프로그램의 경우, 각 기관마다 내용이 다름\n\n'),

                boldText('3. 문의:\n'),
                normalText('• 각 기관에 문의해야 함 (기관 리스트 참조)\n\n'),

                boldText('4. 프로그램 기관:\n'),
                normalText('• 프로그램을 제공하는 다양한 기관들의 목록이 포함됨\n'),
                normalText('• 기관마다 제공하는 서비스와 연락처, 주소 등이 명시됨\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
