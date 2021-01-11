import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_web_browser/flutter_web_browser.dart';

class Page03 extends StatefulWidget {
  final String baslik;
  const Page03({Key key, this.baslik}) : super(key: key);

  @override
  _Page03State createState() => _Page03State();
}

class _Page03State extends State<Page03> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.grey, Colors.pink]),
          ),
        ),
        title: Text(
          'Online Testler',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              ExpansionTile(
                leading: Icon(
                  Icons.calculate,
                  size: 40,
                ),
                title: Text(
                  "MATEMATİK",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-matematik-dogal-sayilar.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Doğal Sayılar'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-matematik-uc-basamakli-dogal-sayilar.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Üç Basamaklı Doğal Sayılar'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-matematik-sayilarda-oruntuler.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Sayı Örüntüleri'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-matematik-tek-ve-cift-sayilar.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Tek ve Çift Doğal Sayılar'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-matematik-romen-rakamlari.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Romen Rakamlar'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-matematik-dogal-sayilari-yuvarlama.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Doğal Sayılarda Yuvarlama'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-matematik-dogal-sayilarla-toplama-islemi.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Toplama İşlemi'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-matematik-dogal-sayilarla-cikarma-islemi.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Çıkarma İşlemi'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/1-sinif-matematik-zihinden-toplama-ve-cikarma-islemi.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Zihinde Toplama ve Çıkarma İşlemi'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-matematik-dogal-sayilarla-carpma-islemi.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Çarpma İşlemi'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-matematik-dogal-sayilarla-bolme-islemi.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Bölme İşlemi'),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(
                  Icons.sort_by_alpha,
                  size: 40,
                ),
                title: Text(
                  "TÜRKÇE",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-turkce-sozcuk-ve-hece-bilgisi.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Hece Bilgisi'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-turkce-es-anlamli-kelimeler.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Eş Anlamlı Kelimeler'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-turkce-zit-anlamli-kelimeler.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Zıt Anlamlı Sözcükler'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-turkce-cumle-bilgisi.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Cümle Bilgisi'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-turkce-sebep-sonuc-cumleleri.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Sebep Sonuç İlişkisi'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-turkce-okudugunu-anlama.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Okuduğunu Anlama'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-turkce-olaylarin-olus-sirasi.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Okuduğunu Anlama'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-turkce-olaylarin-olus-sirasi.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Olayların Oluş Sırası'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-turkce-noktalama-isaretleri.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Noktalama İşaretleri'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-turkce-yazim-kurallari.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Türkçe Yazım Kuralları'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-turkce-atasozleri-ve-deyimler.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Atasözü ve Deyimler'),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(
                  Icons.group,
                  size: 40,
                ),
                title: Text(
                  "HAYAT BİLGİSİ",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-hayat-bilgisi-okulumuzda-hayat.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Okulumuzda Hayat - 1'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-hayat-bilgisi-okulumuzda-hayat-2.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Okulumuzda Hayat - 2'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-hayat-bilgisi-evimizde-hayat.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Evimizde Hayat - 1'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-hayat-bilgisi-evimizde-hayat-2.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Evimizde Hayat - 2'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-hayat-bilgisi-guvenli-hayat.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Güvenli Hayat - 1'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-hayat-bilgisi-guvenli-hayat-2.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Güvenli Hayat - 2'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-hayat-bilgisi-saglikli-hayat.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Sağlıklı Hayat - 1'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-hayat-bilgisi-saglikli-hayat-2.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Sağlıklı Hayat - 2'),
                    ),
                  ),
                ],
              ),
              ExpansionTile(
                leading: Icon(
                  Icons.science,
                  size: 40,
                ),
                title: Text(
                  "FEN BİLİMLERİ",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                children: <Widget>[
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-fen-bilimleri-gezegenimizi-taniyalim.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Gezegenimizi Tanıyalım - 1'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-fen-bilimleri-gezegenimizi-taniyalim-2.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Gezegenimizi Tanıyalım - 2'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-fen-bilimleri-bes-duyumuz.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Beş Duyumuz - 1'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-fen-bilimleri-bes-duyumuz-2.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Beş Duyumuz - 2'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-fen-bilimleri-kuvveti-taniyalim.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Kuvveti Tanıyalım- 1'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-fen-bilimleri-kuvveti-taniyalim-2.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Kuvveti Tanıyalım - 2'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-fen-bilimleri-maddeyi-taniyalim.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Maddeyi Tanıyalım - 1'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-fen-bilimleri-maddeyi-taniyalim-2.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Maddeyi Tanıyalım - 2'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-fen-bilimleri-cevremizdeki-isik-ve-sesler.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Çevremizdeki Işık ve Sesler - 1'),
                    ),
                  ),
                  InkWell(
                    onTap: () => urlAc(
                        "https://www.testlericoz.com/3-sinif-fen-bilimleri-cevremizdeki-isik-ve-sesler-2.html"),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios),
                      title: Text('Çevremizdeki Işık ve Sesler - 2'),
                    ),
                  ),
                ],
              ),
              // Container(
              //   height: 100,
              //   width: 100,
              //   color: Colors.blue,
              // ),
            ],
          ),
        ],
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
