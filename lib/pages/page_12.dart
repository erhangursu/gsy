import 'package:flutter/material.dart';
import 'package:gsy/widgets/myBookList.dart';

class Page12 extends StatelessWidget {
  const Page12({Key key}) : super(key: key);

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
          'Sabancı Sesli Kitap',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: Material(
        child: Column(
          children: [
            Opacity(
              opacity: 0.9,
              child: Container(
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
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  MyBookList(
                    baslik: "Minik Ayı Yavrusu",
                    kitapImg: "assets/img/adile.jpg",
                    kitapLink: "assets/adile/minik_ayi_yavrusu.mp3",
                    kitapTitle: "minik_ayi_yavrusu.mp3",
                  ),
                  MyBookList(
                    baslik: "Tembel Çocuğun Eşeğ",
                    kitapImg: "assets/img/adile.jpg",
                    kitapLink: "assets/adile/tembel_cocugun_esegi.mp3",
                    kitapTitle: "tembel_cocugun_esegi.mp3",
                  ),
                  MyBookList(
                    baslik: "Değirmencinin Oğlu",
                    kitapImg: "assets/img/adile.jpg",
                    kitapLink: "assets/adile/degirmencinin_oglu.mp3",
                    kitapTitle: "degirmencinin_oglu.mp3",
                  ),
                  MyBookList(
                    baslik: "Mi'nin Çok Bilmişliği",
                    kitapImg: "assets/img/adile.jpg",
                    kitapLink: "assets/adile/minin_cokbilmisliği.mp3",
                    kitapTitle: "minin_cokbilmisliği.mp3",
                  ),
                  MyBookList(
                    baslik: "Hasta Fok Balığı",
                    kitapImg: "assets/img/adile.jpg",
                    kitapLink: "assets/adile/hasta_fok_baligi.mp3",
                    kitapTitle: "hasta_fok_baligi.mp3",
                  ),
                  MyBookList(
                    baslik: "Kuşlar Ne Zaman Öter",
                    kitapImg: "assets/img/adile.jpg",
                    kitapLink: "assets/adile/kuslar_nezaman_oter.mp3",
                    kitapTitle: "kuslar_nezaman_oter.mp3",
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
