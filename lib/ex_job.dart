import 'package:flutter/material.dart';

class ExJob extends StatelessWidget{
  const ExJob({Key? key}) : super(key: key);

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
          title: Text('직업재활시설',
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
                boldText('직업재활시설\n'),
                normalText('일반고용시장에서 경쟁고용이 제한적이나 기회조차 가질 수 없는 중증장애인(성인)을 대상으로 보호고용을 통해 지역 내 기업체와 연계하여 다양한 작업을 의뢰 받아 근로 장애인들이 수행할 수 있도록 운영되며 장애인들이 생산활동에 참여하게 하여 지역사회에 적응할 수 있도록 돕는 재활시설입니다.\n'),

                boldText('1. 지원 대상\n'),
                normalText('• 취업을 희망하는 장애인 중 직업능력이 낮거나, 능력은 있으나 일반 고용으로는 취업이 어려운 장애인을 지원합니다.\n\n'),

                boldText('2. 서비스 내용\n'),
                normalText('• 각 시설 별로 다양한 직무 생산활동을 제공합니다. 예를 들어, 임가공, DM작업, 쇼핑백 제작, 장갑 제작 등이 포함될 수 있습니다. 서비스 내용은 제공기관에 따라 다를 수 있습니다.\n\n'),

                boldText('3. 급여 기준\n'),
                normalText('• 급여 기준은 각 기관마다 상이하므로 해당 기관으로 문의해야 합니다.\n\n'),

                boldText('4. 이용 절차\n'),
                normalText('a. 장애인 직업재활시설 신청 및 접수\n'),
                normalText('b. 상담\n'),
                normalText('c. 직업능력평가\n'),
                normalText('d. 장애인 근로자 선정\n\n'),

                boldText('5. 문의\n'),
                normalText('• 각 기관에 직접 문의하여 자세한 정보를 확인해야 합니다.\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
