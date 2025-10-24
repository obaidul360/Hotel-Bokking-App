import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class GridViewBuilderScreen extends StatefulWidget {
  const GridViewBuilderScreen({super.key});

  @override
  State<GridViewBuilderScreen> createState() => _GridViewBuilderScreenState();
}

class _GridViewBuilderScreenState extends State<GridViewBuilderScreen> {
  List<Map> hotel = [
    {
      "id": 1,
      "name": "Sea View Paradise Hotel",
      "location": "Cox's Bazar, Bangladesh",
      "rating": 4.8,
      "price_per_night": 5200,
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbl26sFS_XBKPeDKUPqVMXRWXsIjCkIIL_RQ&s",
      "available_rooms": 12,
    },
    {
      "id": 2,
      "name": "Royal City Grand",
      "location": "Dhaka, Bangladesh",
      "rating": 4.5,
      "price_per_night": 6800,
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEiMVqAvkT_bA4I3vXOBODHPfPs-Zf1F33Hg&s",
      "available_rooms": 8,
    },
    {
      "id": 3,
      "name": "Hill Top Resort",
      "location": "Bandarban, Bangladesh",
      "rating": 4.7,
      "price_per_night": 4500,
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTf-lAcs3gDZM4IroF5eTnaeaZXYehpl9Gsbg&s",
      "available_rooms": 6,
    },
    {
      "id": 4,
      "name": "Lake View Residence",
      "location": "Rangamati, Bangladesh",
      "rating": 4.6,
      "price_per_night": 3900,
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQktK99FYaTyVm1XQ9RvOBnNBvbnKeZ81fveA&s",
      "available_rooms": 9,
    },
    {
      "id": 5,
      "name": "Green Leaf Eco Hotel",
      "location": "Sylhet, Bangladesh",
      "rating": 4.9,
      "price_per_night": 5700,
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSSlVs74XWnwZx1sp3RFBKbkqx1RcygJb66AQ&s",
      "available_rooms": 10,
    },
    {
      "id": 6,
      "name": "Sea View Paradise Hotel",
      "location": "Cox's Bazar, Bangladesh",
      "rating": 4.8,
      "price_per_night": 5200,
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbl26sFS_XBKPeDKUPqVMXRWXsIjCkIIL_RQ&s",
      "available_rooms": 12,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: hotel.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        childAspectRatio: .7,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          child: Card(
            elevation: 5,
            color: Color(0xFFEEEDEC),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  image: NetworkImage("${hotel[index]["image"]}"),
                  height: 100,
                ),
                Text("${hotel[index]["name"]}"),
                Text(
                  "Location: ${hotel[index]["location"]}",
                  style: TextStyle(overflow: TextOverflow.ellipsis),
                ),
                Text("Price: \$${hotel[index]["price_per_night"]}"),
                Row(
                  children: [
                    Icon(Icons.star_border, color: Colors.orange, size: 18),
                    Icon(Icons.star_border, color: Colors.orange, size: 18),
                    Icon(Icons.star_border, color: Colors.orange, size: 18),
                    Text("${hotel[index]["rating"]}"),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.favorite_border, size: 32),
                    ),
                    ElevatedButton(onPressed: () {}, child: Text("Booking")),
                    SizedBox(width: 5),
                  ],
                ),

                Text(
                  "Sign Up with Google",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontSize: 22,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
