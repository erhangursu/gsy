import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:gsy/pages/page_03.dart';
import 'package:gsy/pages/page_06.dart';
import 'package:gsy/pages/page_07.dart';
import 'package:gsy/pages/page_08..dart';
import 'package:gsy/pages/page_09.dart';
import 'package:gsy/pages/page_10.dart';
import 'package:gsy/pages/page_11.dart';
import 'package:gsy/pages/page_12.dart';
import 'package:gsy/pages/page_14.dart';

void sayfaAc(int position, context) {
  switch (position) {
    case 1:
      urlAc(
        "http://www.ataekitap.com/e-kitaplar/ilkokul/3-Sinif/3_Sinif_Egitici_Oykulerle_Okudugumu_Anliyorum/index.html",
      );
      break;
    case 2:
      urlAc(
          "http://www.ataekitap.com/e-kitaplar/ilkokul/3-Sinif/3_Sinif_Ata_Yariyil_Tatilinde/index.html");
      break;
    case 3:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Page03(),
        ),
      );
      break;
    case 4:
      urlAc(
          "http://www.ataekitap.com/e-kitaplar/ilkokul/3-Sinif/3_Sinif_Citir_Soru_Bankasi_1_Kitap/index.html");
      break;
    case 5:
      urlAc(
          "http://www.ataekitap.com/e-kitaplar/ilkokul/3-Sinif/3_Sinif_Dikkat_Akil_Zeka_Oyunlari/index.html");
      break;
    case 6:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Page06(),
        ),
      );
      break;
    case 7:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Page07(),
        ),
      );
      break;
    case 8:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Page08(),
        ),
      );
      break;
    case 9:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Page09(),
        ),
      );
      break;
    case 10:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Page10(),
        ),
      );
      break;
    case 11:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Page11(),
        ),
      );
      break;
    case 12:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Page12(),
        ),
      );
      break;
    case 13:
      urlAc(
          "https://instagram.fadb3-1.fna.fbcdn.net/v/t50.2886-16/10000000_118820573402143_4597816472512062026_n.mp4?_nc_ht=instagram.fadb3-1.fna.fbcdn.net&_nc_cat=107&_nc_ohc=N3XrtvlwWzIAX_1P22L&oe=60096E93&oh=1d1ca0a5950ba6de1339473314400ca5");
      break;
    case 14:
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Page14(),
        ),
      );
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
