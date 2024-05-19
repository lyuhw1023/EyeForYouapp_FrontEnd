import 'package:flutter/material.dart';

class ExEmployPackage extends StatelessWidget{
  const ExEmployPackage({Key? key}) : super(key: key);

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
          title: Text('취업성공패키지',
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
                boldText('취업성공패키지\n'),
                normalText('저소득 취업취약계층에 대하여 개인별 취업활동계획에 따라 "진단·경로설정→의욕·능력증진→집중 취업알선"에 이르는 통합적인 취업지원 프로그램을 제공하고, 취업한 경우 "취업성공수당"을 지급함으로써 노동시장 진입을 체계적으로 지원하는 종합적인 취업지원체계입니다.\n'),

                boldText('1. 지원 대상\n'),
                normalText('• 취업성공패키지Ⅰ: 생계급여수급자, 중위소득 60% 이하 가구원, 여성가장, 위기청소년 등\n'),
                normalText('• 취업성공패키지Ⅱ: 청년 및 중장년층\n\n'),

                boldText('2. 지원 내용\n'),
                normalText('• 단계별 취업지원: 진단 및 의욕 증진, 직업능력 향상, 직장 적응력 증진, 집중 취업알선, 사후 관리\n'),
                normalText('• 다양한 특례: 특별한 상황에 따른 단계별 서비스 제공\n\n'),

                boldText('3. 단계별 수당 지급\n'),
                normalText('• 1단계: 참여수당 및 교통차지지원수당 등\n'),
                normalText('• 2단계: 종속기업향상, 직단상담프로그램 등을 수료한 경우 추가 수당 제공\n'),
                normalText('• 저소득층 구직촉진수당: 중위소득 30-50% 범위 내에 속하는 가구원을 대상으로 매월 30만원씩 최대 3개월간 지원\n\n'),

                boldText('4. 신청 방법\n'),
                normalText('• 거주지 관할 고용센터로 신청 또는 우편 또는 온라인 제출.\n\n'),

                boldText('5. 문의\n'),
                normalText('• 고용노동부 고객상담센터: 국번없이 1350\n'),
                normalText('• 취업성공패키지 홈페이지: http://www.work.go.kr/pkg/succ/index.do\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
