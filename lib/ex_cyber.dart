import 'package:flutter/material.dart';

class ExCyber extends StatelessWidget{
  const ExCyber({Key? key}) : super(key: key);

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
          title: Text('사이버직업능력개발 \n(디지털능력개발원)',
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
                boldText('사이버직업능력개발 (디지털능력개발원)\n'),
                normalText('장애인에게 시·공간제약을 극복한 온라인 교육 서비스를 무료로 제공하는 온라인 교육원입니다.\n'),

                boldText('1. 기능 과정 안내:\n'),
                normalText('• 참여대상: 장애인고용촉진 및 직업재활법 시행령에 해당하는 자\n'),
                normalText('• 내용: 산업분야별 기초/전문기술 습득을 위한 과정\n'),
                normalText('• 구분: 전공기술, 컴퓨터활용, 융복합기술, 자격증 등\n\n'),

                boldText('2. 시험대비 과정 안내\n'),
                normalText('• 참여대상: 장애인고용촉진 및 직업재활법 시행령에 해당하는 자\n'),
                normalText('• 내용: 공직임용과 검정고시 준비 교육과정 제공\n\n'),

                boldText('3. 직무관리(직업생활) 과정 안내\n'),
                normalText('• 참여대상: 장애인고용촉진 및 직업재활법 시행령에 해당하는 자\n'),
                normalText('• 내용: 직장인 및 예비직장인의 직무관리능력 향상을 위한 교육과정 제공\n\n'),

                boldText('4. 이용절차\n'),
                normalText('• 각 과정은 홈페이지를 통해 신청 가능하며, 장애인 인증이 필요합니다.\n\n'),

                boldText('5. 정부·공공부문\n'),
                normalText('• 공무원, 공공기관, 교원과정 임용을 준비하는 장애인 구직자를 위한 온라인 강의 무료 지원\n\n'),
                normalText('• 정부 ·공공부문 콘텐츠 제공을 위한 교육훈련 전문 사이트와의 연계.\n\n'),

                boldText('6. 문의\n'),
                normalText('• 각 과정에 대한 문의는 해당 전화번호로 가능하며, 한국장애인고용공단 디지털능력개발원 웹사이트에서도 정보를 확인할 수 있습니다.\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
