import 'package:flutter/material.dart';
import 'package:on_boarding_task/screens/onBoarding_list_design.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnBoarding(),
      debugShowCheckedModeBanner: false,
    );
  }
}

