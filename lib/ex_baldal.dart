import 'package:flutter/material.dart';

class ExBaldal extends StatelessWidget{
  const ExBaldal({Key? key}) : super(key: key);

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
          title: Text('  [바우처] 발달재활서비스',
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
                boldText('[바우처] 발달재활서비스\n'),
                normalText('성장기 정신적·감각적 장애아동의 인지, 의사소통, 적응행동, 감각·운동 등의 기능향상과 행동발달을 위한 발달재활서비스 지원\n\n'),

                boldText('1. 사업목적:\n'),
                normalText('• 성장기의 장애아동의 발달을 지원하고 부모의 경제적 부담을 경감하기 위한 발달재활서비스 제공 및 정보 제공.\n\n'),

                boldText('2. 서비스 대상:\n'),
                normalText('• 만 18세 미만 장애아동 중 기준중위소득의 180% 이하인 아동. 장애유형과 소득 수준에 따라 차등 지원.\n'),
                normalText('• 소득 수준은 기준중위소득 180% 이하로 정의 되며, 중복 장애도 인정됨.\n\n'),

                boldText('3. 서비스 내용 및 제공방식:\n'),
                normalText('• 언어, 청각, 미술, 음악, 행동, 놀이심리, 감각발달, 운동발달 등의 발달재활서비스 제공.\n'),
                normalText('• 주로 기관 방문 형으로 제공되나, 가정 방문 형도 예외적으로 제공 가능.\n\n'),

                boldText('4. 서비스 가격:\n'),
                normalText('• 서비스 단가는 월 8회(주 2회)로 회당 30,000원이며, 시·도 및 시·군·구에 따라 적정 단가가 설정됨.\n'),
                normalText('• 소득 수준에 따라 바우처 지원액 및 본인부담금이 차등 지원 되며, 본인 부담금은 월 8만원에서 2만원까지 다양함.\n\n'),

                boldText('5. 서비스 신청:\n'),
                normalText('• 서비스를 필요로 하는 본인, 부모, 가구원, 또는 대리인이 신청 가능.\n'),
                normalText('• 주민센터 등에서 제출서류를 받아 신청 가능.\n\n'),

                boldText('6. 문의:\n'),
                normalText('• 보건소 또는 보건복지콜센터에 문의하거나, 사회서비스 전자바우처 홈페이지를 통해 자세한 정보를 확인할 수 있음.\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
