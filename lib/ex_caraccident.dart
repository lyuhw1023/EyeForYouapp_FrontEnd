import 'package:flutter/material.dart';

class ExCarAccident extends StatelessWidget{
  const ExCarAccident({Key? key}) : super(key: key);

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
          title: Text('자동차사고 피해지원 제도',
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
                boldText('자동차사고 피해지원 제도\n'),
                normalText('자동차사고로 사망하거나 중증후유장애를 입은 피해자 및 그 가족이 경제적으로 어려워 생계가 곤란하거나 학업을 중단해야 하는 문제등을 해결하고, 중증후유장애인이 재활할 수 있도록 지원하는 제도입니다.\n\n'),

                boldText('1. 지원 대상자\n'),
                normalText('• 중증후유장애인: 자동차사고로 인한 1급 이상 4급 이하의 장애를 가진 사람\n'),
                normalText('• 유자녀: 자동차사고로 사망 또는 중증후유장애를 입은 사람의 0세부터 18세 미만 자녀 (고등학교 재학 중인 경우 20세 이하)\n\n'),
                normalText('• 피부양가족\n'),
                normalText('a. 자동차사고 피해자의 부양책임자가 없거나 65세 이상인 경우\n'),
                normalText('b. 자동차사고 피해자의 부양책임자이지만 부양 능력이 없거나 자녀와 함께 생계를 유지하고 있으면서 65세 이상인 경우\n\n'),

                boldText('2. 지원 기준\n'),
                normalText('• 자동차사고로 인한 사망 또는 중증후유장애가 있는 경우\n'),
                normalText('• 국민기초생활보장법 기준에 따른 기초생활수급자 또는 차상위계층인 경우\n\n'),

                boldText('3. 지원 금액\n'),
                normalText('• 중증후유장애인: 월 22만원의 재활보조금\n'),
                normalText('• 유자녀: 월 25만원의 생활자금대출, 장학금\n'),
                normalText('• 자립지원금: 월 7만원 한도 매칭지원\n'),
                normalText('• 피부양노부모: 월 22만원의 피부양보조금\n\n'),

                boldText('4. 지원 절차\n'),
                normalText('• 지원상담 → 접수/등록 → 1차 심사 → 2차 심사 → 최종 지원 확정 → 지원 결정 통보\n'),
                normalText('• 신청 기간: 연중 수시 (장학금은 3, 4, 9, 10월 연 4회 신청)\n'),
                normalText('• 교부 및 접수처: 한국교통안전공단 본사 및 전국지역본부\n'),
                normalText('• 통보: 개별 통지로 지원 여부를 결정하여 통보\n'),
                normalText('• 지급: 접수일이 속하는 달의 다음 달부터 지원대상자 본인 명의의 금융기관 예금계좌로 지급\n'),

                boldText('5. 문의처\n'),
                normalText('• 자동차사고 피해가족 상담전화 1544-0049\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
