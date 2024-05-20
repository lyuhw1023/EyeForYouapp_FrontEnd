import 'package:flutter/material.dart';

class ExHouse extends StatelessWidget{
  const ExHouse({Key? key}) : super(key: key);

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
          title: Text('주택담보노후연금보증',
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
                boldText('주택담보노후연금보증\n'),
                normalText('집을 소유하고 있지만 소득이 부족한 어르신들이 평생 또는 일정기간 동안 집을 담보로 맡기고 살면서 매달 국가에서 연금을 받는 제도입니다.\n'),

                boldText('1. 지원 대상\n'),
                normalText('• 만 55세 이상(부부의 경우 연장자 기준)\n'),
                normalText('• 합산가격 공시가격이 9억원 이하인 주택 소유자\n'),
                normalText('• 부부 기준 보유주택 합산가격\n'),
                normalText('    • 9억원 이하일 경우: 거주하는 1주택으로 주택연금 가입\n\n'),
                normalText('    • 9억원 초과일 경우: 2주택을 보유한 경우에 한하여 3년 이내에 담보주택 이외의 주택을 처분한다는 조건으로 가입\n\n'),
                normalText('• 주택법상 주택 및 노인복지주택, 주택면적의 1/2 이상인 복합용도주택, 주거 목적의 오피스텔을 대상으로 함\n\n'),

                boldText('2. 서비스 내용\n'),
                normalText('• 주택연금을 매달 지급(월 지급금을 주택가격 및 연령에 따라 산정)하고, 종신거주 보장\n\n'),
                normalText('• 주택연금을 일시 인출금(주택가격 및 연령에 따라 산정)으로 지급하여 선순위 채권(대출금, 임차보증금 등)에 상환 가능\n\n'),
                normalText('• 세제혜택\n\n'),
                normalText('    • 근저당설정시 등록세 75% 감면(2024.12.31까지, 주택보유수 및 주택가격에 따라 차등감면 적용)\n\n'),
                normalText('    • 주농특세 면제, 국민주택채권 매입 면제\n\n'),
                normalText('    • 재산세 25% 감면(2024.12.31까지, 1가구 1주택인 경우로 한정, 시가표준액 5억원 한도)\n\n'),
                normalText('    • 연금소득자의 경우에는 주택연금 대출이자비용 소득공제(연간 200만원 한도)\n\n'),

                boldText('3. 신청방법\n'),
                normalText('• 주택금융공사에 문의(1688-8114) 후 신청\n'),

                boldText('4. 문의\n'),
                normalText('• 한국주택금융공사(☎1688-8114)\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
