import 'package:flutter/material.dart';

class Page09 extends StatelessWidget {
  const Page09({Key key}) : super(key: key);

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
          'Halk Oyunları',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: ListView(
        children: [Text('Halk Oyunları')],
      ),
    );
  }
}
