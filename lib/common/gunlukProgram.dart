import 'package:flutter/material.dart';

class GunlukProgram extends StatelessWidget {
  final String gun;
  final String ders1;
  final String ders2;
  final String ders3;
  final String ders4;
  final String ders5;
  const GunlukProgram({
    Key key,
    this.gun,
    this.ders1,
    this.ders2,
    this.ders3,
    this.ders4,
    this.ders5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        gun,
        style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
      ),
      children: [
        MyListTile(ders: ders1) ?? '',
        MyListTile(ders: ders2) ?? '',
        MyListTile(ders: ders3) ?? '',
        MyListTile(ders: ders4) ?? '',
        MyListTile(ders: ders5) ?? '',
      ],
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile({
    Key key,
    @required this.ders,
  }) : super(key: key);

  final String ders;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        ders,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
      ),
    );
  }
}
