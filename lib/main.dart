import 'package:flutter/material.dart';
import 'package:ui_test_1/pages/page_one.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageOne(),
    );
  }
}
