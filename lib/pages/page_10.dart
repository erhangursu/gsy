import 'package:flutter/material.dart';
import 'package:gsy/widgets/myVideoList.dart';

class Page10 extends StatelessWidget {
  const Page10({Key key}) : super(key: key);

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
          'Zumba',
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
                  image: AssetImage("assets/img/zumba.jpg"),
                  //image: AssetImage("assets/img/halkoyun1.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              children: [
                Opacity(
                  opacity: 1,
                  child: Container(
                    margin: EdgeInsets.only(top: 25, bottom: 15),
                    height: (MediaQuery.of(context).size.width / 2) * 0.5,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/img/zumba2.jpg"),
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
                        videoBaslik: 'Zumba Kids - I like to move it',
                        videoLink: 'ymigWt5TOV8',
                        imgLink: "assets/img/zumba01.jpg",
                        videoInfo: '61 M görüntüleme',
                        videoInfo2: '3 yıl önce ',
                      ),
                      MyVideoList(
                        videoBaslik: 'Zumba Kids - Electronic Song',
                        videoLink: 'FP0wgVhUC9w',
                        imgLink: "assets/img/zumba02.jpg",
                        videoInfo: '125 M görüntüleme',
                        videoInfo2: '2 yıl önce ',
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
