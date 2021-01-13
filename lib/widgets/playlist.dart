import 'package:flutter/material.dart';

Widget myPlayList() {
  // TextStyle listTextStyle =
  //     TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white);
  return Builder(builder: (context) {
    return Container(
      height: 150,
      child: Row(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              image: DecorationImage(
                image: AssetImage("assets/img/cd.png"),
              ),
            ),
          ),
        ],
      ),
    );
  });
}
