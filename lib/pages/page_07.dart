import 'package:flutter/material.dart';
import 'package:gsy/widgets/myPlayList.dart';

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
              child: ListView(
                shrinkWrap: true,
                children: [
                  MyPlayList(
                    baslik: "Arkadaşım Eşşek",
                    musicLink: "assets/music/arkadasimEssek_BarisManco.mp3",
                    musicTitle: "arkadasimEssek_BarisManco.mp3",
                  ),
                  MyPlayList(
                    baslik: "Atabari",
                    musicLink: "assets/music/atabari.mp3",
                    musicTitle: "atabari.mp3",
                  ),
                  MyPlayList(
                    baslik: "Biricik Öğretmenim",
                    musicLink: "assets/music/biricikOgretmenim.mp3",
                    musicTitle: "biricikOgretmenim.mp3",
                  ),
                  MyPlayList(
                    baslik: "Bulut Olsam",
                    musicLink: "assets/music/bulutOlsam.mp3",
                    musicTitle: "bulutOlsam.mp3",
                  ),
                  MyPlayList(
                    baslik: "Canım Atatürk",
                    musicLink: "assets/music/canimAtaturk.mp3",
                    musicTitle: "canimAtaturk.mp3",
                  ),
                  MyPlayList(
                    baslik: "Cilveloy Nanayda",
                    musicLink: "assets/music/cilveloyNanayda.mp3",
                    musicTitle: "cilveloyNanayda.mp3",
                  ),
                  MyPlayList(
                    baslik: "Cumhuriyet",
                    musicLink: "assets/music/cumhuriyet.mp3",
                    musicTitle: "cumhuriyet.mp3",
                  ),
                  MyPlayList(
                    baslik: "Delilo",
                    musicLink: "assets/music/delilo.mp3",
                    musicTitle: "delilo.mp3",
                  ),
                  MyPlayList(
                    baslik: "Halay",
                    musicLink: "assets/music/halay2.mp3",
                    musicTitle: "halay2.mp3",
                  ),
                  MyPlayList(
                    baslik: "Kış Baba",
                    musicLink: "assets/music/kisBaba.mp3",
                    musicTitle: "kisBaba.mp3",
                  ),
                  MyPlayList(
                    baslik: "Köçekçe",
                    musicLink: "assets/music/kocekce.mp3",
                    musicTitle: "kocekce.mp3",
                  ),
                  MyPlayList(
                    baslik: "Kümesteki Dostlarımız",
                    musicLink: "assets/music/kumestekiDostlarimiz.mp3",
                    musicTitle: "kumestekiDostlarimiz.mp3",
                  ),
                  MyPlayList(
                    baslik: "Sevimli Tırtıl",
                    musicLink: "assets/music/minikSerce_sevimliTirtil.mp3",
                    musicTitle: "minikSerce_sevimliTirtil.mp3",
                  ),
                  MyPlayList(
                    baslik: "Mutluluğu Yakala",
                    musicLink: "assets/music/mutluluguYakala.mp3",
                    musicTitle: "mutluluguYakala.mp3",
                  ),
                  MyPlayList(
                    baslik: "Orman",
                    musicLink: "assets/music/orman.mp3",
                    musicTitle: "orman.mp3",
                  ),
                  MyPlayList(
                    baslik: "Şarkı Söylerim",
                    musicLink: "assets/music/sarkiSoylerim.mp3",
                    musicTitle: "sarkiSoylerim.mp3",
                  ),
                  MyPlayList(
                    baslik: "Üç elma",
                    musicLink: "assets/music/ucElma.mp3",
                    musicTitle: "ucElma.mp3",
                  ),
                  MyPlayList(
                    baslik: "Üsküdara Giderken",
                    musicLink: "assets/music/uskudaraGiderken.mp3",
                    musicTitle: "uskudaraGiderken.mp3",
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
