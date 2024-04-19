import 'package:flutter/material.dart';

void main() {
  runApp(Benefit());
}

class Benefit extends StatelessWidget {
  const Benefit({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 120, 189, 246)),
      home: BenefitApp(),
    );
  }
}

class BenefitApp extends StatefulWidget {
  @override
  _BenefitState createState() => _BenefitState();
}

class _BenefitState extends State<BenefitApp> {
  final List<String> menuItems1 = ['옵션1-1', '옵션1-2', '옵션1-3'];
  final List<String> menuItems2 = ['옵션2-1', '옵션2-2', '옵션2-3'];
  final List<String> menuItems3 = ['옵션3-1', '옵션3-2', '옵션3-3'];

  // 각 드롭다운 메뉴의 초기 선택값
  String dropdownValue1 = '옵션1-1';
  String dropdownValue2 = '옵션2-1';
  String dropdownValue3 = '옵션3-1';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 120, 189, 246),
        title: Text('혜택 모아보기'),
        centerTitle: true,
        leading:  IconButton(
            onPressed: () {
              Navigator.pop(context); //뒤로가기
            },
            color: Colors.black,
            icon: Icon(Icons.arrow_back),
          ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.white, // 흰색 배경
              borderRadius: BorderRadius.circular(10), // 둥근 모서리
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 1,
                  blurRadius: 6,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: dropdownMenu(dropdownValue1, menuItems1, (String? newValue) {
                    setState(() {
                      dropdownValue1 = newValue!;
                    });
                  }),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: dropdownMenu(dropdownValue2, menuItems2, (String? newValue) {
                    setState(() {
                      dropdownValue2 = newValue!;
                    });
                  }),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: dropdownMenu(dropdownValue3, menuItems3, (String? newValue) {
                    setState(() {
                      dropdownValue3 = newValue!;
                    });
                  }),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 90.0),
            width: 550,
            height: 612,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30),
                  topLeft: Radius.circular(30)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 120.0, left: 20),
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.20),
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    offset: Offset(1,0),
                    color: Color(0xffd3d3d3).withOpacity(.80)
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 120.0, left: 190),
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.20),
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    offset: Offset(1,0),
                    color: Color(0xffd3d3d3).withOpacity(.80)
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 290.0, left: 190),
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.20),
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    offset: Offset(1,0),
                    color: Color(0xffd3d3d3).withOpacity(.80)
                ),
              ],
            ),
          ),

          Container(
            margin: const EdgeInsets.only(top: 290.0, left: 20),
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.20),
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    offset: Offset(1,0),
                    color: Color(0xffd3d3d3).withOpacity(.80)
                ),
              ],
            ),
          ),

          Container(
            margin: const EdgeInsets.only(top: 460.0, left: 20),
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.20),
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    offset: Offset(1,0),
                    color: Color(0xffd3d3d3).withOpacity(.80)
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 460.0, left: 190),
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.20),
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                    offset: Offset(1,0),
                    color: Color(0xffd3d3d3).withOpacity(.80)
                ),
              ],
            ),
          ),

        ],
      )

      // Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child:
      // ),
    );
  }

  Widget dropdownMenu(String selectedValue, List<String> items, ValueChanged<String?> onChanged) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.blueAccent),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedValue,
          isExpanded: true,
          icon: Icon(Icons.arrow_drop_down),
          onChanged: onChanged,
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
    );
  }
}