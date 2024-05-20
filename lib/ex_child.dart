import 'package:flutter/material.dart';

class ExChild extends StatelessWidget{
  const ExChild({Key? key}) : super(key: key);

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
          title: Text('장애인 자녀 부모자조모임',
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
                boldText('장애인 자녀 부모자조모임\n'),
                normalText('장애인 자녀를 둔 부모들이 모여 양육 정보 공유 및 양육 스트레스 해소와 자녀들의 사회성 향상 등을 위한 프로그램입니다.\n'),

                boldText('1. 프로그램 대상\n'),
                normalText('• 장애인 자녀를 둔 부모 및 장애인 가족\n\n'),

                boldText('2. 프로그램 내용\n'),
                normalText('• 정기 모임, 부모교육 등\n\n'),

                boldText('3. 프로그램 기관\n'),
                normalText('ㅁ 금정구 장애인복지관\n'),
                normalText('• 지역: 금정구\n'),
                normalText('• 전화번호: 051-523-0100\n'),
                normalText('• 주소: 부산시 금정구 서부로 77\n'),
                normalText('• 서비스내용: 장애, 비장애 형제 프로그램\n\n'),

                normalText('ㅁ 부산장애인가족지원센터\n'),
                normalText('• 지역: 금정구\n'),
                normalText('• 전화번호: 051-892-2013~4\n'),
                normalText('• 주소: 부산시 동구 중앙대로 196번길 12-3, 6층\n'),
                normalText('• 서비스내용: 장애인가족교육/자조모임 지원/가족휴식지원\n\n'),

                normalText('ㅁ 부산진구 장애인복지관\n'),
                normalText('• 지역: 부산진구\n'),
                normalText('• 전화번호: 051-808-8190\n'),
                normalText('• 주소: 부산시 부산진구 전포대로 300번길 6\n'),
                normalText('• 서비스내용: 부모자조모임/부모코칭/비장애 형제·자매지원\n\n'),

                normalText('ㅁ 북구장애인복지관\n'),
                normalText('• 지역: 북구\n'),
                normalText('• 전화번호: 051-362-7755\n'),
                normalText('• 주소: 부산시 북구 금곡대로 616번길 145\n'),
                normalText('• 서비스내용: 영유아, 학령기, 성인전환기 장애자녀 부모 자조모임\n\n'),

                normalText('ㅁ 서구장애인복지관\n'),
                normalText('• 지역: 서구\n'),
                normalText('• 전화번호: 051-242-3930\n'),
                normalText('• 주소: 부산시 서구 보수대로 154번길 36\n'),
                normalText('• 서비스내용: 부모교육/부모자조모임, 가족캠프/테마체험 가족 문화의 날\n\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
