import 'package:flutter/material.dart';

class ExFamilyNurture extends StatelessWidget{
  const ExFamilyNurture({Key? key}) : super(key: key);

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
          title: Text('  장애아가족양육지원\n(돌봄서비스, 휴식지원서비스)',
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
                boldText('장애아가족양육지(돌봄서비스, 휴식지원서비스)\n'),
                normalText('장애아동 가족의 일상적인 양육부담을 경감하고 보호자의 정상적인 사회활동을 돕기 위하여 돌봄 및 일시적 휴식지원 서비스 제공\n\n'),

                boldText('1. 지원 대상\n'),
                normalText('• 만 18세 미만의 장애 정도가 심한 아동 및 그와 함께 생계·주거를 같이하는 가정\n\n'),

                boldText('2. 선정 기준:\n'),
                normalText('• 장애 정도가 심한 아동\n'),
                normalText('• 만 18세 미만의 아동을 기준으로 서비스 이용 가능\n'),
                normalText('• 대상자로 선정 후 만 18세가 되는 경우에도 사업기간 종료일까지 자격 유지\n'),
                normalText('• 기준 중위소득 120% 이내인 가정은 무료, 이를 초과하는 가정은 서비스 이용료의 40%를 부담하여 이용 가능\n\n'),
                normalText('• 다른 법령이나 국가 예산으로 유사한 서비스를 받고 있는 경우에는 대상에서 제외\n'),
                normalText('• 소득 기준 (중위소득 120% 이하)\n'),
                normalText('    • 1인 가구: 2,109,000원\n'),
                normalText('    • 2인 가구: 3,590,000원\n'),
                normalText('    • 3인 가구: 4,645,000원\n'),
                normalText('    • 4인 가구: 5,699,000\n'),
                normalText('    • 5인 가구: 6,753,000원\n'),

                boldText('3. 서비스 내용\n'),
                normalText('• 가정 당 연 840시간의 돌봄 서비스 제공\n'),
                normalText('• 휴식 지원 프로그램 지원\n\n'),

                boldText('4. 신청 방법:\n'),
                normalText('• 읍면동 주민센터에서 서비스 신청\n\n'),

                boldText('5. 제출 서류\n'),
                normalText('• 사회복지사서비스 및 목적 제공(병행) 신청서\n'),
                normalText('• 개인 정보 제공 및 활용 등 의식\n'),
                normalText('• 서비스 대상자가 등재된 건강보험증 사본\n'),
                normalText('• 기타 소득증명 자료\n\n'),

                boldText('6. 문의\n'),
                normalText('• 보건복지상담센터 129\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
