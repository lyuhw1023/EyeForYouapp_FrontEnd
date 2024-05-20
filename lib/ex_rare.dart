import 'package:flutter/material.dart';

class ExRare extends StatelessWidget{
  const ExRare({Key? key}) : super(key: key);

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
          title: Text('  희귀질환 유전자 진단지원',
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
                boldText('희귀질환 유전자 진단지원\n'),
                normalText('희귀질환 유전자 진단 지원을 통해 비용에 대한 부담으로 진단 시기를 놓치는 사례를 방지하고, 희귀질환을 조기에 진단하여 적기에 치료를 받을 수 있도록 진단비를 지원합니다.\n\n'),

                boldText('1. 지원 목적\n'),
                normalText('• 현재 요양급여 본인 부담금 산정 특례가 적용되고 있는 (극)희귀질환의 확진을 위한 유전자 검사 지원\n\n'),

                boldText('2. 지원 범위\n'),
                normalText('•  희귀질환 유전자 진단 지원사업 대상질환의 유전자 분석비 및 검체 운송비 지원\n\n'),

                boldText('3. 신청 방법\n'),
                normalText('• 진단의뢰진단의뢰기관 방문하여 의료진과 상담을 통해 의뢰\n'),
                normalText('• 동아대학교병원(진단검사의학과), 부산대학교병원(재활의학과), 인제대학교부산백병원\n\n'),

                boldText('4. 지원 체계 및 소요 기간\n'),
                normalText('• 진단 의뢰 접수 후 진담검사 결과 통보 까지는 8주~12주 정도 소요\n'),
                normalText('• 다수의 유전자 분석이 필요하거나 또는 돌연변이의 임상적 의미 분석을 위해 추가 검사가 필요한 경우에는 추가 소요\n\n')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
