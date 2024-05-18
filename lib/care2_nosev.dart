import 'package:app_eyeforyou/ex_activity.dart';
import 'package:app_eyeforyou/ex_caraccident.dart';
import 'package:app_eyeforyou/ex_child.dart';
import 'package:app_eyeforyou/ex_childcare.dart';
import 'package:app_eyeforyou/ex_childfoster.dart';
import 'package:app_eyeforyou/ex_family.dart';
import 'package:app_eyeforyou/ex_familynurture.dart';
import 'package:app_eyeforyou/ex_psychotherapy.dart';
import 'package:app_eyeforyou/explain_care2_nosev.dart';
import 'package:flutter/material.dart';

class Care2NoSev extends StatelessWidget{

  final List<String> categories = [
    "장애가족\n역량강화\n프로그램",
    "[바우처]\n장애인\n활동지원\n서비스",
    "장애아가족\n양육지원\n(돌봄서비스,휴식지원서비스)",
    "심리치료\n(미술,놀이, 음악 등)",
    "자동차사고\n피해지원\n제도",
    "장애인 자녀\n부모자조모임",
    "아이돌봄\n지원사업",
    "가정위탁아동\n보호지원",
  ];

  final List<Widget> pages = [
    ExFamily(),
    ExActivity(),
    ExFamilyNurture(),
    ExPsychotherapy(),
    ExCarAccident(),
    ExChild(),
    ExChildCare(),
    ExChildFoster()
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("가족 지원, 경증 혜택",
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
                MaterialPageRoute(builder: (context) => ExplainCare2Nosev()),
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