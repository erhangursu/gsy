import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:gsy/pages/page_03.dart';

Widget gridItem(int position, String yazi) {
  var color = Colors.white;
  var icondata = Icons.add;

  switch (position) {
    case 0:
      color = Colors.red;
      icondata = Icons.import_contacts;
      break;
    case 1:
      color = Colors.deepPurple;
      icondata = Icons.book;
      break;
    case 2:
      color = Colors.cyan;
      icondata = Icons.library_books;
      break;
    case 3:
      color = Colors.amber;
      icondata = Icons.access_time;
      break;
    case 4:
      color = Colors.teal[800];
      icondata = Icons.engineering;
      break;
    case 5:
      color = Colors.blueGrey;
      icondata = Icons.filter_b_and_w;
      break;
    case 6:
      color = Colors.blue[900];
      icondata = Icons.local_taxi;
      break;
    case 7:
      color = Colors.orange;
      icondata = Icons.library_music;
      break;
    case 8:
      color = Colors.pinkAccent;
      icondata = Icons.music_note;
      break;
    case 9:
      color = Colors.brown;
      icondata = Icons.wc;
      break;
    case 10:
      color = Colors.purple;
      icondata = Icons.self_improvement;
      break;
  }

  return Builder(builder: (context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10, bottom: 5, top: 5),
      child: Card(
        elevation: 10,
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          //side: BorderSide(color: Colors.white),
        ),
        child: InkWell(
          onTap: () {
            sayfaAc(position, context);
          },
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  icondata,
                  size: 40,
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    yazi,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  });
}

void sayfaAc(int position, context) {
  switch (position) {
    case 0:
      urlAc(
        "http://www.ataekitap.com/e-kitaplar/ilkokul/3-Sinif/3_Sinif_Egitici_Oykulerle_Okudugumu_Anliyorum/index.html",
      );
      break;
    case 1:
      urlAc(
          "http://www.ataekitap.com/e-kitaplar/ilkokul/3-Sinif/3_Sinif_Ata_Yariyil_Tatilinde/index.html");
      break;
    case 2:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Page03(),
        ),
      );
      //urlAc("https://www.testlericoz.com/coz/3m041");
      break;
    case 3:
      urlAc(
          "http://www.ataekitap.com/e-kitaplar/ilkokul/3-Sinif/3_Sinif_Citir_Soru_Bankasi_1_Kitap/index.html");
      break;
    case 4:
      urlAc(
          "http://www.ataekitap.com/e-kitaplar/ilkokul/3-Sinif/3_Sinif_Dikkat_Akil_Zeka_Oyunlari/index.html");
      break;
    case 5:
      break;
    case 6:
      break;
    case 7:
      break;
    case 8:
      break;
    case 9:
      break;
    case 10:
      break;
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
        showTitle: true,
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
