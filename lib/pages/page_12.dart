import 'package:flutter/material.dart';
import 'package:gsy/common/gunlukProgram.dart';

class Page12 extends StatelessWidget {
  const Page12({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TextStyle listTextStyle =
    //     TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                tileMode: TileMode.repeated,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blueGrey, Colors.pinkAccent]),
          ),
        ),
        title: Text(
          'Tatil Programı',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            // height: 250,
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.blue.withOpacity(0.4), BlendMode.dstATop),
                image: AssetImage("assets/img/blackboard.jpg"),
                fit: BoxFit.fill,
              ),
            ),
          ),
          ListView(
            //padding: EdgeInsets.only(top: 20, right: 20, left: 20),
            children: [
              Container(
                height: 180,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.blue.withOpacity(0.8), BlendMode.dstATop),
                    image: AssetImage("assets/img/back-to-school.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              GunlukProgram(
                gun: "23 OCAK 2021 - 1. GÜN",
                ders1: 'Okuduğumu Anlıyorum - Karga ile Tilki',
                ders2: 'Çıtır Soru Bankası - Matematik Test 1',
                ders3: 'Çıtır Soru Bankası - Fen Bilimleri Test 1',
                ders4: 'Çıtır Soru Bankası - Hayat Bilgisi Test 1',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 1',
              ),
              GunlukProgram(
                gun: "24 OCAK 2021 - 2. GÜN",
                ders1: 'Okuduğumu Anlıyorum - Bakkal ile Papağan',
                ders2: 'Çıtır Soru Bankası - Matematik Test 2',
                ders3: 'Çıtır Soru Bankası - Fen Bilimleri Test 2',
                ders4: 'Çıtır Soru Bankası - Hayat Bilgisi Test 2',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 2',
              ),
              GunlukProgram(
                gun: "25 OCAK 2021 - 3. GÜN",
                ders1: 'Okuduğumu Anlıyorum - Şaşının İnadı',
                ders2: 'Çıtır Soru Bankası - Matematik Test 3',
                ders3:
                    'Çıtır Soru Bankası - Fen Bilimleri 1. Ünite Değerlendirme Testi',
                ders4: 'Çıtır Soru Bankası - Hayat Bilgisi Test 3',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 3',
              ),
              GunlukProgram(
                gun: "26 OCAK 2021 - 4. GÜN",
                ders1: 'Okuduğumu Anlıyorum - Karpuz Vampir',
                ders2: 'Çıtır Soru Bankası - Matematik Test 4',
                ders3: 'Çıtır Soru Bankası - Fen Bilimleri Test 3',
                ders4: 'Çıtır Soru Bankası - Hayat Bilgisi Test 4',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 4',
              ),
              GunlukProgram(
                gun: "27 OCAK 2021 - 5. GÜN",
                ders1: 'Okuduğumu Anlıyorum - Kurbağa ile Fare',
                ders2: 'Çıtır Soru Bankası - Matematik Test 5',
                ders3:
                    'Çıtır Soru Bankası - Fen Bilimleri 2. Ünite Değerlendirme Testi',
                ders4: 'Çıtır Soru Bankası - Hayat Bilgisi Test 5',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 5',
              ),
              GunlukProgram(
                gun: "28 OCAK 2021 - 6. GÜN",
                ders1: 'Okuduğumu Anlıyorum - Kurt ile Çoban',
                ders2: 'Çıtır Soru Bankası - Matematik Test 5',
                ders3: 'Çıtır Soru Bankası - Fen Bilimleri Test 4',
                ders4:
                    'Çıtır Soru Bankası - Hayat Bilgisi 1. Ünite Değerlendirme Testi',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 5',
              ),
              GunlukProgram(
                gun: "29 OCAK 2021 - 7. GÜN",
                ders1: 'Okuduğumu Anlıyorum - Birliğin Gücü',
                ders2: 'Çıtır Soru Bankası - Matematik Test 6',
                ders3: 'Çıtır Soru Bankası - Fen Bilimleri Test 5',
                ders4: 'Çıtır Soru Bankası - Hayat Bilgisi Test 6',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 6',
              ),
              GunlukProgram(
                gun: "30 OCAK 2021 - 8. GÜN",
                ders1: 'Okuduğumu Anlıyorum - Dikensever ve Hakim',
                ders2: 'Çıtır Soru Bankası - Matematik Test 7',
                ders3:
                    'Çıtır Soru Bankası - Fen Bilimleri 3. Ünite Değerlendirme Testi',
                ders4: 'Çıtır Soru Bankası - Hayat Bilgisi Test 7',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 7',
              ),
              GunlukProgram(
                gun: "31 OCAK 2021 - 9. GÜN",
                ders1: 'Okuduğumu Anlıyorum - Gezgin Kuşlar & Üç Balık',
                ders2: 'Çıtır Soru Bankası - Matematik Test 8',
                ders3: 'Çıtır Soru Bankası - Fen Bilimleri Test 6',
                ders4: 'Çıtır Soru Bankası - Hayat Bilgisi Test 8',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 8',
              ),
              GunlukProgram(
                gun: "01 ŞUBAT 2021 - 10. GÜN",
                ders1: 'Okuduğumu Anlıyorum - İki Köle & Susuz Adam ile Su',
                ders2:
                    'Çıtır Soru Bankası - Matematik 1. Ünite Değerlendirme Testi',
                ders3: 'Çıtır Soru Bankası - Fen Bilimleri Test 7',
                ders4:
                    'Çıtır Soru Bankası - Hayat Bilgisi 2. Ünite Değerlendirme Testi',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 9',
              ),
              GunlukProgram(
                gun: "02 ŞUBAT 2021 - 11. GÜN",
                ders1: 'Okuduğumu Anlıyorum - Deve ile Fare & Kaz ile Tilki',
                ders2: 'Çıtır Soru Bankası - Matematik Test 9',
                ders3:
                    'Çıtır Soru Bankası - Fen Bilimleri 4. Ünite Değerlendirme Testi',
                ders4: 'Çıtır Soru Bankası - Hayat Bilgisi Test 9',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 9',
              ),
              GunlukProgram(
                gun: "03 ŞUBAT 2021 - 12. GÜN",
                ders1: 'Okuduğumu Anlıyorum - Aslan ile Tavşan & Aslan Payı',
                ders2: 'Çıtır Soru Bankası - Matematik Test 10',
                ders3:
                    'Çıtır Soru Bankası - Fen Bilimleri Genel Değerlendirme 1',
                ders4: 'Çıtır Soru Bankası - Hayat Bilgisi Test 9',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 10',
              ),
              GunlukProgram(
                gun: "04 ŞUBAT 2021 - 13. GÜN",
                ders1:
                    'Okuduğumu Anlıyorum - Ayının Dostluğu & Çöl Adam ile Bilgin',
                ders2: 'Çıtır Soru Bankası - Matematik Test 11',
                ders3:
                    'Çıtır Soru Bankası - Fen Bilimleri Genel Değerlendirme 2',
                ders4:
                    'Çıtır Soru Bankası - Hayat Bilgisi 3. Ünite Değerlendirme Testi',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 11',
              ),
              GunlukProgram(
                gun: "05 ŞUBAT 2021 - 14. GÜN",
                ders1: 'Okuduğumu Anlıyorum - Organlar & İşinin Hakkını Vermek',
                ders2: 'Çıtır Soru Bankası - Matematik Test 12',
                ders3:
                    'Çıtır Soru Bankası - Hayat Bilgisi Genel Değerlendirme 1',
                ders4: 'Çıtır Soru Bankası - Türkçe Test 12',
                ders5: 'Boş',
              ),
              GunlukProgram(
                gun: "06 ŞUBAT 2021 - 15. GÜN",
                ders1:
                    'Okuduğumu Anlıyorum - Dil Bilgini ile Gemici & Çenesi Düşük Kaplumbağa',
                ders2: 'Çıtır Soru Bankası - Matematik Test 13 ve 14',
                ders3:
                    'Çıtır Soru Bankası - Hayat Bilgisi Genel Değerlendirme 2',
                ders4: 'Çıtır Soru Bankası - Türkçe Test 13',
                ders5: 'Boş',
              ),
              GunlukProgram(
                gun: "07 ŞUBAT 2021 - 16. GÜN",
                ders1:
                    'Okuduğumu Anlıyorum - Kedi ile Fare & Güzelliğine Güvenen Meyve',
                ders2:
                    'Çıtır Soru Bankası - Matematik Test 15 ve 2. Ünite Değerlendirme Testi',
                ders3: 'Çıtır Soru Bankası - Türkçe Test 14',
                ders4: 'Boş',
                ders5: 'Boş',
              ),
              GunlukProgram(
                gun: "08 ŞUBAT 2021 - 17. GÜN",
                ders1:
                    'Okuduğumu Anlıyorum - Yaralı Leylek & Köylü ile Papağan',
                ders2: 'Çıtır Soru Bankası - Matematik Test 16 ve 17',
                ders3: 'Çıtır Soru Bankası - Türkçe Test 15',
                ders4: 'Boş',
                ders5: 'Boş',
              ),
              GunlukProgram(
                gun: "09 ŞUBAT 2021 - 18. GÜN",
                ders1:
                    'Okuduğumu Anlıyorum - Aç Gözlü Kurt & Padişaha Güvenmeyen Adam',
                ders2: 'Çıtır Soru Bankası - Matematik Test 18 ve 19',
                ders3: 'Çıtır Soru Bankası - Türkçe Test 16',
                ders4: 'Boş',
                ders5: 'Boş',
              ),
              GunlukProgram(
                gun: "10 ŞUBAT 2021 - 19. GÜN",
                ders1:
                    'Okuduğumu Anlıyorum - Elimizdekinin Kıymeti & Harikalar Diyarı',
                ders2: 'Çıtır Soru Bankası - Matematik Test 20 ve 21',
                ders3: 'Çıtır Soru Bankası - Türkçe Test 17',
                ders4: 'Boş',
                ders5: 'Boş',
              ),
              GunlukProgram(
                gun: "11 ŞUBAT 2021 - 20. GÜN",
                ders1: 'Okuduğumu Anlıyorum - Önyargı & Kavanozdaki Bal',
                ders2: 'Çıtır Soru Bankası - Matematik Test 22',
                ders3: 'Çıtır Soru Bankası - Türkçe Genel Değerlendirme 1',
                ders4: 'Boş',
                ders5: 'Boş',
              ),
              GunlukProgram(
                gun: "12 ŞUBAT 2021 - 21. GÜN",
                ders1:
                    'Okuduğumu Anlıyorum - Sivrisinek ile Aslan & Aslanın Sarayı',
                ders2:
                    'Çıtır Soru Bankası - Matematik 3. Ünite Değerlendirme Testi',
                ders3: 'Çıtır Soru Bankası - Türkçe Genel Değerlendirme 2',
                ders4: 'Boş',
                ders5: 'Boş',
              ),
              GunlukProgram(
                gun: "13 ŞUBAT 2021 - 22. GÜN",
                ders1: 'Okuduğumu Anlıyorum - Eyazın Sırrı & Meşe ile Saz',
                ders2: 'Çıtır Soru Bankası - Matematik Genel Değerlendirme 1',
                ders3: 'Boş',
                ders4: 'Boş',
                ders5: 'Boş',
              ),
              GunlukProgram(
                gun: "14 ŞUBAT 2021 - 23. GÜN",
                ders1: 'Okuduğumu Anlıyorum - Üç Öğüt Papağanın Kurtuluşu',
                ders2: 'Çıtır Soru Bankası - Matematik Genel Değerlendirme 2',
                ders3: 'Boş',
                ders4: 'Boş',
                ders5: 'Boş',
              ),
              SizedBox(height: 20),
            ],
          ),
        ],
      ),
    );
  }
}
