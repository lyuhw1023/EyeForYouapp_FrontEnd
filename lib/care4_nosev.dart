import 'package:app_eyeforyou/explain_care4_nosev.dart';
import 'package:flutter/material.dart';

class Care4NoSev extends StatelessWidget{

  final List<String> categories = [
    "주택담보노후\n연금보증",
    "장애 영유아\n거주 시설",
    "에너지 바우처",
    "입양기관",
    "주거환경\n개선 서비스",
    "주간보호",
    "내집 마련\n디딤돌대출\n(주택구입시)",
    "기존 주택\n매입임대 등"
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
        title: Text("거주/이용, 경증 혜택",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        toolbarHeight: 75.0,
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
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ExplainCare4Nosev()),
              );
            },
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
                  color: Color(0xFF08436D).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  categories[index],
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
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