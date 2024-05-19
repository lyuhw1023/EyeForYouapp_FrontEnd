import 'package:flutter/material.dart';

class ExTaxi extends StatelessWidget{
  const ExTaxi({Key? key}) : super(key: key);

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
        title: Text('장애인 콜택시\n(두리발,자비콜,마마콜,쏠라티)',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        toolbarHeight: 100.0,
        centerTitle: true,
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
              boldText('1. 장애인 콜택시 서비스\n'),
              normalText('• 두리발, 자비콜, 마마콜, 쏠라티 등이 있습니다.\n'),
              normalText('• 대중교통 이용이 어려운 장애인 및 노약자를 위한 특별교통수단입니다.\n\n'),

              boldText('2. 이용 등록 절차\n'),
              normalText('• 서류를 제출하고 등록하는 절차가 있습니다.\n'),
              normalText('• 두리발, 자비콜 등의 서비스는 주민센터를 방문하여 등록할 수 있습니다.\n\n'),

              boldText('3. 콜택시 종류와 이용 방법\n'),
              normalText('• 두리발은 전화, 모바일 앱, 말로 요청할 수 있으며, 휠체어 이용자 및 동반자가 가능합니다.\n'),
              normalText('• 자비콜은 주민센터를 통해 등록 후 전화로 이용할 수 있으며, 장애인 1인 탑승이 원칙입니다.\n'),
              normalText('• 마마콜은 부산시 주민 등록자 및 임산부를 위한 서비스로, 스마트폰 어플리케이션을 통해 등록하고 이용합니다.\n'),
              normalText('• 이용횟수에는 제한이 있으며, 이용료는 다양한 조건에 따라 결정됩니다.\n\n'),

              boldText('4. 이용제한 사용\n'),
              normalText('• 콜택시 이용 시 주의사항과 이용제한 사항이 있으니 참고해야 합니다.\n\n'),

              boldText('5. 서비스 특징\n'),
              normalText('• 각 콜택시 서비스의 운행시간, 운행구역, 이용요금 등이 있습니다.\n'),
              normalText('• 특히 두리발의 경우 부산 및 인근 지역뿐만 아니라 창원까지 운행하며, 양산, 김해, 울산 등 다양한 지역을 운행합니다.\n\n'),

              boldText('6. 맞춤형 복지서비스\n'),
              normalText('• 서비스 등록 및 이용방법, 이용제한 사항, 이용료 등의 정보가 제공됩니다.\n'),
            ],
          ),
        ),
      ),
    ),
    );
  }
}