import 'package:app_eyeforyou/ex_35.dart';
import 'package:app_eyeforyou/ex_gingeupbokji.dart';
import 'package:app_eyeforyou/ex_hanggong.dart';
import 'package:app_eyeforyou/ex_healthbohum.dart';
import 'package:app_eyeforyou/ex_lowincome.dart';
import 'package:app_eyeforyou/ex_medical.dart';
import 'package:app_eyeforyou/ex_rare.dart';
import 'package:app_eyeforyou/ex_taxi.dart';
import 'package:app_eyeforyou/explain_care1_sev.dart';
import 'package:flutter/material.dart';

class Care1Sev extends StatelessWidget{

  final List<String> categories = [
    "장애인 콜택시 \n(두리발, 자비콜, \n마마콜, 쏠라티)",
    "긴급 복지 \n생계 지원",
    "건강보험 \n산정특례 \n등록 신청",
    "의료급여\n중증질환,\n희귀질환 및\n중증난치질환\n지원",
    "항공요금\n할인 및\n서비스",
    "저소득층\n재난적 의료비\n지원",
    "만 3~5세\n누리과정\n지원",
    "희귀질환\n유전자\n진단지원"
  ];

  final List<Widget> pages = [
    ExTaxi(),
    ExGingeupBokji(),
    ExHealthBohum(),
    ExMedical(),
    ExHanggong(),
    ExLowIncome(),
    Ex35(),
    ExRare()
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("생활 안정, 중증 혜택",
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
                MaterialPageRoute(builder: (context) => ExplainCare1sev()),
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