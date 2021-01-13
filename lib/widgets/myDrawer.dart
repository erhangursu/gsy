import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:gsy/widgets/myListTile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle listTextStyle = TextStyle(
        fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white);
    return Container(
      width: 250,
      child: Drawer(
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: 5.0, //this is dependent on the import statment above
                  sigmaY: 5.0),
              child: Container(
                  decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.grey.withOpacity(0.7),
                      Colors.blue.withOpacity(0.3)
                    ]),
              )),
              //color: Colors.red.withOpacity(0.1)
            ),
            ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  padding: EdgeInsets.only(bottom: 3),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.blue.withOpacity(0.5),
                        Colors.pink.withOpacity(0.5)
                      ],
                    ),
                    // image: DecorationImage(
                    //     image: AssetImage("assets/img/back5.png"),
                    //     fit: BoxFit.fill),
                  ),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 90,
                        height: 90,
                        margin: EdgeInsets.only(bottom: 5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage('assets/img/gsy.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Text(
                        "Gülserap Yiğitalp",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "gulserapyigitalp@gmail.com",
                        style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white70),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    myListTile(1, "Okuduğunu Anlama", 'assets/img/01.jpg'),
                    myListTile(2, "Tatil Kitabı", 'assets/img/02.png'),
                    myListTile(3, "Online Testler", 'assets/img/03.png'),
                    myListTile(4, "Çıtır Soru Bankası", 'assets/img/04.png'),
                    myListTile(5, "Zeka Oyunları", 'assets/img/05.jpg'),
                    myListTile(6, "Basit Origramiler", 'assets/img/06.jpg'),
                    myListTile(
                        7, "Jandarma Çocuk Dergisi", 'assets/img/07.png'),
                    myListTile(8, "Sesli Kitaplar", 'assets/img/08.jpg'),
                    myListTile(9, "Şarkılar", 'assets/img/09.png'),
                    myListTile(10, "Halk Oyunları", 'assets/img/10.jpg'),
                    myListTile(11, "Zumba", 'assets/img/11.png'),
                    ListTile(
                      leading: Container(
                        margin: EdgeInsets.only(left: 10),
                        child: Icon(
                          Icons.undo,
                          size: 30,
                          color: Colors.white,
                        ),
                      ),
                      title: Text("Kapat", style: listTextStyle),
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                    //SizedBox(height: 5),
                    Text(
                      "E.G.2021  v1.0.0",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
