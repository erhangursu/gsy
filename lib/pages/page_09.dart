import 'package:flutter/material.dart';
import 'package:gsy/widgets/myVideoList.dart';

class Page09 extends StatelessWidget {
  const Page09({Key key}) : super(key: key);

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
          'Halk Oyunları',
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
                  image: AssetImage("assets/img/back04.jpg"),
                  //image: AssetImage("assets/img/halkoyun1.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              children: [
                Opacity(
                  opacity: 0.8,
                  child: Container(
                    height: (MediaQuery.of(context).size.width / 2) * 0.7,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/img/halk_oyunu.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      MyVideoList(
                        videoBaslik: 'Çayda Çıra',
                        videoLink: 'K7ujKT1DI-U',
                        imgLink: "assets/img/halk01.jpg",
                        videoInfo: '82 B görüntüleme',
                        videoInfo2: '7 yıl önce ',
                      ),
                      MyVideoList(
                        videoBaslik: 'Atatürk Zeybek',
                        videoLink: '3UgrawJMRjY',
                        imgLink: "assets/img/halk02.jpg",
                        videoInfo: '312 B görüntüleme',
                        videoInfo2: '1 yıl önce ',
                      ),
                      MyVideoList(
                        videoBaslik: 'Kafkas Oyunu',
                        videoLink: 'wq4gi2JZuWA',
                        imgLink: "assets/img/halk03.jpg",
                        videoInfo: '13 B görüntüleme',
                        videoInfo2: '2 yıl önce ',
                      ),
                      MyVideoList(
                        videoBaslik: 'Harman Dalı (Erkek)',
                        videoLink: 'lloGsYCI7yA',
                        imgLink: "assets/img/halk04.jpg",
                        videoInfo: '1 M görüntüleme',
                        videoInfo2: '3 yıl önce ',
                      ),
                      MyVideoList(
                        videoBaslik: 'Harman Dalı (Kadın)',
                        videoLink: 'aRXEoWxTX9A',
                        imgLink: "assets/img/halk05.jpg",
                        videoInfo: '11 B görüntüleme',
                        videoInfo2: '1 yıl önce ',
                      ),
                      MyVideoList(
                        videoBaslik: 'Diyarbakır Halayı',
                        videoLink: 'zvuW_3VWzig',
                        imgLink: "assets/img/halk06.jpg",
                        videoInfo: '792 B görüntüleme',
                        videoInfo2: '2 yıl önce ',
                      ),
                      MyVideoList(
                        videoBaslik: 'Horon',
                        videoLink: '8L2m0xCeHRI',
                        imgLink: "assets/img/halk07.jpg",
                        videoInfo: '845 B görüntüleme',
                        videoInfo2: '3 yıl önce ',
                      ),
                    ],
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
