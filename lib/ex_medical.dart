import 'package:flutter/material.dart';

class ExMedical extends StatelessWidget{
  const ExMedical({Key? key}) : super(key: key);

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
          title: Text('  의료급여 중증질환, 희귀질환 및 중증난치질환자 지원',
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
                boldText('의료급여 중증질환, 희귀질환 및 중증난치질환자 지원\n'),
                normalText('중증 및 치료가 힘든 희귀난치성질환을 앓고 있는 의료급여 수급권자에게 의료비를 지원하여 저소득층 국민보건 향상과 사회복지 증진에 기여합니다.\n\n'),

                boldText('1. 대상 질환\n'),
                normalText('• 의료급여 수급권자 중 중증질환자, 중증난치희귀질환(결핵질환자 포함)\n\n'),

                boldText('2. 선정 기준:\n'),
                normalText('• 의료급여 산정특례등록 신청서 발급 및 지역 관할 단체 등록\n\n'),

                boldText('3. 서비스 내용:\n'),
                normalText('• 급여비용 본인부담 면제\n'),
                normalText('• 의료급여 1종 수급권자 자격 부여\n'),
                normalText('• 의료급여 절차 예외 제외\n'),
                normalText('• 질환군별 급여일수 별도 산정\n'),
                normalText('• 뇌혈관, 심장 질환자, 중증 외상 환자는 본인부담 면제만 부여\n\n'),

                boldText('4. 신청 방법:\n'),
                normalText('• 의료급여기관 전산 신청 또는 보장기관 제출\n\n'),

                boldText('5. 문의:\n'),
                normalText('• 보건복지상담센터 129\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
