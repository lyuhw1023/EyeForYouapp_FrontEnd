import 'package:flutter/material.dart';

class ExChildLive extends StatelessWidget{
  const ExChildLive({Key? key}) : super(key: key);

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
          title: Text('장애영유아거주시설',
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
                boldText('장애영유아거주시설\n'),
                normalText('영유아 아동을 대상으로 임시/정기 거주를 통하여 영·유아를 보호/양육을 지원하는 시설입니다.\n\n'),

                boldText('1. 지원 내용\n'),
                normalText('• 장애인을 위한 가정과 같은 주거 서비스 제공\n'),
                normalText('• 개별 장애유형과 중증도에 따라 적합한 재활서비스 제공\n'),
                normalText('• 아동의 특성에 맞는 치료재활과 개별화 교육 실시를 통한 성장 가능성 증진 프로그램 제공\n\n'),

                boldText('2. 모집 기간\n'),
                normalText('• 상시 모집\n\n'),

                boldText('3. 입소대상\n'),
                normalText('• 국민기초생활보장수급자인 등록장애인\n'),
                normalText('• 국민기초생활보장 수급자가 아닌 경우, 등록 장애인 중 부양의무자가 없거나 부양의무자가 있어도 부양능력이 없거나 부양을 받을 수 없는 자\n'),
                normalText('• 입양기관 보호아동\n\n'),

                boldText('4. 입소절차\n'),
                normalText('• 시설입소(이용) 가능여부 확인\n'),
                normalText('• 서비스신청 및 접수\n'),
                normalText('• 종합조사의뢰\n'),
                normalText('• 의뢰접수 및 종합조사 실시\n'),
                normalText('• 종합조사 결과 전송\n'),
                normalText('• 결과 안내\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
