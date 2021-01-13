import 'package:flutter/material.dart';

class Page11 extends StatelessWidget {
  const Page11({Key key}) : super(key: key);

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
          'Basit Origamiler',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: ListView(
        children: [Text('Basit Origamiler')],
      ),
    );
  }
}
