import 'package:flutter/material.dart';

class ExEmployAlson extends StatelessWidget{
  const ExEmployAlson({Key? key}) : super(key: key);

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
          title: Text('장애인 취업 알선 지원',
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
                boldText('장애인 취업 알선 지원\n'),
                normalText('장애인을 고용한 사업주에게는 장애인재활상담사 또는 직무지원인 배치, 사업주 유무상지원 등을 통하여 보다 체계적인 장애인 고용관리가 이루어 질 수 있도록 서비스를 제공하며, 전문적인 컨설팅을 통하여 계속적인 고용안정을 이룰 수 있도록 지원합니다.\n'),

                boldText('1. 지원 대상\n'),
                normalText('• 장애인복지법에 의해 등록된 장애인 중 취업을 원하는 자\n\n'),

                boldText('2. 서비스 내용\n'),
                normalText('• 중증 장애인 지원 고용을 통한 현장 적응력 향상\n'),
                normalText('• 장애인을 고용한 사업주에 대한 체계적인 장애인 고용 관리 제공\n'),
                normalText('• 사업체 개발, 취업 알선, 지원 고용, 취업 후 적응 지도, 직업 적응 훈련, 부모 교육, 장애인 복지 일자리 사업 등\n\n'),

                boldText('3. 문의\n'),
                normalText('• 한국장애인고용공단 부산지사: 051-640-9800\n\n'),

                boldText('4. 서비스 기관\n'),
                normalText('• 금정구장애인복지관: 051-523-0100\n'),
                normalText('• 기장장애인종합복지관: 051-727-3088\n'),
                normalText('• 나사함발달장애인종합복지관: 051-627-8521\n'),
                normalText('• 남구장애인종합복지관: 051-626-6990\n'),
                normalText('• 동구장애인복지관: 051-469-9756\n'),
                normalText('• 부산광역시장애인일자리통합지원센터: 051-465-1942\n'),
                normalText('• 부산광역시장애인재활협회: 051-465-7064\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
