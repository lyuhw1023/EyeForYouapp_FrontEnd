import 'package:app_eyeforyou/care2_nosev.dart';
import 'package:app_eyeforyou/care2_sev.dart';
import 'package:app_eyeforyou/explain_benefit_second.dart';
import 'package:flutter/material.dart';

class BenefitCare2 extends StatelessWidget{
  const BenefitCare2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("혜택 모아보기",
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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                _createRoute(),
              );
            },
            icon: Icon(Icons.question_mark_rounded),
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
                  icon: Icons.lightbulb_outline,
                  text: '중증\n(1급 ~ 3급)',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Care2Sev()),
                    );
                  },
                ),
                SizedBox(width: 30),
                OptionCard(
                  icon: Icons.highlight_outlined,
                  text: '경증\n(4급 ~ 6급)',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Care2NoSev()),
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
  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => ExplainBenefitSecond(),
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
        width: 150,
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
                fontSize: 14, // 텍스트 크기 조절
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("첫 번째 페이지"),
      ),
      body: Center(
        child: Text("이것은 첫 번째 페이지입니다."),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("두 번째 페이지"),
      ),
      body: Center(
        child: Text("이것은 두 번째 페이지입니다."),
      ),
    );
  }
}