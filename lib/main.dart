import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            backgroundColor: Color.fromARGB(255, 7, 255, 234),
            title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                "images/xylophone.png",
                scale: 15,
              ),
              SizedBox(width: 13),
              Text(
                "Xylophone Game",
                style: TextStyle(fontSize: 27, fontFamily: "Pacifico"),
              ),
            ]),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Bar(
                  barColor: Color.fromARGB(255, 46, 253, 53),
                  barName: "D",
                  noteNumber: 1),
              Bar(
                barColor: Color.fromARGB(255, 253, 227, 0),
                barName: "E",
                noteNumber: 2,
              ),
              Bar(
                barColor: Color.fromARGB(255, 255, 128, 0),
                barName: "F",
                noteNumber: 3,
              ),
              Bar(
                barColor: Color.fromARGB(255, 245, 16, 0),
                barName: "G",
                noteNumber: 4,
              ),
              Bar(
                barColor: Color.fromARGB(255, 232, 42, 102),
                barName: "A",
                noteNumber: 5,
              ),
              Bar(
                barColor: Colors.white,
                barName: "B",
                noteNumber: 6,
              ),
              Bar(
                barColor: Color.fromARGB(255, 2, 6, 242),
                barName: "C",
                noteNumber: 7,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Bar extends StatelessWidget {
  Bar({this.barColor, this.barName, this.noteNumber});

  playNote(int noteNumber) {
    AudioCache().play("note$noteNumber.wav");
  }

  Color? barColor;
  String? barName;
  int? noteNumber;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 93,
      child: MaterialButton(
        child: Text(
          barName.toString(),
          style: TextStyle(fontSize: 30, color: Colors.grey),
        ),
        color: barColor,
        onPressed: () {
          playNote(noteNumber!);
        },
      ),
    );
  }
}
