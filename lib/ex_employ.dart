import 'package:flutter/material.dart';

class ExEmploy extends StatelessWidget{
  const ExEmploy({Key? key}) : super(key: key);

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
          title: Text('장애인 고용 장려금 지원',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
          toolbarHeight: 100.0,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.close,
                  semanticLabel: "닫기"),
              onPressed: () => Navigator.of(context). pop(),
            ),
          ],
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: Colors.black, fontSize: 16, height: 1.5),
              children: [
                boldText('장애인 고용 장려금 지원\n'),
                normalText('장애인근로자의 직업생활 안정을 도모하고 고용촉진을 유도하고자 의무고용률을 초과하여 장애인을 고용하는 사업주에게 일정액의 지원금을 지급하는 제도입니다.\n'),

                boldText('1. 고용장려금 지원 대상\n'),
                normalText('• 월별 상시근로자의 의무고용률을 초과하여 장애인을 고용한 사업주를 대상으로 합니다.\n'),
                normalText('• 최저임금 이상자 또는 최저임금 적용제외 인가를 받은 장애인에게 지원됩니다.\n\n'),

                boldText('2. 고용장려금 지원 기간\n'),
                normalText('• 의무고용률을 초과하는 경우 지속적으로 지급됩니다.\n'),
                normalText('• 단, 3년간 신청하지 않으면 소멸시효가 완성됩니다.\n\n'),

                boldText('3. 지원내용\n'),
                normalText('• 경증과 중증 장애인에 따라 지급 단가가 다르며, 최저임금액의 60%를 기준으로 적용됩니다.\n\n'),

                boldText('4. 지급 제한 대상\n'),
                normalText('• 고용보험법 등의 규정에 따라 지원받는 경우에는 고용장려금을 지급하지 않습니다.\n\n'),

                boldText('5. 신청시기\n'),
                normalText('• 고용 유지 기간 시작 후 6개월이 지난 후에 신청할 수 있습니다.\n\n'),

                boldText('6. 신청방법\n'),
                normalText('• 전자신청, 우편신청, 방문접수 중 선택하여 신청할 수 있습니다.\n\n'),

                boldText('7. 고용장려금 제출서류\n'),
                normalText('• 고용장려금 지급신청서 및 기타 필요한 서류를 제출해야 합니다.\n'),

                boldText('8. 문의\n'),
                normalText('• 한국장애인고용공단 부산지역본부로 문의할 수 있습니다.\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
