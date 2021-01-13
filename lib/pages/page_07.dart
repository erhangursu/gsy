import 'package:flutter/material.dart';
import 'package:gsy/widgets/playlist.dart';

class Page07 extends StatelessWidget {
  const Page07({Key key}) : super(key: key);

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
          'Müzik Kitabındaki Şarkılar',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.purpleAccent, Colors.redAccent]),
                ),
              ),
              Center(
                heightFactor: 1.2,
                child: Container(
                  padding: EdgeInsets.only(top: 15),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.pink,
                  ),
                ),
              ),
              Center(
                heightFactor: 1.5,
                child: Container(
                  height: 75,
                  width: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage("assets/img/kulaklik2.png"),
                    ),
                  ),
                ),
              )
            ],
          ),
          Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.blue.withOpacity(0.4), BlendMode.dstATop),
                    image: AssetImage("assets/img/back03.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              // ListView(
              //   children: [
              //     Container(
              //       height: 300,
              //       child: myPlayList(),
              //     ),
              //   ],
              // ),
            ],
          )
        ],
      ),
    );
  }
}
