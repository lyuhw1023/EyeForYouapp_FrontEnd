import 'package:app_eyeforyou/ex_busandrive.dart';
import 'package:app_eyeforyou/ex_cyber.dart';
import 'package:app_eyeforyou/ex_employ.dart';
import 'package:app_eyeforyou/ex_employalson.dart';
import 'package:app_eyeforyou/ex_employpackage.dart';
import 'package:app_eyeforyou/ex_employpromotion.dart';
import 'package:app_eyeforyou/ex_job.dart';
import 'package:app_eyeforyou/ex_tomorrowcard.dart';
import 'package:app_eyeforyou/explain_care3_sev.dart';
import 'package:flutter/material.dart';

class Care3Sev extends StatelessWidget{

  final List<String> categories = [
    "직업재활시설",
    "장애인\n고용 장려금\n지원",
    "국민내일\n배움카드",
    "고용촉진장려금",
    "사이버직업\n능력개발\n(디지털능력개발원)",
    "취업성공패키지",
    "장애인 취업\n알선 지원",
    "부산장애인\n운전재활센터"
  ];

  final List<Widget> pages = [
    ExJob(),
    ExEmploy(),
    ExTomorrowCard(),
    ExEmployPromotion(),
    ExCyber(),
    ExEmployPackage(),
    ExEmployAlson(),
    ExBusanDrive()
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("고용, 중증 혜택",
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
                MaterialPageRoute(builder: (context) => ExplainCare3sev()),
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