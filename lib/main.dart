import 'package:ef_dj2_201615087/src/pages/page_main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'EF Flutter DJ2',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Page_Main(),
    );
  }
}