import 'package:flutter/material.dart';
import 'camera_ex.dart';
import 'package:screenshot/screenshot.dart';
import 'package:get_storage/get_storage.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.green,
      ),
      home: MainHomePage(),
    );
  }
}

class MainHomePage extends StatefulWidget {
  const MainHomePage({Key? key}) : super(key: key);

  @override
  _MainHomePageState createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  @override
  Widget build(BuildContext context) {



    bool? _isChecked1 = false;
    bool? _isChecked2 = false;
    bool? _isChecked3 = false;
    bool? _isChecked4 = false;
    bool? _isChecked5 = false;
    bool? _isChecked6 = false;
    bool? _isChecked7 = false;
    bool? _isChecked8 = false;
    bool? _isChecked9 = false;
    bool? _isChecked10 = false;
    bool? _isChecked11 = false;
    bool? _isChecked12 = false;
    bool? _isChecked13 = false;
    bool? _isChecked14 = false;
    bool? _isChecked15 = false;
    bool? _isChecked16 = false;
    bool? _isChecked17 = false;
    bool? _isChecked18 = false;
    bool? _isChecked19 = false;
    bool? _isChecked20 = false;
    bool? _isChecked21 = false;
    bool? _isChecked22 = false;
    bool? _isChecked23 = false;
    bool? _isChecked24 = false;
    bool? _isChecked25 = false;
    bool? _isChecked26 = false;
    bool? _isChecked27 = false;
    bool? _isChecked28 = false;
    bool? _isChecked29 = false;
    bool? _isChecked30 = false;
    bool? _isChecked31 = false;
    bool? _isChecked32 = false;
    bool? _isChecked33 = false;
    bool? _isChecked34 = false;
    bool? _isChecked35 = false;
    bool? _isChecked36 = false;
    bool? _isChecked37 = false;
    bool? _isChecked38 = false;
    bool? _isChecked39 = false;
    bool? _isChecked40 = false;
    bool? _isChecked41 = false;
    bool? _isChecked42 = false;
    bool? _isChecked43 = false;
    bool? _isChecked44 = false;
    bool? _isChecked45 = false;


    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(
          "아파트 체크리스트",
          style: TextStyle(fontSize: 20, fontFamily: 'jalnan', color: Color.fromRGBO(54, 77, 236, 1)),
        ),
        actions: [
          TextButton(
              onPressed: () {
              },
              child: Text(
                "초기화",
                style: TextStyle(color: Color.fromRGBO(54, 77, 236, 1), fontWeight: FontWeight.bold),
              ))
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Screenshot(
                controller: screenshotController,
                child: Container(
                  //margin: EdgeInsets.only(top: 20, bottom: 20),
                  color: Colors.white,
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      Card(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          controller: _controller1,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.apartment),
                            hintText: "아파트 단지명",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            // suffixIcon: IconButton(
                            //   icon: Icon(Icons.clear),
                            //   splashColor: Colors.transparent,
                            //   onPressed: _controller.clear
                            // ),
                          ),
                          onChanged: (value) {
                            setState(() {
                              data.write('text', _controller1.text);
                            });
                          },
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Text(
                              "주차차단기",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(54, 77, 236, 1)),
                            ),
                            Checkbox(
                                value: _isChecked1,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked1 = newValue;
                                    data.write('checked1', _isChecked1);
                                  });
                                }),
                            Text("유"),
                            //SizedBox(width: 10),
                            Checkbox(
                                value: _isChecked2,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked2 = newValue;
                                    data.write('checked2', _isChecked2);
                                  });
                                }),
                            Text("무"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Text("지하주차장",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(54, 77, 236, 1))),
                            Checkbox(
                                value: _isChecked3,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked3 = newValue;
                                    data.write('checked3', _isChecked3);
                                  });
                                }),
                            Text("연결"),
                            //SizedBox(width: 10),
                            Checkbox(
                                value: _isChecked4,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked4 = newValue;
                                    data.write('checked4', _isChecked4);
                                  });
                                }),
                            Text("연결X"),
                            Checkbox(
                                value: _isChecked5,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked5 = newValue;
                                    data.write('checked5', _isChecked5);
                                  });
                                }),
                            Text("무"),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Text("주차상황ㅤ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(54, 77, 236, 1))),
                            //SizedBox(width: 13),
                            Checkbox(
                                value: _isChecked6,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked6 = newValue;
                                    data.write('checked6', _isChecked6);
                                  });
                                }),
                            Text("여유"),
                            //SizedBox(width: 20),
                            Checkbox(
                                value: _isChecked7,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked7 = newValue;
                                    data.write('checked7', _isChecked7);
                                  });
                                }),
                            Text("중간"),
                            //SizedBox(width: 20),
                            Checkbox(
                                value: _isChecked8,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked8 = newValue;
                                    data.write('checked8', _isChecked8);
                                  });
                                }),
                            Text("헬"),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Text("외제차ㅤㅤ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(54, 77, 236, 1))),
                            //SizedBox(width: 26),
                            Checkbox(
                                value: _isChecked9,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked9 = newValue;
                                    data.write('checked9', _isChecked9);
                                  });
                                }),
                            Text("많음"),
                            //SizedBox(width: 5),
                            Checkbox(
                                value: _isChecked10,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked10 = newValue;
                                    data.write('checked10', _isChecked10);
                                  });
                                }),
                            Text("적음"),
                            SizedBox(width: 3),
                            Checkbox(
                                value: _isChecked11,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked11 = newValue;
                                    data.write('checked11', _isChecked11);
                                  });
                                }),
                            Text("무"),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Text("입구번호키",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(54, 77, 236, 1))),
                            Checkbox(
                                value: _isChecked12,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked12 = newValue;
                                    data.write('checked12', _isChecked12);
                                  });
                                }),
                            Text("유"),
                            SizedBox(width: 10),
                            Checkbox(
                                value: _isChecked13,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked13 = newValue;
                                    data.write('checked13', _isChecked13);
                                  });
                                }),
                            Text("무"),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Text("외벽칠ㅤㅤ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(54, 77, 236, 1))),
                            Checkbox(
                                value: _isChecked14,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked14 = newValue;
                                    data.write('checked14', _isChecked14);
                                  });
                                }),
                            Text("깔끔"),
                            //SizedBox(width: 20),
                            Checkbox(
                                value: _isChecked15,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked15 = newValue;
                                    data.write('checked15', _isChecked15);
                                  });
                                }),
                            Text("중간"),
                            //SizedBox(width: 20),
                            Checkbox(
                                value: _isChecked16,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked16 = newValue;
                                    data.write('checked16', _isChecked16);
                                  });
                                }),
                            Text("관리X"),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Text("청소상태ㅤ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(54, 77, 236, 1))),
                            Checkbox(
                                value: _isChecked17,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked17 = newValue;
                                    data.write('checked17', _isChecked17);
                                  });
                                }),
                            Text("깨끗"),
                            //SizedBox(width: 19),
                            Checkbox(
                                value: _isChecked18,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked18 = newValue;
                                    data.write('checked18', _isChecked18);
                                  });
                                }),
                            Text("중간"),
                            //SizedBox(width: 10),
                            Checkbox(
                                value: _isChecked19,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked19 = newValue;
                                    data.write('checked19', _isChecked19);
                                  });
                                }),
                            Text("관리X"),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Text("동간거리ㅤ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(54, 77, 236, 1))),
                            Checkbox(
                                value: _isChecked20,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked20 = newValue;
                                    data.write('checked20', _isChecked20);
                                  });
                                }),
                            Text("넓음"),
                            //SizedBox(width: 19),
                            Checkbox(
                                value: _isChecked21,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked21 = newValue;
                                    data.write('checked21', _isChecked21);
                                  });
                                }),
                            Text("중간"),
                            //SizedBox(width: 10),
                            Checkbox(
                                value: _isChecked22,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked22 = newValue;
                                    data.write('checked22', _isChecked22);
                                  });
                                }),
                            Text("좁음"),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Text("놀이터ㅤㅤ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(54, 77, 236, 1))),
                            Checkbox(
                                value: _isChecked41,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked41 = newValue;
                                    data.write('checked41', _isChecked41);
                                  });
                                }),
                            Text("탄성"),
                            SizedBox(width: 15),
                            Checkbox(
                                value: _isChecked42,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked42 = newValue;
                                    data.write('checked42', _isChecked42);
                                  });
                                }),
                            Text("모래"),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Text("소음ㅤㅤㅤ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(54, 77, 236, 1))),
                            Checkbox(
                                value: _isChecked23,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked23 = newValue;
                                    data.write('checked23', _isChecked23);
                                  });
                                }),
                            Text("조용"),
                            //SizedBox(width: 15),
                            Checkbox(
                                value: _isChecked24,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked24 = newValue;
                                    data.write('checked24', _isChecked24);
                                  });
                                }),
                            Text("중간"),
                            Checkbox(
                                value: _isChecked25,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked25 = newValue;
                                    data.write('checked25', _isChecked25);
                                  });
                                }),
                            Text("시끄러움"),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Text("언덕ㅤㅤㅤ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(54, 77, 236, 1))),
                            Checkbox(
                                value: _isChecked26,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked26 = newValue;
                                    data.write('checked26', _isChecked26);
                                  });
                                }),
                            Text("평지"),
                            //SizedBox(width: 10),
                            Checkbox(
                                value: _isChecked27,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked27 = newValue;
                                    data.write('checked27', _isChecked27);
                                  });
                                }),
                            Text("오르막"),
                            //SizedBox(width: 5),
                            Checkbox(
                                value: _isChecked28,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked28 = newValue;
                                    data.write('checked28', _isChecked28);
                                  });
                                }),
                            Text("급경사"),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Text("공원ㅤㅤㅤ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(54, 77, 236, 1))),
                            Checkbox(
                                value: _isChecked32,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked32 = newValue;
                                    data.write('checked32', _isChecked32);
                                  });
                                }),
                            Text("가까움"),
                            SizedBox(width: 3),
                            Checkbox(
                                value: _isChecked33,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked33 = newValue;
                                    data.write('checked33', _isChecked33);
                                  });
                                }),
                            Text("안가까움"),
                            SizedBox(width: 3),
                          ],
                        ),
                      ),
                      // SizedBox(height: 10),
                      // Container(
                      //   margin: EdgeInsets.symmetric(horizontal: 10),
                      //   decoration: BoxDecoration(
                      //       border: Border.all(color: Colors.blue),
                      //       color: Colors.white,
                      //       borderRadius: BorderRadius.circular(7)),
                      //   child: Row(
                      //     children: [
                      //       SizedBox(width: 10),
                      //       Text("유치원"),
                      //       SizedBox(width: 21),
                      //       Checkbox(
                      //           value: _isChecked43,
                      //           onChanged: (bool? newValue) {
                      //             setState(() {
                      //               _isChecked43 = newValue;
                      //             });
                      //           }),
                      //       Text("단지내"),
                      //       SizedBox(width: 3),
                      //       Checkbox(
                      //           value: _isChecked44,
                      //           onChanged: (bool? newValue) {
                      //             setState(() {
                      //               _isChecked44 = newValue;
                      //             });
                      //           }),
                      //       Text("가까움"),
                      //       SizedBox(width: 3),
                      //       Checkbox(
                      //           value: _isChecked45,
                      //           onChanged: (bool? newValue) {
                      //             setState(() {
                      //               _isChecked45 = newValue;
                      //             });
                      //           }),
                      //       Text("안가까움"),
                      //     ],
                      //   ),
                      // ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Text("초등학교ㅤ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(54, 77, 236, 1))),
                            Checkbox(
                                value: _isChecked35,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked35 = newValue;
                                    data.write('checked35', _isChecked35);
                                  });
                                }),
                            Text("초품아/가까움"),
                            //SizedBox(width: 3),
                            Checkbox(
                                value: _isChecked36,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked36 = newValue;
                                    data.write('checked36', _isChecked36);
                                  });
                                }),
                            Text("안가까움"),
                            //SizedBox(width: 3),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.blue),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(7)),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Text("야간조도ㅤ",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(54, 77, 236, 1))),
                            Checkbox(
                                value: _isChecked38,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked38 = newValue;
                                    data.write('checked38', _isChecked38);
                                  });
                                }),
                            Text("밝음"),
                            //SizedBox(width: 15),
                            Checkbox(
                                value: _isChecked39,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked39 = newValue;
                                    data.write('checked39', _isChecked39);
                                  });
                                }),
                            Text("중간"),
                            //SizedBox(width: 15),
                            Checkbox(
                                value: _isChecked40,
                                onChanged: (bool? newValue) {
                                  setState(() {
                                    _isChecked40 = newValue;
                                    data.write('checked40', _isChecked40);
                                  });
                                }),
                            Text("어둠"),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),
                      Card(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: TextFormField(
                          maxLines: null,
                          controller: _controller2,
                          decoration: InputDecoration(
                              prefixIcon: Icon(Icons.assignment),
                              hintText: "메모사항",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          onChanged: (value) {
                            setState(() {
                              data.write('text2', _controller2.text);
                            });
                          },
                        ),
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Spacer(),
                  Container(
                    width: 130,
                    height: 45,
                    decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(54, 77, 236, 1)),
                      child: Text(
                        '갤러리 저장',
                      ),
                      onPressed: () {
                        screenshotController
                            .capture(delay: Duration(milliseconds: 10))
                            .then((capturedImage) async {
                          _saved(capturedImage!);
                          //ShowCapturedWidget(context, capturedImage);
                        }).catchError((onError) {
                          print(onError);
                        });
                        flutterToast();
                        // flutterToast();
                      },
                    ),
                  ),
                  Spacer(),
                  Container(
                    width: 130,
                    height: 45,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(54, 77, 236, 1)),
                        onPressed: () {},
                        child: Text("목록에 저장")),
                  ),
                  Spacer()
                ],
              ),
              SizedBox(height: 10),
              Center(
                child: Container(
                  child: AdmobBanner(
                    adUnitId: admobBannerId,
                    adSize: AdmobBannerSize.BANNER,
                    onBannerCreated: (AdmobBannerController controller) {},
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
