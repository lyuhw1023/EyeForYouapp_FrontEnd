import 'dart:io';

import 'package:flutter/material.dart';

class Benefit extends StatelessWidget{
  const Benefit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("혜택 모아보기"),
        centerTitle: true,
        shape: Border(
          bottom: BorderSide(
            color: Colors.black,
            width: 1,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
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
                  icon: Icons.visibility_outlined,
                  text: '중증\n(1급 ~ 3급)',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FirstPage()),
                    );
                  },
                ),
                SizedBox(width: 30),
                OptionCard(
                  icon: Icons.remove_red_eye,
                  text: '경증\n(4급 ~ 6급)',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
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