import 'package:flutter/material.dart';
import 'package:gsy/common/gunlukProgram.dart';

class Page14 extends StatelessWidget {
  const Page14({Key key}) : super(key: key);

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
                ders1: 'Okuduğumu Anlıyorum - Karga ile Tilki - Sf-1',
                ders2: 'Çıtır Soru Bankası - Matematik Test 1 - Sf-44',
                ders3: 'Çıtır Soru Bankası - Fen Bilimleri Test 1 - Sf-97',
                ders4: 'Çıtır Soru Bankası - Hayat Bilgisi Test 1 - Sf-124',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 1 - Sf-5',
              ),
              GunlukProgram(
                gun: "24 OCAK 2021 - 2. GÜN",
                ders1: 'Okuduğumu Anlıyorum - Bakkal ile Papağan - Sf-3',
                ders2: 'Çıtır Soru Bankası - Matematik Test 2 - Sf-45',
                ders3: 'Çıtır Soru Bankası - Fen Bilimleri Test 2 - Sf-99',
                ders4: 'Çıtır Soru Bankası - Hayat Bilgisi Test 2 - Sf-126',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 2 - Sf-8',
              ),
              GunlukProgram(
                gun: "25 OCAK 2021 - 3. GÜN",
                ders1: 'Okuduğumu Anlıyorum - Şaşının İnadı - Sf-5',
                ders2: 'Çıtır Soru Bankası - Matematik Test 3 - Sf-46',
                ders3:
                    'Çıtır Soru Bankası - Fen Bilimleri 1. Ünite Değerlendirme Testi - Sf-101',
                ders4: 'Çıtır Soru Bankası - Hayat Bilgisi Test 3 - Sf-128',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 3 - Sf-10',
              ),
              GunlukProgram(
                gun: "26 OCAK 2021 - 4. GÜN",
                ders1: 'Okuduğumu Anlıyorum - Karpuz Vampir - Sf-7',
                ders2: 'Çıtır Soru Bankası - Matematik Test 4 - Sf-48',
                ders3: 'Çıtır Soru Bankası - Fen Bilimleri Test 3 - Sf-103',
                ders4: 'Çıtır Soru Bankası - Hayat Bilgisi Test 4 - Sf-130',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 4 - Sf-12',
              ),
              GunlukProgram(
                gun: "27 OCAK 2021 - 5. GÜN",
                ders1: 'Okuduğumu Anlıyorum - Kurbağa ile Fare - Sf-9',
                ders2: 'Çıtır Soru Bankası - Matematik Test 5 - Sf-50',
                ders3:
                    'Çıtır Soru Bankası - Fen Bilimleri 2. Ünite Değerlendirme Testi - Sf-105',
                ders4: 'Çıtır Soru Bankası - Hayat Bilgisi Test 5 - Sf-132',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 5 - Sf-14',
              ),
              GunlukProgram(
                gun: "28 OCAK 2021 - 6. GÜN",
                ders1: 'Okuduğumu Anlıyorum - Kurt ile Çoban - Sf-11',
                ders2: 'Çıtır Soru Bankası - Matematik Test 5 - Sf-52',
                ders3: 'Çıtır Soru Bankası - Fen Bilimleri Test 4 - Sf-107',
                ders4:
                    'Çıtır Soru Bankası - Hayat Bilgisi 1. Ünite Değerlendirme Testi - Sf-134',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 5 - Sf-16',
              ),
              GunlukProgram(
                gun: "29 OCAK 2021 - 7. GÜN",
                ders1: 'Okuduğumu Anlıyorum - Birliğin Gücü - Sf-13',
                ders2: 'Çıtır Soru Bankası - Matematik Test 6 - Sf-54',
                ders3: 'Çıtır Soru Bankası - Fen Bilimleri Test 5 - Sf-109',
                ders4: 'Çıtır Soru Bankası - Hayat Bilgisi Test 6 - Sf-136',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 6 - Sf-18',
              ),
              GunlukProgram(
                gun: "30 OCAK 2021 - 8. GÜN",
                ders1: 'Okuduğumu Anlıyorum - Dikensever ve Hakim - Sf-17',
                ders2: 'Çıtır Soru Bankası - Matematik Test 7 - Sf-56',
                ders3:
                    'Çıtır Soru Bankası - Fen Bilimleri 3. Ünite Değerlendirme Testi - Sf-111',
                ders4: 'Çıtır Soru Bankası - Hayat Bilgisi Test 7 - Sf-138',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 7 - Sf-18',
              ),
              GunlukProgram(
                gun: "31 OCAK 2021 - 9. GÜN",
                ders1:
                    'Okuduğumu Anlıyorum - Gezgin Kuşlar & Üç Balık  - Sf-19,21',
                ders2: 'Çıtır Soru Bankası - Matematik Test 8 - Sf-58',
                ders3: 'Çıtır Soru Bankası - Fen Bilimleri Test 6 - Sf-113',
                ders4: 'Çıtır Soru Bankası - Hayat Bilgisi Test 8 - Sf-140',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 8 - Sf-20',
              ),
              GunlukProgram(
                gun: "01 ŞUBAT 2021 - 10. GÜN",
                ders1:
                    'Okuduğumu Anlıyorum - İki Köle & Susuz Adam ile Su - Sf-23,25',
                ders2:
                    'Çıtır Soru Bankası - Matematik 1. Ünite Değerlendirme Testi - Sf-60',
                ders3: 'Çıtır Soru Bankası - Fen Bilimleri Test 7 - Sf-115',
                ders4:
                    'Çıtır Soru Bankası - Hayat Bilgisi 2. Ünite Değerlendirme Testi - Sf-142',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 9 - Sf-20',
              ),
              GunlukProgram(
                gun: "02 ŞUBAT 2021 - 11. GÜN",
                ders1:
                    'Okuduğumu Anlıyorum - Deve ile Fare & Kaz ile Tilki - Sf-29',
                ders2: 'Çıtır Soru Bankası - Matematik Test 9 - Sf-62',
                ders3:
                    'Çıtır Soru Bankası - Fen Bilimleri 4. Ünite Değerlendirme Testi - Sf-117',
                ders4: 'Çıtır Soru Bankası - Hayat Bilgisi Test 9 - Sf-144',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 10 - Sf-24',
              ),
              GunlukProgram(
                gun: "03 ŞUBAT 2021 - 12. GÜN",
                ders1:
                    'Okuduğumu Anlıyorum - Aslan ile Tavşan & Aslan Payı - Sf-31,33',
                ders2: 'Çıtır Soru Bankası - Matematik Test 10 - Sf-64',
                ders3:
                    'Çıtır Soru Bankası - Fen Bilimleri Genel Değerlendirme 1 - Sf-119',
                ders4: 'Çıtır Soru Bankası - Hayat Bilgisi Test 9 - Sf-146',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 11 - Sf-26',
              ),
              GunlukProgram(
                gun: "04 ŞUBAT 2021 - 13. GÜN",
                ders1:
                    'Okuduğumu Anlıyorum - Ayının Dostluğu & Çöl Adam ile Bilgin - Sf-35,37',
                ders2: 'Çıtır Soru Bankası - Matematik Test 11 - Sf-66',
                ders3:
                    'Çıtır Soru Bankası - Fen Bilimleri Genel Değerlendirme 2 - Sf-121',
                ders4:
                    'Çıtır Soru Bankası - Hayat Bilgisi 3. Ünite Değerlendirme Testi - Sf-148',
                ders5: 'Çıtır Soru Bankası - Türkçe Test 12 - Sf-28',
              ),
              GunlukProgram(
                gun: "05 ŞUBAT 2021 - 14. GÜN",
                ders1:
                    'Okuduğumu Anlıyorum - Anlaşılmayan 4 Kişi - Cömert Adamın Cimri Çocukların - Sf-39,41',
                ders2: 'Çıtır Soru Bankası - Matematik Test 12 - Sf-68',
                ders3:
                    'Çıtır Soru Bankası - Hayat Bilgisi Genel Değerlendirme 1 - Sf-150',
                ders4: 'Çıtır Soru Bankası - Türkçe Test 13 - Sf-30',
                ders5: 'Boş',
              ),
              GunlukProgram(
                gun: "06 ŞUBAT 2021 - 15. GÜN",
                ders1:
                    'Okuduğumu Anlıyorum - Organlar & İşinin Hakkını Vermek - Sf-43,45',
                ders2:
                    'Çıtır Soru Bankası - Matematik Test 13 ve 14 - Sf-70,72',
                ders3:
                    'Çıtır Soru Bankası - Hayat Bilgisi Genel Değerlendirme 2 - Sf-152',
                ders4: 'Çıtır Soru Bankası - Türkçe Test 14 - Sf-32',
                ders5: 'Boş',
              ),
              GunlukProgram(
                gun: "07 ŞUBAT 2021 - 16. GÜN",
                ders1:
                    'Okuduğumu Anlıyorum - Dil Bilgini ile Gemici & Çenesi Düşük Kaplumbağa - Sf-47,49',
                ders2:
                    'Çıtır Soru Bankası - Matematik Test 15 ve 2. Ünite Değerlendirme Testi - Sf-74,76',
                ders3: 'Çıtır Soru Bankası - Türkçe Test 15 - Sf-34',
                ders4: 'Boş',
                ders5: 'Boş',
              ),
              GunlukProgram(
                gun: "08 ŞUBAT 2021 - 17. GÜN",
                ders1:
                    'Okuduğumu Anlıyorum - Kedi ile Fare & Güzelliğine Güvenen Meyve - Sf-51,53',
                ders2:
                    'Çıtır Soru Bankası - Matematik Test 16 ve 17 - Sf-78,80',
                ders3: 'Çıtır Soru Bankası - Türkçe Test 16 - Sf-36',
                ders4: 'Boş',
                ders5: 'Boş',
              ),
              GunlukProgram(
                gun: "09 ŞUBAT 2021 - 18. GÜN",
                ders1:
                    'Okuduğumu Anlıyorum - Yaralı Leylek & Köylü ile Papağan - Sf-55,57',
                ders2:
                    'Çıtır Soru Bankası - Matematik Test 18 ve 19 - Sf-82,84',
                ders3: 'Çıtır Soru Bankası - Türkçe Test 17 - Sf-38',
                ders4: 'Boş',
                ders5: 'Boş',
              ),
              GunlukProgram(
                gun: "10 ŞUBAT 2021 - 19. GÜN",
                ders1:
                    'Okuduğumu Anlıyorum - Aç Gözlü Kurt & Padişaha Güvenmeyen Adam - Sf-59,61',
                ders2:
                    'Çıtır Soru Bankası - Matematik Test 20 ve 21 - Sf-86,88',
                ders3:
                    'Çıtır Soru Bankası - Türkçe Genel Değerlendirme 1 - Sf-40',
                ders4: 'Boş',
                ders5: 'Boş',
              ),
              GunlukProgram(
                gun: "11 ŞUBAT 2021 - 20. GÜN",
                ders1:
                    'Okuduğumu Anlıyorum - Elimizdekinin Kıymeti & Harikalar Diyarı - Sf-63,65',
                ders2: 'Çıtır Soru Bankası - Matematik Test 22 - Sf-90',
                ders3:
                    'Çıtır Soru Bankası - Türkçe Genel Değerlendirme 2 - Sf-42',
                ders4: 'Boş',
                ders5: 'Boş',
              ),
              GunlukProgram(
                gun: "12 ŞUBAT 2021 - 21. GÜN",
                ders1:
                    'Okuduğumu Anlıyorum - Önyargı & Kavanozdaki Bal - Sf-67,69',
                ders2:
                    'Çıtır Soru Bankası - Matematik 3. Ünite Değerlendirme Testi - Sf-92',
                ders3: 'Boş',
                ders4: 'Boş',
                ders5: 'Boş',
              ),
              GunlukProgram(
                gun: "13 ŞUBAT 2021 - 22. GÜN",
                ders1:
                    'Okuduğumu Anlıyorum - Sivrisinek ile Aslan & Aslanın Sarayı & Eyazın Sırrı - Sf-71,75',
                ders2:
                    'Çıtır Soru Bankası - Matematik Genel Değerlendirme 1 - Sf-94',
                ders3: 'Boş',
                ders4: 'Boş',
                ders5: 'Boş',
              ),
              GunlukProgram(
                gun: "14 ŞUBAT 2021 - 23. GÜN",
                ders1:
                    'Okuduğumu Anlıyorum - Meşe ile Saz & Üç Öğüt & Papağanın Kurtuluşu - Sf-77,81',
                ders2:
                    'Çıtır Soru Bankası - Matematik Genel Değerlendirme 2 - Sf-96',
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
