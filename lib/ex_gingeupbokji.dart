import 'package:flutter/material.dart';

class ExGingeupBokji extends StatelessWidget{
  const ExGingeupBokji({Key? key}) : super(key: key);

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
          title: Text('  긴급복지생계지원',
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
                boldText('긴급복지생계지원\n'),
                normalText('갑작스러운 위기상황으로 생계 유지가 어려운 분들에게 생활비, 의료비, 주거비 등 필요한 복지서비스를 신속하게 지원하여 위기 상황에서 벗어날 수 있도록 돕는 제도입니다.\n'),

                boldText('신청자격:\n'),
                normalText('1. 주요 소득상실 사유:\n'),
                normalText('    • 사망, 가출, 행방불명, 구금 등\n'),
                normalText('    • 질병이나 부상으로 인한 소득상실\n'),
                normalText('    • 가족 구성원으로부터 방임, 유기, 학대 등\n'),
                normalText('    • 가정폭력 또는 성폭력 피해\n'),
                normalText('    • 화재 또는 자연재해로 인한 생활 곤란\n'),
                normalText('    • 사업 영업 곤란 등 다양한 사유 포함\n'),
                normalText('2. 추가적으로 보건복지부 장관이 정한 사유 등도 포함됨.\n\n'),

                boldText('선정기준:\n'),
                normalText('1. 소득: 중위소득 75% 이하\n'),
                normalText('2. 재산: 일반재산, 금융재산 등 고려하여 대도시, 중소도시, 농어촌 별로 기준 정함.\n'),
                normalText('3. 생계급여 중복혜택 불가능.\n\n'),

                boldText('지원내용:\n'),
                normalText('1. 가구 인원수에 따라 현금 지급.\n'),
                normalText('2. 가족 구성원 수에 따라 정액으로 지급하며, 인원 증가에 따라 추가금 지급.\n'),
                normalText('3. 2021년 부터는 냉방비가 포함됨.\n\n'),

                boldText('지원절차:\n'),
                normalText('1. 행정복지센터(주민센터)를 방문하거나 전화로 신청 및 심사 진행.\n'),
                normalText('2. 초기상담부터 서비스 지원까지 순차적으로 진행됨.\n\n'),

                boldText('추가정보:\n'),
                normalText('• 전화문의: 보건복지상담센터 129\n'),
                normalText('• 관련 웹사이트: 보건복지상담센터 바로가기 클릭\n\n'),

                boldText('근거법령:\n'),
                normalText('• 긴급복지지원법\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}