import 'package:flutter/material.dart';

class ExAdoption extends StatelessWidget {
  const ExAdoption({Key? key}) : super(key: key);

  // 기본 텍스트 스타일
  TextSpan normalText(String text) {
    return TextSpan(text: text + "\n\n");
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
  Widget build(BuildContext context) {
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
          title: Text('입양기관',
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
                boldText('입양기관\n'),
                normalText('입양의 의미와, 절차 및 입양을 지원하는 기관을 안내해 드립니다.\n\n'),

                boldText('1. 입양의 의미\n'),
                normalText('• 혈연이 아닌 법적인 친자관계를 형성\n'),
                normalText('• 입양허가 후 친생부모의 권리와 의무는 소멸되고, 입양부모로 전환\n\n'),

                boldText('2. 입양대상 아동\n'),
                normalText('• 부모나 후견인 동의 없이 보호시설에 맡겨진 아동\n'),
                normalText('• 부양의무자를 찾을 수 없는 경우 구청장(군수)에 의해 보호시설에 맡겨진 아동\n\n'),

                boldText('3. 입양자격\n'),
                normalText('• 충분한 재산 보유\n'),
                normalText('• 양육과 교육 가능\n'),
                normalText('• 범죄나 약물 중독 경력 없음\n'),
                normalText('• 해당 국가 법에 따른 양부 가능\n'),
                normalText('• 기타 복지를 위한 요건 충족\n\n'),

                boldText('4. 입양특례법\n'),
                normalText('• 가정법원의 허가로 성립\n'),
                normalText('• 친생부모의 권리와 의무가 소멸되고, 입양부모로 이전\n\n'),

                boldText('5. 입양숙려제\n'),
                normalText('• 아동 출생 후 1주일 경과 후 입양동의 가능\n\n'),

                boldText('6. 사후서비스\n'),
                normalText('• 1년간 사후관리 및 서비스 제공\n\n'),

                boldText('7. 입양절차\n'),
                normalText('• 신청 -> 가정조사 -> 부모교육 -> 입양 허가 신청 -> 입양 허가 -> 입양 신고 -> 사후 관리\n\n'),

                boldText('8. 입양가정에 대한 지원\n'),
                normalText('• 양육보조금, 의료비 지원, 심리치료비, 상해보험 가입 등\n\n'),

                boldText('9. 구비서류\n'),
                normalText('• 가정조사 신청서, 가족관계증명서, 혼인신고서, 건강진단서 등\n\n'),

                boldText('10. 추가 정보\n'),
                normalText('• 매년 5월 11일은 입양의 날로 지정되어 있음.\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
