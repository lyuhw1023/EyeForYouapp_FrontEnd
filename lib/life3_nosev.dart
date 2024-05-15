import 'package:app_eyeforyou/ex_activity.dart';
import 'package:app_eyeforyou/ex_family.dart';
import 'package:app_eyeforyou/ex_gingeupbokji.dart';
import 'package:app_eyeforyou/ex_hanggong.dart';
import 'package:app_eyeforyou/ex_healthbohum.dart';
import 'package:app_eyeforyou/ex_insik.dart';
import 'package:app_eyeforyou/ex_medical.dart';
import 'package:app_eyeforyou/ex_taxi.dart';
import 'package:flutter/material.dart';

class Life3NoSev extends StatelessWidget{

  final List<String> categories = [
    "장애인 콜택시 \n(두리발, 자비콜, \n마마콜, 쏠라티)",
    "긴급 복지 \n생계 지원",
    "건강보험 \n산정특례 \n등록 신청",
    "장애가족\n역량강화\n프로그램",
    "[바우처]\n장애인\n활동지원\n서비스",
    "장애인\n인식개선\n활동\n프로그램",
    "의료급여\n중증질환,\n희귀질환 및\n중증난치질환\n지원",
    "항공요금\n할인 및\n서비스"
  ];

  final List<Widget> pages = [
    ExTaxi(),
    ExGingeupBokji(),
    ExHealthBohum(),
    ExFamily(),
    ExActivity(),
    ExInsik(),
    ExMedical(),
    ExHanggong()
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("성인, 경증 혜택",
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