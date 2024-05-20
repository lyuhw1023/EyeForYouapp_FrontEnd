import 'package:flutter/material.dart';

class ExHanggong extends StatelessWidget{
  const ExHanggong({Key? key}) : super(key: key);

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
          title: Text('  항공 요금 할인 및 서비스',
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
                boldText('1. 이용 대상\n'),
                normalText('• 등록된 장애인 및 특정 대상자\n\n'),

                boldText('2. 혜택 내용\n'),
                normalText('• 대한항공, 아시아나항공, 제주항공, 진에어, 에어 부산에서 항공요금 할인\n'),
                normalText('• 국가유공자, 독립유공자, 장애인 등 다양한 등록자에게 할인율 적용\n'),
                normalText('• 특별 서비스: 시각/청각 장애인, 몸이 불편한 고객에게 추가 혜택 제공\n'),
                normalText('• 휠체어 필요 고객은 무료 휠체어 대여 가능\n'),
                normalText('• 임산부에게 항공여행 가능하며, 서류에 따라 규정이 달라짐\n\n'),

                boldText('3. 할인율 및 적용 조건\n'),
                normalText('• 대한항공\n'),
                normalText('   • 국가유공자: 30% 할인\n      (국가보훈처 발행 증빙 서류 필요)\n'),
                normalText('   • 독립유공자: 50% 할인\n      (국가보훈처 발행 증빙 서류 필요)\n'),
                normalText('   • 국가유공상이자: 50% 할인\n      (국가보훈처 발행 증빙 서류 필요)\n'),
                normalText('   • 장애인: 50% 할인\n      (복지카드 발급 필요)\n'),
                normalText('• 아시아나항공: 국내선 운임 50% 할인 및 특별 서비스\n'),
                normalText('• 에어부산: 국내선 중증장애인 50% 할인 및 특별 서비스\n'),
                normalText('• 그 외 항공사에도 감면 혜택 적용 가능\n\n'),

                boldText('4. 특별 서비스\n'),
                normalText('• 휠체어 지원\n'),
                normalText('• 탑승 및 기내 이동시 부축\n'),
                normalText('• 편리한 좌석 부여\n'),
                normalText('• 비 장애인보다 10분 이상 먼저 탑승\n(상황에 따라 조치)\n\n'),

                boldText('5. 이용 방법\n'),
                normalText('• 승차권 구입 시 장애인 복지카드 또는 장애인 등록증 제시\n\n'),

                boldText('6. 문의\n'),
                normalText('• 대한항공: 1588-2001\n'),
                normalText('• 아시아나항공: 1588-8000\n'),
                normalText('• 에어부산: 1666-3060\n'),
                normalText('• 제주항공: 1600-6200\n'),
                normalText('• 진에어: 1688-8686\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}