import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  playNote(int noteNumber) {
    AudioCache().play("note$noteNumber.wav");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // drawer: Drawer(),
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
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 93,
              child: RaisedButton(
                splashColor: Color.fromARGB(255, 122, 235, 124),
                child: Text(
                  "D",
                  style: TextStyle(
                      fontSize: 30, color: Color.fromARGB(255, 56, 174, 62)),
                ),
                color: Color.fromARGB(255, 46, 253, 53),
                onPressed: () {
                  playNote(1);
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 93,
              child: RaisedButton(
                splashColor: Color.fromARGB(255, 255, 238, 89),
                child: Text(
                  "E",
                  style: TextStyle(
                      fontSize: 30, color: Color.fromARGB(255, 202, 149, 4)),
                ),
                color: Color.fromARGB(255, 255, 234, 0),
                onPressed: () {
                  playNote(2);
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 93,
              child: RaisedButton(
                splashColor: Colors.orange,
                child: Text(
                  "F",
                  style: TextStyle(
                      fontSize: 30, color: Color.fromARGB(255, 239, 83, 27)),
                ),
                color: Color.fromARGB(255, 255, 128, 0),
                onPressed: () {
                  playNote(3);
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 93,
              child: RaisedButton(
                splashColor: Colors.red,
                child: Text(
                  "G",
                  style: TextStyle(
                      fontSize: 30, color: Color.fromARGB(255, 172, 3, 3)),
                ),
                color: Color.fromARGB(255, 245, 16, 0),
                onPressed: () {
                  playNote(4);
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 93,
              child: RaisedButton(
                splashColor: Color.fromARGB(255, 227, 131, 163),
                child: Text(
                  "A",
                  style: TextStyle(
                      fontSize: 30, color: Color.fromARGB(255, 150, 5, 73)),
                ),
                color: Color.fromARGB(255, 232, 42, 102),
                onPressed: () {
                  playNote(5);
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 91,
              child: RaisedButton(
                splashColor: Colors.purple,
                child: Text(
                  "B",
                  style: TextStyle(
                      fontSize: 30, color: Color.fromARGB(255, 201, 206, 210)),
                ),
                color: Colors.white,
                onPressed: () {
                  playNote(6);
                },
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 91,
              child: RaisedButton(
                splashColor: Colors.blueAccent,
                child: Text(
                  "C",
                  style: TextStyle(
                      fontSize: 30, color: Color.fromARGB(255, 0, 30, 55)),
                ),
                color: Color.fromARGB(255, 2, 6, 242),
                onPressed: () {
                  playNote(7);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
