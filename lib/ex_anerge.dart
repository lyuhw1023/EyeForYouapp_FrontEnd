import 'package:flutter/material.dart';

class ExAnergy extends StatelessWidget{
  const ExAnergy({Key? key}) : super(key: key);

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
          title: Text('에너지바우처',
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
                boldText('에너지바우처\n'),
                normalText('전기, 도시가스, 지역난방, 연탄, 등유, LPG를 선택하여 구입할 수 있는 에너지바우처(이용권)를 지원합니다.\n'),

                boldText('1. 지원 대상\n'),
                normalText('• 소득기준과 가구원 특성기준을 모두 충족하는 가구\n'),
                normalText('• 소득기준: 국민기초생활보장법에 따른 생계급여/의료급여/주거급여/교육급여 수급자\n'),
                normalText('• 가구원 특성기준:\n'),
                normalText('  • 노인: 1958년 12월 31일 이전 출생자\n'),
                normalText('  • 영유아: 2017년 01월 01일 이후 출생자\n'),
                normalText('  • 장애인: 장애인복지법에 따라 등록된 장애인\n'),
                normalText('  • 임산부: 임신 중이거나 분만 후 6개월 미만인 여성\n'),
                normalText('  • 중증질환자, 희귀질환자, 중증난치질환자: 국민건강보험법시행령에 따른 중증질환, 희귀질환, 중증난치질환을 가진 사람\n'),
                normalText('  • 한부모가족: 한부모가족지원법 제4조에 따른 "모" 또는 "부"로서 아동인 자녀를 양육하는 사람\n'),
                normalText('  • 소년소녀가정: 아동복지법 제3조에 의한 가정위탁 보호 아동 포함\n\n'),

                boldText('※ 지원 제외 대상\n'),
                normalText('• 세대원 모두가 보장시설 수급자\n\n'),

                boldText('※ 겨울 바우처와 중복 지원 불가한 경우\n'),
                normalText('• "긴급복지지원법"에 따라 동절기 연료비를 지원 받은 수급자\n'),
                normalText('• 한국에너지공단의 "연료나눔카드"나 한국광해광업공단의 "연탄 쿠폰"을 발급 받은 자\n\n'),

                boldText('2. 지원내용\n'),
                normalText('• 전기, 도시가스, 지역난방, 연탄, 등유, LPG를 선택하여 구입할 수 있는 전자바우처 지원\n'),
                normalText('• 가바우처 금액은 가구원 수에 따라 다르며, 여름과 겨울 시즌에 따라 다르게 적용됨\n\n'),

                boldText('3. 지원(신청)절차\n'),
                normalText('• 소득기생계 및 의료급여 수급자 본인 또는 가족은 읍·면사무소 또는 동주민센터에 신청 및 접수\n'),
                normalText('• 시·군·구에서 선정 및 결정 통지 후, 카드사 또는 에너지 공급사에서 바우처 발급, 배송\n'),
                normalText('• 사용 및 정산은 전담기관이나 지자체에서 이루어지며, 모니터링도 함께 진행됨\n\n'),

                boldText('4. 신청 및 사용기간\n'),
                normalText('• 신청기간: 2023년 5월 25일부터 2023년 12월 29일까지\n'),
                normalText('• 사용기간:\n'),
                normalText('  • 여름 바우처: 2023년 7월 1일부터 2023년 9월 30일까지 (요금 차감)\n'),
                normalText('  • 겨울 바우처: 2023년 10월 12일부터 2024년 4월 30일까지 (요금 차감 및 국민행복카드)\n\n'),

                boldText('5. 신청서류\n'),
                normalText('• 에너지 이용권 발급 신청서(읍면동 주민센터에서 작성)\n'),
                normalText('• 대리신청시에는 대상자(수급자)의 위임장 및 대리인의 신분증 제출\n'),
                normalText('• 요금차감 신청시에는 가장 최근에 납부한 전기, 도시가스 또는 지역난방 요금 고지서(영수증) 제출\n\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
