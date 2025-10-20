import 'package:flutter/material.dart';

import '../Widgets/grid_view_builder.dart';
import '../Widgets/search_box.dart';
import '../Widgets/top_design.dart';
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
          SearchBox(),
          SizedBox(height: 10),
          Container(margin: EdgeInsets.all(8), child: CatagoriseList()),
          SizedBox(height: 8),
           Expanded(child: GridViewBuilderScreen()),

        ],
      ),
    );
  }
}
