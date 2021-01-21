import 'package:flutter/material.dart';
import 'package:gsy/widgets/myPlayList.dart';

class Page07 extends StatelessWidget {
  const Page07({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 150,
          elevation: 50,
          floating: true,
          pinned: false,
          shadowColor: Colors.pink,
          title: Text(
            'Müzik Kitabındaki Şarkılar',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          flexibleSpace: Container(
            child: Padding(
              padding: EdgeInsets.only(top: 70, bottom: 10),
              child: CircleAvatar(
                radius: 50.0,
                child: Image(
                  image: AssetImage("assets/img/kulaklik2.png"),
                  fit: BoxFit.fill,
                  color: Colors.white,
                ),
              ),
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.pinkAccent, Colors.blueGrey],
              ),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(myList()),
        ),
      ],
    );
  }
}

List<Widget> myList() {
  return [
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
  ];
}
