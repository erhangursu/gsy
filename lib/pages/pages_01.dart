import 'package:flutter/material.dart';

class Page01 extends StatelessWidget {
  final String baslik;
  const Page01({Key key, this.baslik}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.red, Colors.blue]),
            ),
          ),
          title: Text(
            baslik,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
        ),
        body: Container(
          child: Text('aaa'),
        ));
  }
}
