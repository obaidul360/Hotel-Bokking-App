import 'package:flutter/material.dart';

import '../catagorise/top_design.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEDEC),
      body: Column(
        children: [
          AppBarDesign(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Nearest Hottle(12)",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            spacing: 5,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 8, vertical: 1),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.white38, width: 1.5),
                  borderRadius: BorderRadius.circular(6),
                ),
                height: 50,
                width: 280,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.search, size: 35, color: Colors.black),
                      Text(
                        "Dhaka, Bangladesh",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.my_location_outlined,
                        size: 35,
                        color: Colors.black,
                      ),
                    ],
                  ),
                ),
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: Colors.white,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.tune, size: 35),
                ),
              ),
              SizedBox(width: 4),
            ],
          ),
        ],
      ),
    );
  }
}
