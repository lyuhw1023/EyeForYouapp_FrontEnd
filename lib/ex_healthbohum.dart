import 'package:flutter/material.dart';

class ExHealthBohum extends StatelessWidget{
  const ExHealthBohum({Key? key}) : super(key: key);

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
    title: Text('  건강보험 산정특례 등록 신청',
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
    boldText('건강보험 산정특례 등록 신청\n'),
    normalText('희귀난치성질환자,치매,뇌혈관질환, 중증화상 등의 환자가 등록 절차에 따라 공단에 신청한 경우 본인 부담률을 20% → 10~5%로 경감하여 주는 제도입니다.\n\n'),

    boldText('1. 지원대상:\n'),
    normalText('본인 부담 비율:\n'),
    normalText('    • 일반환자: 5%\n'),
    normalText('    • 희귀질환 산정특례: 10%\n'),
    normalText('    • 중증난치성 산정특례: 10%\n'),
    normalText('    • 중증치매 산정특례: 10%\n'),
    normalText('    • 본인부담면제 결핵 산정특례: 100% 대체\n'),
    normalText('    • 잠복결핵감염 산정특례: 100% 면제\n\n'),

    boldText('2. 적용범위:\n'),
    normalText('• 외래 또는 입원진료에 해당하는 치료에 적용.\n'),
    normalText('• 요양급여비용 중 본인부담 비율에 해당하는 항목만 적용.\n\n'),

    boldText('3. 등록 신청 방법:\n'),
    normalText('• 의사가 확진한 경우 건강 보험 공단에 등록신청서 제출.\n'),
    normalText('• 중증치매의 경우, 산정특례 적용일자에 맞춰 사전승인신청 필요.\n\n'),

    boldText('4. 적용기간:\n'),
    normalText('• 산정특례 등록일로부터 일정 기간 적용.\n'),
    normalText('• 재등록 가능하며, 일정 조건 충족 필요.\n\n'),

    boldText('5. 문의:\n'),
    normalText('• 국민건강보험공단에 직접 문의하거나 1577-1000으로 전화하여 자세한 정보를 확인할 수 있습니다.\n'),
    ],
    ),
    ),
    ),
    ),
    );
  }
}
