import 'package:flutter/material.dart';

class ExChildFoster extends StatelessWidget{
  const ExChildFoster({Key? key}) : super(key: key);

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
          title: Text('가정위탁아동 보호지원',
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
                boldText('가정위탁아동 보호지원\n'),
                normalText('보호대상아동을 보호.양육하기를 희망하는 가정에 위탁하여, 아동이 가정적인 분위기에서 성장할 수 있도록 돕는 사업입니다.\n'),

                boldText('위탁아동 기준\n'),
                normalText('1. 18세 미만의 아동:\n'),
                normalText('    • 18세 이하의 아동을 대상으로 합니다. 다만, 고등학교 재학 중인 아동도 포함됩니다\n'),
                normalText('2. 보호 대상 아동:\n'),
                normalText('    • 보호자가 없거나 보호자로부터 이탈된 아동입니다.\n'),
                normalText('    • 보호자가 아동을 학대하거나 양육하기에 적합하지 않거나 능력이 없는 경우의 아동을 포함합니다\n'),
                normalText('    • 특히, 보호가 필요한 아동 중 2세 미만 아동은 가정위탁으로 우선 배치됩니다.\n'),
                normalText('3. 보호 연장 가능 아동:\n'),
                normalText('    • 보호조치 중인 18세 이상 아동 중 일정 요건에 해당하는 경우 위탁보호기간을 연장할 수 있습니다\n'),
                normalText('    • 연장 사유로는 대학 진학기간, 직업 교육 및 훈련, 등록된 학원에서의 교육 등이 포함됩니다\n'),
                normalText('    • 특정 사회적 상황이나 아동의 상황에 따라 시·도지사 등의 요청에 따라 25세까지도 연장 가능합니다\n'),

                boldText('위탁 보호의 종류와 내용\n'),
                normalText('1. 일반 가정위탁:\n'),
                normalText('    • 보호자가 없거나 보호자로부터 이탈된 아동입니다.\n'),
                normalText('    • 대리위탁(조부모), 친인척 위탁, 일반위탁(비혈연) 등이 있습니다.\n'),
                normalText('    • 국민기초생활보장 수급자로 책정되며, 양육 수당, 대학 등록금 지원, 자립지원금, 상해보험료, 심리치료비 등이 포함됩니다\n'),
                normalText('2. 일시 가정위탁:\n'),
                normalText('    • 일시적인 가정위탁 보호가 필요한 경우입니다.\n'),
                normalText('    • 30일 이내(필요시 1회 연장 가능)로 제공되며, 보호자의 불가피한 사유로 일시보호가 필요한 경우에 해당됩니다.\n'),
                normalText('    • 국민기초생활보장 수급자로 책정되며, 양육보조금, 상해보험료, 심리치료비 등이 지원됩니다.\n'),
                normalText('3. 전문가정위탁:\n'),
                normalText('    • 만 2세 이하 아동의 전문적이고 특별한 보살핌이 필요한 경우입니다.\n'),
                normalText('    • 전문아동보호비, 대학진학금, 자립지원금, 상해보험료, 심리치료비 등이 제공됩니다.\n'),
                normalText('4. 위기아동가정보호사업:\n'),
                normalText('    • 위기아동 및 보호가정을 대상으로 합니다.\n'),
                normalText('    • 3개월 이내로 제공되며, 국민기초생활보장 수급자로 책정되며, 전문아동보호비, 아동용품 구입비 등이 지원됩니다.\n'),


                boldText('위탁가정 선정 및 관리\n'),
                normalText('• 위탁가정은 일정한 기준에 따라 선정됩니다.\n\n'),
                normalText('• 위탁가정은 양육에 적합한 수준의 소득과 환경을 갖추어야 합니다.\n\n'),

                boldText('신청 및 문의\n'),
                normalText('• 신청은 구, 군 아동복지담당부서 또는 부산가정위탁지원센터를 통해 가능합니다.\n'),
                normalText('• 신청 시 필요한 서류는 해당 지역의 주민센터 등에서 확인할 수 있습니다.\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
