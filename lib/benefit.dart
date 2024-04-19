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
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _OptionCard(title: '복지 서비스', iconData: Icons.health_and_safety),
                _OptionCard(title: '지역', iconData: Icons.location_city),
              ],
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _OptionCard(title: '생애 주기', iconData: Icons.autorenew),
                _OptionCard(title: '장애 정도', iconData: Icons.accessible_forward),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget _OptionCard({required String title, required IconData iconData}) {
    return GestureDetector(
      onTap: () {
        // 옵션 선택 시 수행할 동작
      },
      child: Container(
        width: 130,
        height: 190,
        decoration: BoxDecoration(
          color: Color(0xFF08436D),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(iconData, color: Colors.white, size: 40),
            SizedBox(height: 8),
            Text(title, textAlign: TextAlign.center, style: TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}