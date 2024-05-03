import 'package:flutter/material.dart';

class ExplainMain extends StatelessWidget{
  const ExplainMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('AI 카메라 서비스'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '카메라를 편의점 물건들에 비추면,',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '그 물건이 무엇인지',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '자동으로 읽을 수 있습니다.\n',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '읽고자 하는 물건이',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '카메라 프레임에 걸치거나,',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '잘 안보이는 경우,',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '진동을 주어 프레임 안쪽으로',
                style: TextStyle(fontSize: 18),
              ),
              Text(
                '들어오도록 할 수 있습니다.',
                style: TextStyle(fontSize: 18),
              ),
            ],
          )
      ),
    );
  }
}