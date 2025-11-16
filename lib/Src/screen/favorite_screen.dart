import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("First Favorite Screen"),),
      body: Column(
        children: [
          Text("data"),
          SizedBox(
            height: 300,
            child:ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context,index){
                  return Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 180,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/images.jpeg"))
                            ),
                          ),
                          Container(
                            height: 35,
                            width: 100,
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black,width: 1),
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFDDDBDA).withOpacity(0.3), // ছায়ার রং
                                  spreadRadius: 2, // ছায়া ছড়ানো
                                  blurRadius: 8,   // ছায়ার ব্লার
                                  offset: Offset(0, 4), // ছায়া কোন দিকে যাবে (X, Y)
                                ),
                              ],
                            ),
                            child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "Add to Cart",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                ),
                              ),
                            ),

                          ),
                        ],
                      )

                    ],
                  );
                }),
          )
        ],
      ),
    );
  }
}
