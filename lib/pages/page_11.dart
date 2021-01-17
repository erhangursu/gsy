import 'package:flutter/material.dart';
import 'package:gsy/widgets/myVideoList.dart';

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
          'Görsel Sanatlar',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Material(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img/back05.jpg"),
                  //image: AssetImage("assets/img/halkoyun1.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              children: [
                // Opacity(
                //   opacity: 1,
                //   child: Container(
                //     margin: EdgeInsets.only(top: 20, bottom: 15),
                //     height: (MediaQuery.of(context).size.width / 2) * 0.7,
                //     width: MediaQuery.of(context).size.width / 2,
                //     decoration: BoxDecoration(
                //       image: DecorationImage(
                //         image: AssetImage("assets/img/back05.jpg"),
                //         fit: BoxFit.fill,
                //       ),
                //     ),
                //   ),
                // ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        SizedBox(height: 10),
                        MyVideoList(
                          videoBaslik: 'HARİKA SÜSLER - Patterns For Doodling',
                          videoLink: 'KhAuUualzf4',
                          imgLink: "assets/img/gorsel01.jpg",
                          videoInfo: '1 M görüntüleme',
                          videoInfo2: '5 yıl önce ',
                        ),
                        SizedBox(height: 5),
                        MyVideoList(
                          videoBaslik:
                              'ÜÇ BOYUTLU ÇİZİM - Drawing a Round Hole',
                          videoLink: 'TnVv3hO8vE4',
                          imgLink: "assets/img/gorsel02.jpg",
                          videoInfo: '24 M görüntüleme',
                          videoInfo2: '4 yıl önce ',
                        ),
                        SizedBox(height: 5),
                        MyVideoList(
                          videoBaslik: 'ÜÇ BOYUTLU TÜNEL ÇİZİMİ ',
                          videoLink: 'SFuY4FY9TOE',
                          imgLink: "assets/img/gorsel03.jpg",
                          videoInfo: '4.2 M görüntüleme',
                          videoInfo2: '4 yıl önce ',
                        ),
                        SizedBox(height: 5),
                        MyVideoList(
                          videoBaslik: '3D TÜNEL ÇİZİMİ #2 ',
                          videoLink: 'plqW7IKVpyg',
                          imgLink: "assets/img/gorsel04.jpg",
                          videoInfo: '25 K görüntüleme',
                          videoInfo2: '1yıl önce ',
                        ),
                        SizedBox(height: 5),
                        MyVideoList(
                          videoBaslik: '3D ÇİZİM KOLAY / 3 BOYUTLU ÇİZİM ',
                          videoLink: 'ZknXnmtttAU',
                          imgLink: "assets/img/gorsel05.jpg",
                          videoInfo: '2.8 K görüntüleme',
                          videoInfo2: '1 yıl önce ',
                        ),
                        SizedBox(height: 5),
                        MyVideoList(
                          videoBaslik:
                              'Sticker yapımı / sticker nasıl yapılır?',
                          videoLink: '3zYWG0RcFT0',
                          imgLink: "assets/img/gorsel06.jpg",
                          videoInfo: '68 K görüntüleme',
                          videoInfo2: '1 ay önce ',
                        ),
                        SizedBox(height: 5),
                        MyVideoList(
                          videoBaslik:
                              'Origami karga – How To Make Easy Origami Crow ',
                          videoLink: 'PJfCTYLyhaU',
                          imgLink: "assets/img/gorsel07.jpg",
                          videoInfo: '136 K görüntüleme',
                          videoInfo2: '5 yıl önce ',
                        ),
                        SizedBox(height: 5),
                        MyVideoList(
                          videoBaslik: 'Origrami Angry Bird - Easy Tutorial',
                          videoLink: 'x4NsCCAqwaQ',
                          imgLink: "assets/img/gorsel08.jpg",
                          videoInfo: '827 K görüntüleme',
                          videoInfo2: '6 yıl önce ',
                        ),
                        SizedBox(height: 5),
                        MyVideoList(
                          videoBaslik: 'KAĞITTAN KURBAĞA YAPIMI - origami',
                          videoLink: 'LMuBMkoYIrY',
                          imgLink: "assets/img/gorsel09.jpg",
                          videoInfo: '814 K görüntüleme',
                          videoInfo2: '6 yıl önce ',
                        ),
                        SizedBox(height: 5),
                        MyVideoList(
                          videoBaslik: 'Kağıttan Kaktüs Yapımı - origami',
                          videoLink: 'cA9MRO4nb58',
                          imgLink: "assets/img/gorsel10.jpg",
                          videoInfo: '6 K görüntüleme',
                          videoInfo2: '2 yıl önce ',
                        ),
                        SizedBox(height: 5),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
