import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'dart:async';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Shewantedit(), debugShowCheckedModeBanner: false);
  }
}

class Shewantedit extends StatefulWidget {
  @override
  _ShewanteditState createState() => _ShewanteditState();
}

class _ShewanteditState extends State<Shewantedit> {
  int _progress = 10;

  void godown() async {
    print('waiting for next second');

    await Future.delayed(Duration(milliseconds: 300), () {
      _progress--;
    });

    await print('completed, second is $_progress, starting next');

    if (_progress == 1) {
      setState(() {
        _progress = 10;
      });
      godown();
    } else
      godown();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffd1dc),
      body: InkWell(
        onTap: () {
          godown();
        },
        child: Container(
          color: Colors.black,
          width: 50,
          height: 50,
        ),
      ),
    );
  }
}
