import 'package:flutter/material.dart';

class ExYouthSupport extends StatelessWidget{
  const ExYouthSupport({Key? key}) : super(key: key);

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
          title: Text('  [바우처] \n아동정서발달지원서비스',
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
                boldText('[바우처] 아동정서발달지원서비스\n'),
                normalText('음악·미술치료 및 심리상담을 통한 아동·청소년의 정서·행동적 문제를 예방 및 완화하기 위한 서비스입니다.\n\n'),

                boldText('1. 서비스 대상:\n'),
                normalText('• 소득: 기준 중위소득 150% 이하\n'),
                normalText('• 연령: 만 4세 ~ 13세 (2010년 ~ 2019년 출생자)\n'),
                normalText('• 구비서류: 소득증명서 및 특정 교육 및 상담자의 소견서 및 추천서, 검사 결과지 등\n\n'),

                boldText('2. 서비스 가격 및 결제 원칙:\n'),
                normalText('• 서비스 가격(정부지원금 + 본인부담금): 월 180,000원 ~ 210,000원\n'),
                normalText('• 등급별 소득기준에 따라 정부지원금 및 본인부담금이 설정됨.\n'),
                normalText('• 결제는 회당 결제 방식을 따름.\n\n'),

                boldText('3. 지원 기간:\n'),
                normalText('• 지원 기간: 12개월\n'),
                normalText('• 바우처 포인트 생성 주기: 1개월 마다\n\n'),

                boldText('4. 서비스 내용:\n'),
                normalText('• 제공주기: 주 2회(월 8회), 회당 60분\n'),
                normalText('• 서비스 내용: 정서행동적 문제로 어려움을 겪는 아동을 대상으로 한 클래식 악기 및 미술 교육을 통한 예술심리치료 서비스 제공\n'),
                normalText('• 음악 및 미술 실기 및 정서순화프로그램을 포함한 다양한 치유 프로그램을 제공함.\n\n'),

                boldText('5. 문의:\n'),
                normalText('• 부산지역사회서비스지원단(051-714-2008)에 문의하거나 부산지역사회서비스지원단의 웹사이트를 참고하시면 됩니다.\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
