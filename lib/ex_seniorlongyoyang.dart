import 'package:flutter/material.dart';

class ExSeniorLongYoyang extends StatelessWidget{
  const ExSeniorLongYoyang({Key? key}) : super(key: key);

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
          title: Text('  [장기요양노인] 노인장기요양 복지용구지원사업',
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
                boldText('[장기요양노인] 노인장기요양 복지용구지원사업\n'),
                normalText('심신기능이 저하되어 일상생활을 영위하는데 지장이 있는 노인장기요양보험 대상자에게 일상생활 또는 신체활동 지원에 필요한 용구로써 보건복지부장관이 정하여 고시하는 것을 구입하거나 대여하여 드리는 것입니다.\n\n'),

                boldText('1. 서비스 대상자:\n'),
                normalText('• 지원 대상: 65세 이상 노인 및 65세 미만의 노인성 질병 환자 (건강보험 및 의료급여 적용자)\n'),
                normalText('    • 노인성 질병: 치매, 뇌혈관 질환, 파킨슨병 등\n'),
                normalText('• 선정 기준: 6개월 이상 자립이 어려운 노인 및 노인성 질병 환자\n\n'),

                boldText('2. 지원 제외 대상자\n'),
                normalText('• 장기요양기관 입소자\n'),
                normalText('• 다른 사회복지시설에 입소한 사람 (단, 노인복지주택은 제외)\n'),
                normalText('• 시설 입소 시 복지용구 지급 중단\n'),
                normalText('• 의료기관 입원 중에는 일부 용품 대여 불가\n'),
                normalText('• 타 법령에 따라 이미 유사 용품을 받은 경우\n\n'),

                boldText('3. 금여 방식:\n'),
                normalText('• 구입: 제품별 수가에서 본인 부담금을 부담하여 구입\n'),
                normalText('• 대여: 일정 기간 동안 대여하여 사용 (대여 수가에서 본인 부담금 부담)\n\n'),

                boldText('4. 급여 비용 본인 부담율\n'),
                normalText('• 일반 대상자: 15%\n'),
                normalText('• 경감 대상자: 6% 또는 9%\n'),
                normalText('• 기초 생활 수급자: 본인 부담금 없음\n\n'),

                boldText('5. 급여 비용 연간 한도액\n'),
                normalText('• 연간 한도액: 160만원\n'),
                normalText('• 초과한 금액은 본인 부담\n\n'),

                boldText('6. 복지용구 종류\n'),
                normalText('• 구입 품목: 이동변기, 성인용 보행기, 목욕의자, 안전 손잡이, 미끄럼 방지 용품, 간이 변기, 지팡이, 욕창 예방 방석, 자세 변환 용구, 요실금 팬티\n'),
                normalText('• 대여 품목: 수동 휠체어, 전동 침대, 수동 침대, 목욕 리프트, 이동 욕조, 배회 감지기\n'),
                normalText('• 구입 또는 대여 품목: 욕창 예방 매트리스, 경사로\n\n'),

                boldText('복지용구 급여 이용 절차\n'),
                normalText('1. 복지용구 방문 상담\n'),
                normalText('2. 급여 가능 여부 조회\n'),
                normalText('3. 복지용구 제공 계약 체결\n'),
                normalText('4. 계약 체결 내역 통보\n'),
                normalText('5. 급여 비용 청구 및 지급\n\n'),

                boldText('7. 문의\n'),
                normalText('• 국민건강보험공단(전화번호: 1577-1000)\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
