import 'package:flutter/material.dart';

class ExAnma extends StatelessWidget{
  const ExAnma({Key? key}) : super(key: key);

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
          title: Text('  [바우처] \n시각장애인 안마서비스',
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
                boldText('[바우처] 시각장애인 안마서비스\n'),
                normalText(' 노인성 질환자의 건강을 증진하고, 일반 사업장 등에 취업이 곤란한 시각장애인에게 일자리 제공하는 사업입니다.\n\n'),

                boldText('1. 서비스 대상:\n'),
                normalText('• 소득 기준: 기준 중위소득 150% 이하 또는 기초연금 수급자\n'),
                normalText('• 연령 조건: 만 60세 이상 (장애인의 경우 연령 무관, 의료급여 연계자는 만 55세 이상)\n'),
                normalText('• 가구 특성: 근골격계, 신경계, 순환계 질환을 가진 자, 국가유공자, 지체 및 뇌병변 등록 장애인, 구·군 통합사례관리사 추천자 등\n\n'),

                boldText('2. 구비 서류\n'),
                normalText('• 의사진단서, 국가유공자증, 장애인등록증, 추천서 등\n'),
                normalText('• 우선순위 관련 서류 필요 시 별도 구비\n\n'),

                boldText('3. 우선순위\n'),
                normalText('• 구·군 통합사례관리사 추천자가 우선\n'),
                normalText('• 국가유공자, M코드, G, I코드, R81, E10~15, 장애인 순으로 우선순위 결정\n\n'),

                boldText('4. 서비스 가격 및 제공 기간\n'),
                normalText('• 월 가격: 월 168,000원 (수급자는 월 159,600원)\n'),
                normalText('• 서비스 기간: 지자체 자율 결정 (1년 초과 불가능), 이용 기간 연장 가능\n\n'),

                boldText('5. 서비스 내용 및 제공 절차\n'),
                normalText('• 서비스 내용: 전신 안마, 마사지, 지압, 발마사지, 운동 요법, 자극 요법 등\n'),
                normalText('• 서비스 제공 절차: 소득 및 욕구조사, 서비스 제공, 만족도 조사\n\n'),

                boldText('6. 의료급여 사례관리 연계\n'),
                normalText('• 의료급여관리사 추천 받은 대상자를 우선 선정\n\n'),

                boldText('7. 서비스 신청 방법\n'),
                normalText('• 신청 권자: 본인, 가족, 기타 관계인\n'),
                normalText('• 신청 장소: 읍면동 주민센터\n'),
                normalText('• 제출 서류: 신분증, 건강보험증\n\n'),

                boldText('8. 문의\n'),
                normalText('• 부산사회서비스지원단 051)714-2008~12\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
