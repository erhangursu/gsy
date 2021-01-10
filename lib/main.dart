import 'package:flutter/material.dart';
import 'package:gsy/widgets/gridItem.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GSY',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  Anasayfa({Key key}) : super(key: key);

  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
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
          'GSY 3-H SINIFI',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        elevation: 5.0,
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.notifications), onPressed: () {})
        ],
      ),
      drawer: Drawer(
        elevation: 5,
        child: ListTile(),
      ),
      body: Material(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  // colorFilter: ColorFilter.mode(
                  //     Colors.blue.withOpacity(0.8), BlendMode.dstATop),
                  image: AssetImage("assets/img/blackboard3.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 60),
              child: Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: GridView.count(
                  crossAxisCount: 2,
                  children: [
                    gridItem(0, 'EĞİTİCİ ÖYKÜLERLE OKUDUĞUNU ANLAMA'),
                    gridItem(1, 'TATİL KİTABI'),
                    gridItem(2, 'ONLİNE TESTLER'),
                    gridItem(3, 'ÇITIR ÇITIR SORU BANKASI'),
                    gridItem(4, 'DİKKAT, AKIL,   ZEKA OYUNLARI'),
                    gridItem(5, 'BASİT ORİGAMİLER'),
                    gridItem(6, 'JANDARMA ÇOCUK DERGİSİ'),
                    gridItem(7, 'SABANCI SESLİ KİTAPLAR'),
                    gridItem(8, 'MÜZİK KİTABINDAKİ ŞARKILAR'),
                    gridItem(9, 'HALK OYUNLARI'),
                    gridItem(10, 'ZUMBA'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
