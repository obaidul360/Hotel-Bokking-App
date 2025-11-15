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
                          )
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
