import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<DicePage> {
  int leftKubik = 1;
  int righKubik = 6;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 159, 98, 5),
      appBar: AppBar(
        title: const Text(
          'ТАПШЫРМА 05',
          style: TextStyle(
              color: Color.fromARGB(179, 23, 22, 22),
              fontWeight: FontWeight.w800),
        ),
        backgroundColor: const Color.fromARGB(255, 159, 98, 5),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              leftKubik = Random().nextInt(7);
              righKubik = Random().nextInt(7);
            });
          },
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/dice${leftKubik == 0 ? leftKubik = 1 : leftKubik}.png',
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    'assets/dice${righKubik == 0 ? righKubik = 1 : righKubik}.png',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
