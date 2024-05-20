import 'package:flutter/material.dart';

class ExBusanDrive extends StatelessWidget{
  const ExBusanDrive({Key? key}) : super(key: key);

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
          title: Text('부산장애인운전재활센터',
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
                boldText('부산장애인운전재활센터\n'),
                normalText('운전에 적합한 신체 및 기능평가, 인지평가, 지각평가, 운전능력 측정을 통해 장애인에게 운전 교육 및 면허관련 정보서비스를 제공합니다.\n'),

                boldText('1. 지원 대상\n'),
                normalText('• 부산에 거주하고 있는 장애인\n'),

                boldText('2. 선발 기준\n'),
                normalText('• 교육 대상자와 대면 상담을 통해 운전 교육 여부 결정 (선별)\n'),
                normalText('• 필요시 작업치료사와 운전 적성평가 (인지 및 시·지각 평가), 작업 치료 병행\n'),

                boldText('3. 사업 내용\n'),
                normalText('• 장애인 개개인의 장애 특성에 맞는 다양한 운전 보조 장치를 적용한 훈련\n'),
                normalText('• 운전면허 취득의 첫 관문인 학과 시험에 합격하기 위한 학과 시험 대비 교육\n'),
                normalText('• 기능시험에 합격을 위한 장내 기능시험 대비 교육\n'),
                normalText('• 도로주행 시험에 합격을 위한 도로주행 시험 대비 교육\n'),
                normalText('• 면허 종류: 1종 수동과 오토, 2종 수동과 오토, 1종 대형 수동과 오토\n'),
                normalText('• 시뮬레이터를 활용한 안전하고 편리한 교육, 개인별 맞춤 교육\n\n'),

                boldText('4. 교육 과정\n'),
                normalText('• 8주/주 5회 교육이 기본 (총 37시간 이상)\n'),
                normalText('    • 학과 교육: 1주/8시간\n'),
                normalText('    • 기능 교육: 3주/12시간 (경사로, 좌우회전, 직각주차, 유턴, 교차로 통행 등 집중교육, 장내 기능시험 모의평가)\n'),
                normalText('    • 도로주행 교육: 4주/17시간 (도로주행코스 모의주행)\n\n'),

                boldText('5. 기타 사항\n'),
                normalText('• 교육 후 시험 미응시자 재교육 불가\n'),
                normalText('• 교육 출석률 50% 미만 강제 퇴소\n'),
                normalText('• 무단 결석 5회(연속 3회) 강제 퇴소\n'),
                normalText('• 장애 정도에 따라 작업치료사와 상담\n\n'),

                boldText('6. 신청 방법\n'),
                normalText('• 방문(부산지하철 1호선 초량역 6번 출구), 전화 (051-469-3250), 온라인 접수\n'),
                normalText('    • 온라인 접수는 홈페이지 회원가입 후 가능\n'),
                normalText('• 구비 서류: 등록카드 (협회 양식), 장애인 복지카드 사본\n'),

                boldText('7. 문의\n'),
                normalText('• 장애인운전재활센터: 051-469-3250\n'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
