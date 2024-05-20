import 'package:flutter/material.dart';

class ExPsychotherapy extends StatelessWidget{
  const ExPsychotherapy({Key? key}) : super(key: key);

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
          title: Text('심리치료\n(미술,놀이,음악 등)',
            style: TextStyle(
              fontSize: 25,
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
                boldText('심리치료(미술,놀이,음악 등)\n'),
                normalText('정서 및 행동발달 장애아동의 정서 인지 언어 기능, 사회적 기능을 향상시키고 잠재능력을 최대한 발휘할 수 있도록 지원합니다.\n\n'),

                boldText('1. 지원 대상\n'),
                normalText('• 심리치료가 필요한 아동·청소년 및 가족\n'),

                boldText('2. 지원 내용:\n'),
                normalText('• 미술치료, 놀이치료, 음악치료, 언어상담 등을 통해 심리적 적응력을 향상시키는 치료 및 상담\n'),
                normalText('• 치료 방법에 따라 명칭이 변경될 수 있으며, 제공되는 치료기법은 제공기관의 상황에 따라 변경될 수 있음\n\n'),

                boldText('3. 이용료\n'),
                normalText('• 각 기관 문의\n'),

                boldText('4. 이용 상담\n'),
                normalText('• 각 기관 문의\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
