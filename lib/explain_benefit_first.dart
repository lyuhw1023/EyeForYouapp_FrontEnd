import 'package:flutter/material.dart';

class ExplainBenefitFirst extends StatelessWidget{
  const ExplainBenefitFirst({Key? key}) : super(key: key);

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
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('혜택 모아보기',
          style: TextStyle(
            fontSize: 19,
          ),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.black, fontSize: 17, height: 1.3), // Default text style
            children: [
              normalText('\n이 페이지는 시각장애인을 위한 혜택 정보를 제공하는 서비스입니다. 앱의 메인 페이지에는 생애 주기와 복지서비스 이렇게 두 가지 옵션이 있습니다.\n'),
              boldText('\n생애주기\n'),
              normalText('사용자의 나이 그룹에 따라 다양한 혜택을 찾을 수 있습니다.\n\n'),
              normalText('□ 영유아 (7세 이전)\n'),
              normalText('□ 아동 & 청소년 (8세 ~ 19세)\n'),
              normalText('□ 성인 (20세 ~ 64세)\n'),
              normalText('□ 노인 (65세 이상)\n\n'),
              boldText('복지서비스\n'),
              normalText('복지서비스는 다음과 같이 분류됩니다.\n\n'),
              normalText('□ 생활 안정\n'),
              normalText('□ 고용\n'),
              normalText('□ 거주/이용\n'),
              normalText('□ 보육/교육\n'),
              normalText('□ 건강/의료\n'),
              normalText('□ 문화/여가\n'),
              normalText('□ 편의\n'),
              normalText('□ 보조기기\n'),
              normalText('□ 권익\n'),
              normalText('□ 상담\n'),
              normalText('□ 바우처\n\n'),
              boldText('사용 방법\n'),
              normalText('1. 생애 주기와 복지서비스 선택\n\n'),
              normalText('2. 다음 페이지로 이동 : 원하는 생애 주기 및 복지서비스를 선택하면 자동으로 넘어갑니다.\n')
            ],
          ),
        ),
      ),
    );
  }
}