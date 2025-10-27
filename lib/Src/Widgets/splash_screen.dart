import 'package:flutter/material.dart';

import 'on_boarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashScreenFuntion()async{
    await Future.delayed(Duration(seconds: 3));
    setState(() {
      SplashScreenFuntion();
    });
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>OnBoarding()));
  }
  @override
  void initState() {
    setState(() {
      SplashScreenFuntion();
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Image(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              image: NetworkImage(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkJuhs3xtJ0V94n2PYF04yJ7JqFJ3Co7odWQ&s",
              ),
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}
