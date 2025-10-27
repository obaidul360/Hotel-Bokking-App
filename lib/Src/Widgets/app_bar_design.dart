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
        //width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/obaidul.jpg"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 12,
              ),
              child: Column(
                children: [
                  Text(
                    "Good Morning",
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Text(
                    "Booking Store",
                    style: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Icon(Icons.notifications_none,size: 28,),
                Positioned(
                  top: 2,
                  right: 3,
                  child: Container(
                    height: 10,width: 10,
                    decoration: BoxDecoration(
                      color: Colors.red,borderRadius: BorderRadius.circular(20),
                    ),
                  )
                ),
              ],
            )
            /*CircleAvatar(
              backgroundColor: Colors.white,
              radius: 20,
              child: Stack(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.notifications_none, size: 25),
                  ),
                  Positioned(

                      child: Text("5",style: TextStyle(color: Colors.red),))
                ],
              ),
            ),*/
          ],
        ),
      );
  }
}
