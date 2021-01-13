import 'package:flutter/material.dart';

class Page08 extends StatelessWidget {
  const Page08({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.pinkAccent, Colors.blueGrey],
            ),
          ),
        ),
        title: Text(
          'Sabancı Sesli Kitaplar',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: ListView(
        children: [Text('Sabancı Sesli Kitaplar')],
      ),
    );
  }
}
