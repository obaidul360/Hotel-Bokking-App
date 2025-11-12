import 'package:flutter/material.dart';

import '../Widgets/grid_view_builder.dart';
import '../Widgets/search_box.dart';
import '../Widgets/app_bar_design.dart';
import '../catagorise/catagorise_list.dart';

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
          SearchBox(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Catagorise",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Catagorise
          Container(margin: EdgeInsets.symmetric(horizontal: 8,vertical: 2), child: CatagoriseList()),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Available",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "See all",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
           // Available
           Expanded(
             child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 2),
               child: GridViewBuilderScreen(),
             ),
           ),

        ],
      ),
    );
  }
}
