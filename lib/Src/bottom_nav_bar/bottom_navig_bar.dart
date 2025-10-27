import 'package:booking_app/Src/screen/add_to_card.dart';
import 'package:booking_app/Src/screen/check_out.dart';
import 'package:booking_app/Src/screen/favorite.dart';
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
    SalonHomeScreen(),
    FavoriteScreen(),
    AddToCardScreen(),

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
            icon: Icon(Icons.assignment, size: 25),
            label: "Assignment2",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_travel, size: 25),
            label: "Chooice",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.check_box_outlined, size: 25),
            label: "Check",
          ),
        ],
      ),
    );
  }
}
