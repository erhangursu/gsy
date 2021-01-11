import 'package:flutter/material.dart';

class Page06 extends StatelessWidget {
  const Page06({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.grey, Colors.pink]),
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
        children: [Text('aaa')],
      ),
    );
  }
}
