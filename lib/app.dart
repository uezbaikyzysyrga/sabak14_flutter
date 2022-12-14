import 'package:flutter/material.dart';

import 'dicepage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ТАПШЫРМА 04',
      theme: ThemeData(),
      home: const DicePage(),
    );
  }
}
