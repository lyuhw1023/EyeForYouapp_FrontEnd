import 'package:app_eyeforyou/ex_taxi.dart';
import 'package:flutter/material.dart';

class Life1Sev extends StatelessWidget{

  final List<String> categories = [
    "장애인 콜택시 \n(두리발, 자비콜, \n마마콜, 쏠라티)",
    "긴급 복지 \n생계 지원",
    "건강보험 \n산정특례 \n등록 신청",
    "[장기요양노인]\n노인장기요양\n복지용구지원\n사업",
    "[바우처]\n시각장애인\n안마서비스",
    "[바우처]\n장애인\n활동지원\n서비스",
    "장애인\n인식개선 활동\n프로그램",
    "의료급여\n중증질환,\n희귀질환 및\n중증난치질환자\n지원"
  ];

  final List<Widget> pages = [
    ExTaxi(),
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
        title: Text("노인, 경증 혜택",
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