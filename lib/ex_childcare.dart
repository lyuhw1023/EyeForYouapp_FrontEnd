import 'package:flutter/material.dart';

class ExChildCare extends StatelessWidget{
  const ExChildCare({Key? key}) : super(key: key);

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
          title: Text('아이돌봄지원사업',
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
                boldText('아이돌봄지원사업\n'),
                normalText('일시적인 돌봄이 필요할 때나 아동의 질병으로 인하여 시설보육을 이용하기 어려운 경우 돌봄 서비스를 제공하여 부모의 일-가정 양립에 기여합니다.\n'),

                boldText('1. 지원 대상\n'),
                normalText('• 만 12세 이하 아동을 둔 맞벌이 가정이 주요 대상입니다.\n'),
                normalText('• 장애 정도가 심한 장애인(기존 1~3급)의 경우에도 우선적으로 지원이 가능합니다.\n\n'),

                boldText('2. 사업 목적\n'),
                normalText('• 아이의 안전한 보호와 복지 증진을 목적으로 합니다.\n'),
                normalText('• 부모의 일과 가정 양립을 돕고 가족 구성원의 삶의 질 향상을 지원합니다.\n'),
                normalText('• 사회적으로 양육친화적인 환경을 조성합니다.\n\n'),

                boldText('3. 지원 내용:\n'),
                normalText('• 시간제 돌봄서비스: 필요한 시간만큼 아동을 돌봅니다.\n'),
                normalText('• 시간제 종합형 돌봄서비스: 시간제 돌봄에 가사 서비스가 추가됩니다.\n'),
                normalText('• 영아 종일제 돌봄서비스: 영아를 종일 돌봅니다.\n\n'),
                normalText('• 돌봄서비스: 다양한 기관에서 아동 돌봄이 필요한 경우 파견됩니다.\n\n'),
                normalText('• 질병감염아동 특별지원서비스: 질병에 감염된 아동의 가정 돌봄을 지원합니다.\n\n'),

                boldText('4. 이용 요금\n'),
                normalText('• 지원의 이리 절차 후 진단검사 결과 통보까지는 8주~12주 정도 소요\n'),
                normalText('• 사가 필요한 경우에는 추가 소요\n\n'),

                boldText('5. 서비스 제공 범위\n'),
                normalText('• 각 서비스 유형에 따라 학교, 보육시설 등에서 아동 돌봄 보조, 가사 활동, 영아 돌봄 등이 제공됩니다\n\n'),

                boldText('6. 서비스 제한 사항\n'),
                normalText('• 서비스 이용에 있어서의 제한 사항과 부정 사용에 따른 환수 조치가 있습니다\n\n'),

                boldText('7. 모집 기간\n'),
                normalText('• 아이돌봄서비스의 모집은 연중 진행됩니다\n\n'),

                boldText('8. 이용 절차\n'),
                normalText('• 정부 지원 가구와 정부 미지원 가구의 신청 절차가 다르며, 각각의 절차에 따라 서비스를 신청하고 이용할 수 있습니다\n\n'),

                boldText('9. 문의\n'),
                normalText('• 아이돌봄서비스 홈페이지 (https://www.idolbom.go.kr/home.go)\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
