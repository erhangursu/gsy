import 'package:flutter/material.dart';
import 'package:gsy/widgets/myPlayList.dart';

class Page07 extends StatelessWidget {
  const Page07({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
        body: Column(
          children: [
            Container(
              height: 120,
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
                  radius: 40.0,
                  child: Image(
                    image: AssetImage("assets/img/kulaklik2.png"),
                    fit: BoxFit.fill,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ListView(
                padding:
                    EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
                shrinkWrap: true,
                children: [
                  MyPlayList(
                    musicLink: "assets/music/arkadasimEssek_BarisManco.mp3",
                    musicTitle: "Arkadaşım Eşşek",
                    musicImg: "assets/img/musicPlayer.gif",
                  ),
                  MyPlayList(
                    musicLink: "assets/music/biricikOgretmenim.mp3",
                    musicTitle: "Biricik Öğretmenim",
                    musicImg: "assets/img/musicPlayer.gif",
                  ),
                  MyPlayList(
                    musicLink: "assets/music/bulutOlsam.mp3",
                    musicTitle: "Bulut Olsam",
                    musicImg: "assets/img/musicPlayer.gif",
                  ),
                  MyPlayList(
                    musicLink: "assets/music/canimAtaturk.mp3",
                    musicTitle: "Canım Atatürk",
                    musicImg: "assets/img/musicPlayer.gif",
                  ),
                  MyPlayList(
                    musicLink: "assets/music/cilveloyNanayda.mp3",
                    musicTitle: "Cilveloy Nanayda",
                    musicImg: "assets/img/musicPlayer.gif",
                  ),
                  MyPlayList(
                    musicLink: "assets/music/cumhuriyet.mp3",
                    musicTitle: "Cumhuriyet",
                    musicImg: "assets/img/musicPlayer.gif",
                  ),
                  MyPlayList(
                    musicLink: "assets/music/delilo.mp3",
                    musicTitle: "Delilo",
                    musicImg: "assets/img/musicPlayer.gif",
                  ),
                  MyPlayList(
                    musicLink: "assets/music/halay2.mp3",
                    musicTitle: "Halay",
                    musicImg: "assets/img/musicPlayer.gif",
                  ),
                  MyPlayList(
                    musicLink: "assets/music/kisBaba.mp3",
                    musicTitle: "Kış Baba",
                    musicImg: "assets/img/musicPlayer.gif",
                  ),
                  MyPlayList(
                    musicLink: "assets/music/kocekce.mp3",
                    musicTitle: "Köçekçe",
                    musicImg: "assets/img/musicPlayer.gif",
                  ),
                  MyPlayList(
                    musicLink: "assets/music/kumestekiDostlarimiz.mp3",
                    musicTitle: "Kümesteki Dostlarımız",
                    musicImg: "assets/img/musicPlayer.gif",
                  ),
                  MyPlayList(
                    musicLink: "assets/music/minikSerce_sevimliTirtil.mp3",
                    musicTitle: "Sevimli Tırtıl",
                    musicImg: "assets/img/musicPlayer.gif",
                  ),
                  MyPlayList(
                    musicLink: "assets/music/mutluluguYakala.mp3",
                    musicTitle: "Arkadaşım Eşşek",
                    musicImg: "assets/img/musicPlayer.gif",
                  ),
                  MyPlayList(
                    musicLink: "assets/music/orman.mp3",
                    musicTitle: "Orman",
                    musicImg: "assets/img/musicPlayer.gif",
                  ),
                  MyPlayList(
                    musicLink: "assets/music/sarkiSoylerim.mp3",
                    musicTitle: "Arkadaşım Eşşek",
                    musicImg: "assets/img/musicPlayer.gif",
                  ),
                  MyPlayList(
                    musicLink: "assets/music/ucElma.mp3",
                    musicTitle: "Üç elma",
                    musicImg: "assets/img/musicPlayer.gif",
                  ),
                  MyPlayList(
                    musicLink: "assets/music/uskudaraGiderken.mp3",
                    musicTitle: "Üsküdara Giderken",
                    musicImg: "assets/img/musicPlayer.gif",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
