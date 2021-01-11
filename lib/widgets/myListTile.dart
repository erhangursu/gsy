import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';
import 'package:gsy/pages/page_03.dart';
import 'package:gsy/pages/page_06.dart';

Widget myListTile(int position, String yazi, String img) {
  TextStyle listTextStyle =
      TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white);
  return Builder(builder: (context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(img),
        foregroundColor: Colors.transparent,
      ),
      trailing: Icon(
        Icons.keyboard_arrow_right,
        size: 30,
        color: Colors.white,
      ),
      title: Text(yazi, style: listTextStyle),
      onTap: () {
        sayfaAc(position, context);
      },
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
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => Page06(),
        ),
      );
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
