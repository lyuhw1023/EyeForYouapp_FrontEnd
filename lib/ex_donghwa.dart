import 'package:flutter/material.dart';

class ExDongHwa extends StatelessWidget{
  const ExDongHwa({Key? key}) : super(key: key);

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
          title: Text('  [바우처] 동화야놀자',
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
                boldText('[바우처] 동화야놀자\n'),
                normalText('아동의 어휘력 및 표현력을 길러 종합적인 인지능력을 향상하고 동화의 감수성과 정서순화를 통한 정서발달 지원, 색다른 감상의 경험을 통해 상상력과 창의력을 극대화 하는 프로그램입니다.\n\n'),

                boldText('1. 서비스 대상:\n'),
                normalText('• 소득이 기준 중위소득 150% 이하인 가구\n'),
                normalText('• 유아단독형: 3~7세 아동 (2017년 ~ 2021년 출생자)\n'),
                normalText('• 특별한 가구 특성이 없음\n'),
                normalText('• 필요한 서류는 없으며, 우선순위에 따라 입증서류를 제출해야 함\n'),
                normalText('• 우선순위는 유치원 미 이용자, 한무보, 다문화, 맞벌이, 연령 순으로 결정됨\n'),
                normalText('• 재 신청은 불가능함\n\n'),

                boldText('2. 서비스 가격:\n'),
                normalText('• 정부지원금과 본인부담금이 존재함\n'),
                normalText('• 등급에 따라 월별 서비스 가격이 다름\n'),
                normalText('• 등급은 기초 생활 수급자, 차상위부양가족, 기준중위소득 120% 이하, 120% 초과 ~ 150% 이하로 구분됨\n\n'),

                boldText('3. 지원기간:\n'),
                normalText('• 12개월 동안 지원됨\n\n'),

                boldText('4. 서비스 내용:\n'),
                normalText('• 주 1회 (월 4회), 회당 50분의 서비스 제공됨\n'),
                normalText('• 동화구연, 연극 등이 포함되어 있음\n\n'),

                boldText('5. 서비스 문의:\n'),
                normalText('• 부산사회서비스지원단 (☎ 051-714-2008)\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
