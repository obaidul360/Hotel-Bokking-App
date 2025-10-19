import 'package:flutter/material.dart';

import '../screen/home_screen.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 719,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWHuJauTsqS2s8WGLLx_KeE-TNSzel5ckDOw&s",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                bottom: 15,
                left: 0,
                top: 0,
                right: 0,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 5,
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ),
                              );
                            },
                            child: Text(
                              "Get Started",
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                        child: Text(
                          "Already have an account? LogIn",
                          style: TextStyle(
                            fontWeight: FontWeight.w200,
                            fontSize: 17,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
