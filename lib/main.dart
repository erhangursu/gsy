import 'package:flutter/material.dart';
import 'package:gsy/common/gridItem.dart';
import 'package:gsy/widgets/myDrawer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
          //color: Colors.transparent.withOpacity(0.5),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.blueGrey, Colors.pinkAccent],
            ),
          ),
        ),
        title: Text(
          'GSY 3-H SINIFI',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        elevation: 5.0,
        centerTitle: true,
        actions: [
          IconButton(icon: Icon(Icons.notifications), onPressed: () {})
        ],
      ),
      drawer: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
          child: MyDrawer()),
      body: SafeArea(
        child: Material(
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    // colorFilter: ColorFilter.mode(
                    //     Colors.blue.withOpacity(0.8), BlendMode.dstATop),
                    image: AssetImage("assets/img/blackboard.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Padding(
                  padding: const EdgeInsets.only(left: 22, right: 22),
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: [
                      gridItem(1, 'EĞİTİCİ ÖYKÜLERLE OKUDUĞUNU ANLAMA'),
                      gridItem(2, 'TATİL KİTABI'),
                      gridItem(3, 'ONLİNE TESTLER'),
                      gridItem(4, 'ÇITIR SICAK ÇEREZ SORU BANKASI'),
                      gridItem(5, 'DİKKAT, AKIL, ZEKA OYUNLARI'),
                      gridItem(6, 'JANDARMA ÇOCUK DERGİSİ'),
                      gridItem(7, 'MÜZİK KİTABINDAKİ ŞARKILAR'),
                      gridItem(8, 'SABANCI SESLİ KİTAPLAR'),
                      gridItem(9, 'HALK OYUNLARI'),
                      gridItem(10, 'ZUMBA'),
                      gridItem(11, 'GÖRSEL SANATLAR'),
                      gridItem(12, 'TATİL ÇALIŞMA PROGRAMI'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
