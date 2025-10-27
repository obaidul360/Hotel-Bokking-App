import 'package:flutter/material.dart';

import 'Src/Widgets/on_boarding.dart';
import 'Src/Widgets/splash_screen.dart';
import 'Src/form/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),//OnBoarding(),
    ));
  }
}
