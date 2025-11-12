import 'package:booking_app/Src/screen/check_out_screen.dart';
import 'package:booking_app/Src/screen/order_screen.dart';
import 'package:booking_app/Src/screen/favorite_screen.dart';
import 'package:booking_app/Src/screen/home_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {
  const BottomNavigationBarScreen({super.key});

  @override
  State<BottomNavigationBarScreen> createState() =>
      _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {
  final List<Widget> _screen = [
    HomeScreen(),
    FavoriteScreen(),
    OrderScreen(),
    CheckOutScreen(),

  ];

  late int _screenIndex = 0;

  void _onToggleIndex(int index) {
    setState(() {
      _screenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screen[_screenIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _screenIndex,
        onTap: _onToggleIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined, size: 25),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_outlined, size: 25),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel, size: 25),
            label: "Order",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box_outlined, size: 25),
            label: "CheckOut",
          ),
        ],
      ),
    );
  }
}
