import 'package:flutter/material.dart';

Widget altmenu() {
  return //alt menu
      Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -3), color: Colors.black.withOpacity(0.20))
        ],
        color: Color(0xFFEFF5FB),
      ),
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.home_filled,
            size: 23,
            color: Color(0xFFcd853f),
          ),
          Icon(
            Icons.search,
            size: 23,
            color: Color(0xFFcd853f),
          ),
          Icon(
            Icons.shopping_basket,
            size: 23,
            color: Color(0xFFcd853f),
          ),
          Icon(
            Icons.person,
            size: 23,
            color: Color(0xFFcd853f),
          ),
        ],
      ),
    ),
  );
}
