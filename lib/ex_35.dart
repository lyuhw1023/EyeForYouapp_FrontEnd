import 'package:flutter/material.dart';

class Ex35 extends StatelessWidget{
  const Ex35({Key? key}) : super(key: key);

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
          title: Text('  만 3~5세 누리과정 지원',
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
                boldText('만 3~5세 누리과정 지원\n'),
                normalText('유치원에 다니는 초등학교 취학 직전 3년의 유아에 대해 학부모의 유아학비부담 완화, 유아교육 공교육화를 위해 유아학비를 지원하는 사업입니다.\n\n'),

                boldText('1. 서비스 내용\n'),
                normalText('• 국공사립 유치원에 재원하는 만 3~5세 유아를 대상으로 유아학비를 지원하여 교육기회를 보장합니다.\n'),
                normalText('    • 교육비: 국공립(100,000원), 사립(280,000원)\n'),
                normalText('    • 방과후과정비: 국공립(50,000원), 사립(70,000원)\n'),
                normalText('    • 사립 유치원을 다니는 법정 저소득층 유아: 사립(150,000원)\n\n'),

                boldText('2. 지원 대상\n'),
                normalText('• 국공립 및 사립 유치원에 다니는 만 3~5세 유아\n'),
                normalText('• 18년 1~2월생으로서 유치원 조기 입학을 희망하여 만 3세반에 취원한 유아도 지원 대상\n'),
                normalText('• 취학 대상 아동(14.01.01~12.31출생)이 취학을 유예한 경우, 유예한 1년 동안 만 5세 유아무상 교육비 지원(취학 유예 통지서 제출)\n'),
                normalText('• 추가로 법정 소득층 유아학비 지원(기초생활수급자, 차상위계층, 한부모 가정)\n\n'),

                boldText('3. 제외 대상\n'),
                normalText('• 대한민국 국적을 가지지 않은 유아(난민 및 특별 기여자 등은 예외)\n'),
                normalText('• 가정 양육수당 및 어린이집 보육료를 지원받는 유아\n'),
                normalText('• 유치원 이용시간에 아이돌봄서비스 등과 중복 지원 불가\n'),
                normalText('• 해외체류 기간이 31일째 되는 일 유아학비 지원자격 중지\n\n'),


                boldText('4. 신청 방법:\n'),
                normalText('• 읍면동 주민센터 방문 신청\n'),
                normalText('• 온라인 신청(복지로 바로가기)\n'),
                normalText('    • 신청 후 학부모 인증 신청에 따라 교육청에서 유치원으로 지원금액 입금\n'),
                normalText('    • 기존 보육료, 양육수당 등 다른 복지서비스의 지원 자격이 있는 경우 유아학비로 변경 신청 필요\n\n'),

                boldText('5. 전화 문의\n'),
                normalText('• 교육부: 02-6222-6060\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
