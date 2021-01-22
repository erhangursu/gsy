import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:gsy/widgets/myVideoList.dart';

class Page13 extends StatelessWidget {
  const Page13({Key key}) : super(key: key);

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
          'Çocuk Tiyatrosu',
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
                  image: AssetImage("assets/img/back01.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        SizedBox(height: 10),
                        MyVideoList(
                          videoBaslik:
                              'Eti Çocuk Tiyatrosu - Kırmızı Başlıklı Kız',
                          videoLink: 'TNzhT6PyEZQ',
                          imgLink: "assets/img/tiyatro01.jpg",
                          videoInfo: '143 K görüntüleme',
                          videoInfo2: '1 yıl önce ',
                        ),
                        MyVideoList(
                          videoBaslik:
                              'Pamuk Prenses ve Yedi Cüceler | İş Sanat Masal Tiyatrosu',
                          videoLink: 'on9bSt9AaEc',
                          imgLink: "assets/img/tiyatro08.jpg",
                          videoInfo: '211 K görüntüleme',
                          videoInfo2: '1 yıl önce ',
                        ),
                        MyVideoList(
                          videoBaslik:
                              'Hansel ve Gretel | İş Sanat Masal Tiyatrosu',
                          videoLink: 'TMnCMSYc2H8',
                          imgLink: "assets/img/tiyatro09.jpg",
                          videoInfo: '268 K görüntüleme',
                          videoInfo2: '1 yıl önce ',
                        ),
                        MyVideoList(
                          videoBaslik: 'Çocuk Masalları Tilki ile Leylek',
                          videoLink: 'k2dFpN_vF_o',
                          imgLink: "assets/img/tiyatro10.jpg",
                          videoInfo: '3.2 M görüntüleme',
                          videoInfo2: '3 yıl önce ',
                        ),
                        MyVideoList(
                          videoBaslik: 'MASALCI DEDE Çocuk Tiyatrosu',
                          videoLink: 'lXMrsWX3fFs',
                          imgLink: "assets/img/tiyatro02.jpg",
                          videoInfo: '154 K görüntüleme',
                          videoInfo2: '6 yıl önce ',
                        ),
                        MyVideoList(
                          videoBaslik: 'Hacivat Karagöz ile Kahkaha Tufanı',
                          videoLink: 'HWik47HRp_g',
                          imgLink: "assets/img/tiyatro03.jpg",
                          videoInfo: '2.7 M görüntüleme',
                          videoInfo2: '5 yıl önce ',
                        ),
                        MyVideoList(
                          videoBaslik:
                              'Karagözün Kopyası - Hacivat ile Karagöz | Renk Çocuk',
                          videoLink: '6Q_78t7z0rg',
                          imgLink: "assets/img/tiyatro04.jpg",
                          videoInfo: '1.2 M görüntüleme',
                          videoInfo2: '3 yıl önce ',
                        ),
                        MyVideoList(
                          videoBaslik: 'TRT ÇOCUK / KUKLA TİYATROSU',
                          videoLink: 'A8gGH1ZoFw0',
                          imgLink: "assets/img/tiyatro07.jpg",
                          videoInfo: '730 K görüntüleme',
                          videoInfo2: '6 yıl önce ',
                        ),
                        MyVideoList(
                          videoBaslik:
                              'Güldüy Güldüy Show Çocuk - Sınav Stresi',
                          videoLink: 'uQHoeHmZrg4',
                          imgLink: "assets/img/tiyatro06.jpg",
                          videoInfo: '33 M görüntüleme',
                          videoInfo2: '7 yıl önce ',
                        ),
                        MyVideoList(
                          videoBaslik:
                              'Süt Diş | Çürük Ali ve Mikrop Necati | Grafi2000',
                          videoLink: 'bVD6ykxASHo',
                          imgLink: "assets/img/tiyatro05.jpg",
                          videoInfo: '80 M görüntüleme',
                          videoInfo2: '7 yıl önce ',
                        ),
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

void urlAc(String url) {
  if (Platform.isAndroid) {
    FlutterWebBrowser.openWebPage(
      url: url,
      customTabsOptions: CustomTabsOptions(
        colorScheme: CustomTabsColorScheme.dark,
        toolbarColor: Colors.deepPurple,
        secondaryToolbarColor: Colors.green,
        navigationBarColor: Colors.amber,
        addDefaultShareMenuItem: true,
        instantAppsEnabled: true,
        showTitle: false,
        urlBarHidingEnabled: true,
      ),
    );
  } else {
    FlutterWebBrowser.openWebPage(
      url: url,
      safariVCOptions: SafariViewControllerOptions(
        barCollapsingEnabled: true,
        preferredBarTintColor: Colors.green,
        preferredControlTintColor: Colors.amber,
        dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
        modalPresentationCapturesStatusBarAppearance: true,
      ),
    );
  }
}
