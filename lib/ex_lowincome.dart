import 'package:flutter/material.dart';

class ExLowIncome extends StatelessWidget{
  const ExLowIncome({Key? key}) : super(key: key);

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
          title: Text('  저소득층 \n재난적 의료비 지원',
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
                boldText('저소득층 재난적 의료비 지원\n'),
                normalText('과도한 의료비 지출로 경제적 어려움을 겪는 저소득 가구의 의료비 부담완화를 위한 건강보험 보장성 강화 대책입니다.\n\n'),

                boldText('1. 지원 대상:\n'),
                normalText('• 이미지 대상 질환: 모든 질환으로 인한 입원 환자 또는 중증 질환으로 외래 진료를 받은 환자\n'),
                normalText('    • 중증 질환: 암, 뇌혈관·심장·희귀·중증 난치 질환, 중증 화상\n'),
                normalText('• 이미지 소득 기준: 기준 중위 소득 100% 이하 지원 원칙 (건보료 기준), 기준 중위 소득 100% 초과 200% 이하는 연소득 대비 의료비 부담 비율을 고려하여 개별 심사 지원\n'),
                normalText('• 이미지 의료비 기준: 1회 입원에 따른 가구의 연소득 대비 의료비 발생액(법정 본인 부담, 비급여 및 예비(선별)급여 본인 부담)이 기준금액 초과 시 지원\n\n'),

                boldText('2. 지원 내용\n'),
                normalText('• 이미지 지원 일수: 질환별 연간 180일 (투약 일수를 제외한 입원 및 외래 진료일 합산)\n'),
                normalText('• 이미지 지원 범위: 본인 부담 의료비 중 지원 제외 항목을 차감한 의료비의 50~80% 범위 내 소득 구간별 차등 지급, 연간 3천만원 한도\n\n'),

                boldText('3. 개별 심사\n'),
                normalText('• 기준을 다소 못 미치거나 초과하더라도 반드시 지원이 필요한 사례의 경우 개별 심사를 통해 선별 추가 지원\n\n'),

                boldText('4. 지원 신청\n'),
                normalText('• 이미지 신청 기간: 최종 진료일(퇴원일) 다음 날부터 180일 이내(토, 공휴일 포함) 이내\n'),
                normalText('    • 다만 입원 중 의료비 부담 기준 충족 시 입원 중에도 지원 신청 가능\n'),
                normalText('• 이미지 신청 방법: 환자(또는 대리인) 국민건강보험공단 지사에 신청\n\n'),

                boldText('5. 제출 서류\n'),
                normalText('• 재난적 의료비 지원신청서 1부(신분증 첨부)진단서 1부\n'),
                normalText('• 진단서 1부\n'),
                normalText('• 입(퇴)원 확인서 1부\n'),
                normalText('• 가족관계증명서 1부\n'),
                normalText('• 개인정보 수집·이용 및 제공 동의서 1부\n'),
                normalText('• 민간보험 가입(계약)서류 및 지급내역 확인서 1부 등\n\n'),

                boldText('6. 문의:\n'),
                normalText('• 보건복지상담센터 ☎129\n'),
                normalText('• 국민건강보험공단 ☎1577-1000\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
