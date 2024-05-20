import 'package:flutter/material.dart';

class ExTomorrowCard extends StatelessWidget{
  const ExTomorrowCard({Key? key}) : super(key: key);

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
          title: Text('국민내일 배움카드',
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
                boldText('국민내일 배움카드\n'),
                normalText('구직자 및 근로자와 기업(사업주)들의 다양한 요구와 필요에 맞는 직업능력개발 훈련지원프로그램을 지원합니다.\n'),

                boldText('1. 서비스 목적:\n'),
                normalText('• 생애에 걸친 역량개발 향상을 위해 국민이 직접 직업능력개발훈련을 받을 수 있도록 지원하는 것이 목적입니다.\n\n'),

                boldText('2. 지원 대상:\n'),
                normalText('• 청년, 구직자, 재직자, 재취업자, 재취업 희망자, 대학(원)생 중 특정 조건을 충족하는 사람들을 대상으로 합니다.\n\n'),

                boldText('3. 지급 기간:\n'),
                normalText('• 계좌 발급일로부터 5년 동안 유효합니다.\n\n'),

                boldText('4. 주요 내용:\n'),
                normalText('• 1인당 300만원에서 500만원까지 지원되며, 훈련비의 45%에서 85%까지 지원합니다. 일부 대상자는 추가로 100만원에서 200만원의 지원을 받을 수 있습니다. 일부 대상자는 추가로 100만원에서 200만원의 지원을 받을 수 있습니다.\n\n'),

                boldText('5. 신청 절차:\n'),
                normalText('• 온라인 신청 또는 해당 지방 고용노동관서(고용센터)를 방문하여 신청할 수 있습니다. 일부 고용센터에서는 구직신청 및 계좌 발급까지 진행됩니다.\n\n'),

                boldText('6. 훈련장려금 지급:\n'),
                normalText('• 훈련 기간 중 출석률 80% 이상이면서 특정 조건을 충족하는 경우, 월 최대 11만 6천원의 훈련장려금을 지급합니다.\n\n'),

                boldText('7. 문의:\n'),
                normalText('• 고용노동부 고객상담센터나 직업훈련포털 홈페이지를 통해 문의할 수 있습니다.\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
