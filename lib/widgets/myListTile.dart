import 'package:flutter/material.dart';
import 'package:gsy/common/sayfaAc.dart';

Widget myListTile(int position, String yazi, String img) {
  TextStyle listTextStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white);
  return Builder(builder: (context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(img),
        foregroundColor: Colors.transparent,
      ),
      trailing: Icon(
        Icons.keyboard_arrow_right,
        size: 30,
        color: Colors.white,
      ),
      title: Text(yazi, style: listTextStyle),
      onTap: () {
        sayfaAc(position, context);
      },
    );
  });
}
