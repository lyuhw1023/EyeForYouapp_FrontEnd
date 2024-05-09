import 'package:flutter/material.dart';

class Care2NoSev extends StatelessWidget{

  final List<String> categories = [
    "항공요금 할인 및 서비스",
    "저소득층 재난적 \n의료비 지원",
    "만 3~5세 누리과정\n지원",
    "희귀질환 유전자\n진단지원",
    "장애아 통합지정\n어린이집",
    "심리치료\n(미술,놀이,음악 등)",
    "관광 및 \n나들이(여행)",
    "건강보험 산정특례 등록 신청"
  ];

  final List<Widget> pages = [
    // CallTaxiServicePage(),
    // ReaderServicePage(),
    // EmergencyWelfarePage(),
    // DevelopmentalRehabPage(),
    // TelecomSupportPage(),
    // FamilyCareProgramPage(),
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("가족 지원, 경증 혜택",
          style: TextStyle(
            fontSize: 19,
          ),
        ),
        centerTitle: true,
        shape: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
        leading:  IconButton(
            onPressed: () {
              Navigator.pop(context); //뒤로가기
            },
            icon: Icon(Icons.arrow_back,
                semanticLabel: "뒤로가기")
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.question_mark_rounded,
                semanticLabel: "도움말"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,    // 2열
            crossAxisSpacing: 20, // 왼쪽 오른쪽 간격
            mainAxisSpacing: 40, // 위 아래 간격
            childAspectRatio: 1, // 정사각형
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => pages[index]),
                );
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  categories[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}