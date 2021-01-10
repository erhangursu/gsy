import 'package:flutter/material.dart';

class Page03 extends StatefulWidget {
  final String baslik;
  const Page03({Key key, this.baslik}) : super(key: key);

  @override
  _Page01State createState() => _Page01State();
}

class Dersler {
  final String _dersAdi;
  final IconData _iconData;
  List<String> linkler = [];

  Dersler(this._dersAdi, this._iconData, linkler);
}

List<Dersler> dersler = [
  new Dersler('Matematik', Icons.iso, [
    'DOĞAL SAYILAR',
    'ÜÇ BASAMAKLI DOĞAL SAYILAR',
    'SAYI ÖRÜNTÜLERİ',
    'TEK VE ÇİFT DOĞAL SAYILAR',
    'ROMEN RAKAMLARI',
    'DOĞAL SAYILARI YUVARLAMA',
    'TOPLAMA İŞLEMİ',
    'ZİHİNDEN TOPLAMA VE ÇIKARMA İŞLEMİ',
    'ÇIKARMA İŞLEMİ',
    'ÇARPMA İŞLEMİ',
    'BÖLME İŞLEMİ'
  ]),
  new Dersler('Hayat Bilgisi', Icons.iso, ['123132', '555455'])
];

class _Page01State extends State<Page03> {
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            // colorFilter: ColorFilter.mode(
            //     Colors.blue.withOpacity(0.6), BlendMode.dstATop),
            image: AssetImage("assets/img/blackboard2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(10.0),
          children: [],
        ),
      ),
    );
  }
}
