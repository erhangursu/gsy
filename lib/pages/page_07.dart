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
              fontSize: 22,
            ),
          ),
        ),
        body: Material(
          child: Column(
            children: [
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.deepOrangeAccent,
                      Colors.purple,
                    ],
                    begin: FractionalOffset(1.2, 0.4),
                    end: FractionalOffset(-0.3, 0.8),
                    stops: [0.0, 1.0],
                  ),
                ),
                child: Center(
                  child: CircleAvatar(
                    radius: 50.0,
                    child: Image(
                      image: AssetImage("assets/img/kulaklik2.png"),
                      fit: BoxFit.fill,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ListView(
                  children: [
                    MyPlaylist(
                      baslik: "Barış Manço - Arkadaşım Eşşek",
                      musicLink: "assets/music/arkadasimEssek_BarisManco.mp3",
                      musicTitle: "arkadasimEssek_BarisManco.mp3",
                    ),
                    // Column(
                    //   children: [
                    //     Row(
                    //       children: [
                    //         Text("data"),
                    //       ],
                    //     ),
                    //   ],
                    // )
                  ],
                ),
              )
            ],
          ),
        )
        // ListView(
        //   children: [

        //   ],
        // ),
        );
  }
}
