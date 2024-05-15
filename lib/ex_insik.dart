import 'package:flutter/material.dart';

class ExInsik extends StatelessWidget{
  const ExInsik({Key? key}) : super(key: key);

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
          title: Text('  장애인 인식개선 활동 프로그램',
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
                boldText('장애인 인식개선 활동 프로그램\n'),
                normalText('장애인 인권을 바탕으로 한 장애이해교육 및 장애체험활동을 진행함으로써, 장애인에 대한 편견을 개선하고 장애인과 비 장애인이 더불어 살아갈 수 있는 사회 환경을 조성할 수 있도록 노력하는 지역사회의 장애인의 긍정적 인식 변화를 위한 프로그램입니다\n\n'),

                boldText('1. 부산지역 장애인복지관 연합 (부산시)\n'),
                normalText('• 활동: 장애인 인식개선 캠페인 활동, 담쟁이걷기대회\n'),
                normalText('• 대상: 장애인 및 지역주민\n'),
                normalText('• 홈페이지: 없음\n\n'),

                boldText('2. 기장군 기장 장애인 복지관\n'),
                normalText('• 활동: 찾아가는 장애인식개선교육, 청소년 동아리활동, 장애인식개선 캠페인\n'),
                normalText('• 대상: 지역 내 어린이집, 유치원, 초등학교, 청소년, 지역주민\n'),
                normalText('• 홈페이지: 없음\n\n'),

                boldText('3. 나사함 발달장애인 복지관 (부산시 남구)\n'),
                normalText('• 활동: 학교 장애 인식개선 교육사, 모여락 당.나.귀. 발표회, 우리do!TV, 월간이벤트 ‘나·나·행’\n'),
                normalText('• 대상: 지역 내 초중고 학생, 발달장애인, 가족, 지역주민\n'),
                normalText('• 홈페이지: 없음\n\n'),

                boldText('4. 남구 남구장애인복지관 (부산시 남구)\n'),
                normalText('• 활동: 권익옹호활동(개인지원), 장애인 당사자교육(예방교육), 알.쓸.장.복, 장애이해교육\n'),
                normalText('• 대상: 남구 지역 장애인, 가족, 지역주민\n'),
                normalText('• 홈페이지: 없음\n\n'),

                boldText('5. 동구 동구장애인복지관 (부산시 동구)\n'),
                normalText('• 활동: 장애인 권리옹호를 위한 프로그램, 장애인식개선교육, 장애인의 날 주간행사, 장애인식개선캠페인\n'),
                normalText('• 대상: 지역주민, 장애인\n'),
                normalText('• 홈페이지: 없음\n\n'),

                boldText('6. 부산사상구장애인복지관 (부산시 사상구)\n'),
                normalText('• 주소: 부산시 사상구 모라로 192번길 21활동: 지역사회통합을 위한 환경조성사업\n'),
                normalText('• 대상: 지역주민\n'),
                normalText('• 홈페이지: 없음\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
