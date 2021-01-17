import 'package:flutter/material.dart';

import 'package:gsy/common/pdfViewer.dart';

class Page06 extends StatelessWidget {
  const Page06({Key key}) : super(key: key);

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
          'Jandarma Çocuk Dergisi',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Material(
        child: Stack(
          children: [
            Opacity(
              opacity: 0.7,
              child: Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/jandarma2.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/img/jandarma1.png"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 140, left: 20, right: 20, bottom: 10),
              child: Column(
                children: [
                  Expanded(
                    child: ListView(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<dynamic>(
                                builder: (_) => PDFViewerFromAsset(
                                  appBarTitle: 'Jandarma Çocuk Dergisi',
                                  pdfAssetPath: 'assets/pdf/jandarma_01.pdf',
                                ),
                              ),
                            );
                          },
                          child: JandarmaPdf(
                            baslik: 'Jandarma Çocuk Dergisi 1. Sayı',
                            iconData: Icons.filter_1,
                          ),
                        ),
                        SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<dynamic>(
                                builder: (_) => PDFViewerFromAsset(
                                  appBarTitle: 'Jandarma Çocuk Dergisi',
                                  pdfAssetPath: 'assets/pdf/jandarma_02.pdf',
                                ),
                              ),
                            );
                          },
                          child: JandarmaPdf(
                            baslik: 'Jandarma Çocuk Dergisi 2. Sayı',
                            iconData: Icons.filter_2,
                          ),
                        ),
                        SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<dynamic>(
                                builder: (_) => PDFViewerFromAsset(
                                  appBarTitle: 'Jandarma Çocuk Dergisi',
                                  pdfAssetPath: 'assets/pdf/jandarma_03.pdf',
                                ),
                              ),
                            );
                          },
                          child: JandarmaPdf(
                            baslik: 'Jandarma Çocuk Dergisi 3. Sayı',
                            iconData: Icons.filter_3,
                          ),
                        ),
                        SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<dynamic>(
                                builder: (_) => PDFViewerFromAsset(
                                  appBarTitle: 'Jandarma Çocuk Dergisi',
                                  pdfAssetPath: 'assets/pdf/jandarma_04.pdf',
                                ),
                              ),
                            );
                          },
                          child: JandarmaPdf(
                            baslik: 'Jandarma Çocuk Dergisi 4. Sayı',
                            iconData: Icons.filter_4,
                          ),
                        ),
                        SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<dynamic>(
                                builder: (_) => PDFViewerFromAsset(
                                  appBarTitle: 'Jandarma Çocuk Dergisi',
                                  pdfAssetPath: 'assets/pdf/jandarma_05.pdf',
                                ),
                              ),
                            );
                          },
                          child: JandarmaPdf(
                            baslik: 'Jandarma Çocuk Dergisi 5. Sayı',
                            iconData: Icons.filter_5,
                          ),
                        ),
                        SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<dynamic>(
                                builder: (_) => PDFViewerFromAsset(
                                  appBarTitle: 'Jandarma Çocuk Dergisi',
                                  pdfAssetPath: 'assets/pdf/jandarma_06.pdf',
                                ),
                              ),
                            );
                          },
                          child: JandarmaPdf(
                            baslik: 'Jandarma Çocuk Dergisi 6. Sayı',
                            iconData: Icons.filter_6,
                          ),
                        ),
                        SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<dynamic>(
                                builder: (_) => PDFViewerFromAsset(
                                  appBarTitle: 'Jandarma Çocuk Dergisi',
                                  pdfAssetPath: 'assets/pdf/jandarma_07.pdf',
                                ),
                              ),
                            );
                          },
                          child: JandarmaPdf(
                            baslik: 'Jandarma Çocuk Dergisi 7. Sayı',
                            iconData: Icons.filter_7,
                          ),
                        ),
                        SizedBox(height: 20),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<dynamic>(
                                builder: (_) => PDFViewerFromAsset(
                                  appBarTitle: 'Jandarma Çocuk Dergisi',
                                  pdfAssetPath: 'assets/pdf/jandarma_08.pdf',
                                ),
                              ),
                            );
                          },
                          child: JandarmaPdf(
                            baslik: 'Jandarma Çocuk Dergisi 8. Sayı',
                            iconData: Icons.filter_8,
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class JandarmaPdf extends StatelessWidget {
  final String baslik;
  final IconData iconData;
  const JandarmaPdf({
    Key key,
    @required this.baslik,
    @required this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.7,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 60,
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Container(
                color: Colors.redAccent,
                width: 70,
                height: 70,
                child: Icon(iconData, size: 30, color: Colors.white),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      baslik,
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Icon(Icons.arrow_forward_ios, color: Colors.red),
              SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}
