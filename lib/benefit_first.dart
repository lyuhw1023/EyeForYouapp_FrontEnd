import 'package:app_eyeforyou/benefit_care_list.dart';
import 'package:app_eyeforyou/benefit_life_list.dart';
import 'package:app_eyeforyou/explain_benefit_first.dart';
import 'package:flutter/material.dart';

class BenefitFirst extends StatelessWidget{
  const BenefitFirst({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("혜택 모아보기",
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
                _createRoute(),
              );
            },
            icon: Icon(Icons.question_mark_rounded,
                semanticLabel: "도움말"),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OptionCard(
                  icon: Icons.autorenew,
                  text: '생애주기',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BenefitLifeList()),
                    );
                  },
                ),
                SizedBox(width: 30),
                OptionCard(
                  icon: Icons.health_and_safety_outlined,
                  text: '복지 서비스',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BenefitCareList()),
                    );
                  },
                ),
              ],
            ),
            // 필요하다면 더 많은 카드를 여기에 추가하세요.
          ],
        ),
      ),
    );
  }

  //애니메이션 추가 함수
  //_createRoute(),
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => ExplainBenefitFirst(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0);
        const end = Offset.zero;
        const curve = Curves.ease;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}

class OptionCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;

  const OptionCard({Key? key, required this.icon, required this.text, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 140,
        height: 230,
        decoration: BoxDecoration(
          color: Color(0xFF08436D), // 색상을 HEX 코드로 설정
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, color: Colors.white, size: 60), // 아이콘 크기 조절
            SizedBox(height: 10),
            Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20, // 텍스트 크기 조절
              ),
            ),
          ],
        ),
      ),
    );
  }
}