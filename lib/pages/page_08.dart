import 'package:flutter/material.dart';
import 'package:gsy/widgets/myBookList.dart';

class Page08 extends StatelessWidget {
  const Page08({Key key}) : super(key: key);

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
            'Sabancı Sesli Kitap',
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
    MyBookList(
      baslik: "Ben Cengizhan",
      kitapImg: "assets/img/ben_cengizhan.jpg",
      kitapLink: "assets/audio/ben_cengizhan.mp3",
      kitapTitle: "ben_cengizhan.mp3",
    ),
    MyBookList(
      baslik: "Ben Dali",
      kitapImg: "assets/img/ben_dali.jpg",
      kitapLink: "assets/audio/ben_dali.mp3",
      kitapTitle: "ben_dali.mp3",
    ),
    MyBookList(
      baslik: "Ben Eserleri Koruyorum",
      kitapImg: "assets/img/ben_eserleri_koruyorum.jpg",
      kitapLink: "assets/audio/ben_eserleri_koruyorum.mp3",
      kitapTitle: "ben_cenben_eserleri_koruyorumgizhan.mp3",
    ),
    MyBookList(
      baslik: "Ben Halı",
      kitapImg: "assets/img/ben_hali.jpg",
      kitapLink: "assets/audio/ben_hali.mp3",
      kitapTitle: "ben_hali.mp3",
    ),
    MyBookList(
      baslik: "Ben Kitap",
      kitapImg: "assets/img/ben_kitap.jpg",
      kitapLink: "assets/audio/ben_kitap.mp3",
      kitapTitle: "ben_kitap.mp3",
    ),
    MyBookList(
      baslik: "Ben Picasso",
      kitapImg: "assets/img/ben_picasso.jpg",
      kitapLink: "assets/audio/ben_picasso.mp3",
      kitapTitle: "ben_picasso.mp3",
    ),
    MyBookList(
      baslik: "Ben Rodin",
      kitapImg: "assets/img/ben_rodin.jpg",
      kitapLink: "assets/audio/ben_rodin.mp3",
      kitapTitle: "ben_rodin.mp3",
    ),
    MyBookList(
      baslik: "Ben Venedik Taciri",
      kitapImg: "assets/img/ben_venedik_taciri.jpg",
      kitapLink: "assets/audio/ben_venedik_taciri.mp3",
      kitapTitle: "ben_venedik_taciri.mp3",
    ),
  ];
}
