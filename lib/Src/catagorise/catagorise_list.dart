import 'package:flutter/material.dart';

class CatagoriseList extends StatefulWidget {
  const CatagoriseList({super.key});

  @override
  State<CatagoriseList> createState() => _CatagoriseListState();
}

class _CatagoriseListState extends State<CatagoriseList> {
  bool isSelected = false;
  bool isFav = false;
  bool isChange = false;
  bool isColorChange = false;
  bool selectedIndex = false;


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        spacing: 5,
        children: [
          Container(
            decoration: BoxDecoration(
              color: isSelected ? Colors.black : Colors.white,
              borderRadius: BorderRadius.circular(30)
            ),
            child: TextButton.icon(
              onPressed: () {
                setState(() {
                  isSelected = !isSelected;
                });
              },
              icon: Icon(
                Icons.warehouse_outlined,
                size: 20,
                color: isSelected ? Colors.white : Colors.black,
              ),
              label: Text(
                "Hotel(12)",
                style: TextStyle(
                  fontSize: 18,
                  color: isSelected ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: isFav ? Colors.black : Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextButton.icon(
              onPressed: () {
                setState(() {
                  isFav = !isFav;
                });
              },
              icon: Icon(
                Icons.restaurant,
                size: 20,
                color: isFav ? Colors.white : Colors.black,
              ),
              label: Text(
                "Resturent(13)",
                style: TextStyle(
                  fontSize: 18,
                  color: isFav ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: isChange ? Colors.black : Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextButton.icon(
              onPressed: () {
                setState(() {
                  isChange = !isChange;
                });
              },
              icon: Icon(
                Icons.bedroom_parent_sharp,
                size: 20,
                color: isChange ? Colors.white : Colors.black,
              ),
              label: Text(
                "Parking(5)",
                style: TextStyle(
                  fontSize: 18,
                  color: isChange ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: selectedIndex ? Colors.black : Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextButton.icon(
              onPressed: () {
                setState(() {
                  selectedIndex = !selectedIndex;
                });
              },
              icon: Icon(
                Icons.coffee,
                size: 20,
                color: selectedIndex ? Colors.white : Colors.black,
              ),
              label: Text(
                "Cofe Shop",
                style: TextStyle(
                  fontSize: 18,
                  color: selectedIndex ? Colors.white : Colors.black,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
