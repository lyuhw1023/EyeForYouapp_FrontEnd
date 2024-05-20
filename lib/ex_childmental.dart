import 'package:flutter/material.dart';

class ExChildMental extends StatelessWidget{
  const ExChildMental({Key? key}) : super(key: key);

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
    title: Text('  [바우처] \n아동청소년심리치유서비스 \n(우리아이가 달라졌어요!)',
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
    boldText('[바우처] 아동청소년심리치유서비스 (우리아이가 달라졌어요!)\n'),
    normalText('문제행동아동의 조기발견과 개입을 통하여 문제행동을 감소시키고, 정서행동장애로의 발전을 막아 정상적 성장을 지원합니다.\n\n'),

    boldText('1. 지원대상:\n'),
    normalText('• 소득: 제한 없음\n'),
    normalText('• 연령: 2005년 이후 출생한 만 18세 이하\n'),
    normalText('• 우선순위: 공공전달체계 연계자, 학교 교사 및 상담교사, 추천자 등\n'),
    normalText('• 가구특성: 발달지원 및 문제행동을 위한 의사소견서 또는 의료기록 등\n'),
    normalText('• 구비서류: 발급일로부터 6개월 이내 발급된 서류\n\n'),

    boldText('2. 서비스 내용:\n'),
    normalText('• 발달지원: 발달기초, 언어발달, 초기인지, 정서 및 사회성 지원\n'),
    normalText('• 문제행동: 놀이, 언어, 인지, 미술, 음악 등 프로그램 제공\n'),
    normalText('• 부모상담: 발달지원과 문제행동에 관한 상담 제공\n'),
    normalText('• 슈퍼비젼: 사례회의 등 슈퍼비젼 실시\n\n'),

    boldText('3. 월 가격:\n'),
    normalText('• 1등급: 월 18,000원~54,000원\n'),
    normalText('• 2등급: 월 36,000원~96,000원\n'),
    normalText('• 3등급: 월 54,000원~126,000원\n'),
    normalText('• 4등급: 월 72,000원~162,000원\n\n'),

    boldText('4. 월 횟수(시간)\n'),
    normalText('• 주 1회(월 4회), 회당 50분\n\n'),

    boldText('5. 제공장소:\n'),
    normalText('• 기관방문\n\n'),

    boldText('6. 문의\n'),
    normalText('• 각 기관 또는 부산사회서비스지원단에 문의 가능\n\n'),
    ],
    ),
    ),
    ),
    ),
    );
  }
}


