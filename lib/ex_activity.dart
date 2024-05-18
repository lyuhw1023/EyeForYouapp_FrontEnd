import 'package:flutter/material.dart';

class ExActivity extends StatelessWidget{
  const ExActivity({Key? key}) : super(key: key);

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
          title: Text('  [바우처] 장애인 활동지원서비스',
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
                boldText('[바우처] 장애인 활동지원서비스\n'),
                normalText('장애인의 자립생활을 위해 전문교육을 수료한 활동보조인을 통하여 가사지원, 외출지원, 재활치료 동행, 출·퇴근, 등 ·하교 등 일상생활 및 사회생활을 지원하는 서비스입니다\n\n'),

                boldText('1. 지원대상\n'),
                normalText('• 만 6세 이상부터 65세 미만의 장애인이 해당됩니다. 또한, 특정한 경우에는 만 65세 이후에도 장애 특성에 따라 활동지원급여를 받을 수 있습니다.\n\n'),

                boldText('2. 제외대상\n'),
                normalText('• 65세 이상의 노인이나 특정한 노인성 질병을 가진 자, 보장시설에 입소한 자, 의료기관에 30일 이상 입원 중인 자, 교정시설 또는 치료감호시설에 있는 자는 제외됩니다.\n\n'),

                boldText('3. 신청방법:\n'),
                normalText('• 본인이나 대리인을 통해 신청 가능하며, 필요한 서류를 제출하고 주민센터나 온라인을 통해 신청할 수 있습니다.\n\n'),

                boldText('4. 지원내용:\n'),
                normalText('• 활동보조: 신체활동, 가사활동, 사회활동 등을 지원합니다.\n'),
                normalText('• 신체활동 지원: 개인위생 관리, 식사 도움, 실내 이동 도움 등\n'),
                normalText('• 가사활동 지원: 청소, 세탁, 취사 등\n'),
                normalText('• 사회활동 지원: 외출 동행, 교통 이용 지원 등\n'),
                normalText('• 방문목욕: 이동 목욕용 차량을 통해 목욕 서비스를 제공합니다.\n\n'),
                normalText('• 방문간호: 간호사 등이 의사 지시에 따라 간호 서비스를 제공합니다.\n\n'),

                boldText('5. 활동지원급여의 월 한도액\n'),
                normalText('• 등급에 따라 월 한도 액이 결정됩니다.\n'),
                normalText('• 등급이 높을수록 월 지원시간과 한도 액이 늘어납니다.\n\n'),

                boldText('6. 문의:\n'),
                normalText('• 지역 주민센터나 국민연금공단에서 상세한 정보를 얻을 수 있으며, 온라인으로도 신청 가능합니다.\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
