import 'package:flutter/material.dart';

class ExEmployPromotion extends StatelessWidget{
  const ExEmployPromotion({Key? key}) : super(key: key);

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
          title: Text('고용촉진장려금',
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
                boldText('고용촉진장려금\n'),
                normalText('취업에 어려움을 겪고 있는 고령자, 장애인, 여성가장 등 노동시장의 통상적인 조건에서 취업이 특히 곤란한 사람을 고용하는 사업주에게 장려금을 지급여하여 취업취약계층의 고용을 초진하는 제도입니다.\n'),

                boldText('1. 지원 대상:\n'),
                normalText('• 고용노동부장관이 지정한 특정 취업지원프로그램을 이수하고 고용센터에 구직 등록한 실업자를 고용한 사업주\n'),
                normalText('• 중증장애인, 책임 있는 여성, 섬 지역 거주자를 고용한 사업주\n'),
                normalText('• 일정 기간 실업 상태에 있는 특정 대상을 고용한 사업주\n\n'),

                boldText('2. 지원 내용:\n'),
                normalText('• 6개월 이상 고용을 유지한 경우 1년마다 매 6개월마다 지원금을 지급합니다.\n'),
                normalText('• 지원액은 사업의 규모에 따라 다르며, 우선지원 대상기업과 대규모 기업으로 구분됩니다.\n\n'),

                boldText('3. 지원 한도:\n'),
                normalText('• 피보험자 수에 따라 지원한도가 결정됩니다. 보험관계가 새로 성립한 경우에는 보험관계 성립일 현재 피보험자수를 기준으로 합니다.\n\n'),

                boldText('4. 지원대상 프로그램:\n'),
                normalText('• 고용노동부 및 여성가족부 등이 운영하는 다양한 취업지원 프로그램에 대한 지원이 이뤄집니다.\n\n'),

                boldText('5. 문의:\n'),
                normalText('• 고용노동부 고객상담센터를 통해 유선으로 문의하거나, 고용노동부 홈페이지를 방문하여 더 많은 정보를 확인할 수 있습니다.\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
