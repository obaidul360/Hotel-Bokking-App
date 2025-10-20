import 'package:flutter/material.dart';

class AppBarDesign extends StatefulWidget {
  const AppBarDesign({super.key});

  @override
  State<AppBarDesign> createState() => _AppBarDesignState();
}

class _AppBarDesignState extends State<AppBarDesign> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
        height: 68,
        width: double.infinity,
        child: Row(
          children: [
            CircleAvatar(
              radius: 28,
              backgroundImage: AssetImage("assets/obaidul.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 5,
                horizontal: 6,
              ),
              child: Column(
                children: [
                  Text(
                    "Good Morning",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Text(
                    "Brooklyn simmons",
                    style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(width: 65,),
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 35,
              child: IconButton(
                onPressed: () {},
                icon: Icon(Icons.notification_add, size: 28),
              ),
            ),
          ],
        ),
      );
  }
}
