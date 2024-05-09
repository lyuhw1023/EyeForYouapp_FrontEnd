import 'package:flutter/material.dart';

class Care2Sev extends StatelessWidget{

  final List<String> categories = [
    "장애인 콜택시 \n(두리발, 자비콜, \n마마콜, 쏠라티)",
    "[바우처]\n동화야놀자",
    "긴급 복지 \n생계 지원",
    "[바우처]\n발달재활서비스",
    "[바우처] 아동정서 \n발달지원서비스",
    "장애가족역량강화 프로그램",
    "건강보험 산정특례 등록 신청",
    "항공요금 할인 및 서비스",
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
        title: Text("가족 지원, 중증 혜택",
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