import 'package:flutter/material.dart';

import 'Src/Widgets/on_boarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
    ));
  }
}
