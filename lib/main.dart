import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const BallApp());
}

class BallApp extends StatelessWidget {
  const BallApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page1(),
    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int num = 1;
  var ChangeImage = 'assets/ball1.png';
  void change(){
    setState(() {
      int num = Random().nextInt(5)+1;
      ChangeImage = 'assets/ball$num.png';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text('MagicBallApp'),
      ),
      body:  Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: TextField(
                  cursorColor: Colors.white,

                  decoration: InputDecoration(
                    hintText: "Enter your Question",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(24),


                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 65,
                width: 100,
              ),
              Image.asset(ChangeImage),
              GestureDetector(
                onTap: change,
                child: Container(
                  height: 50,
                  width: 100,
                  color: Colors.red,
                  child: Center(child: Text('Ask')),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
