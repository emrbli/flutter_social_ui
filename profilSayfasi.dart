import 'package:flutter/material.dart';

import 'gonderiKarti.dart';

class ProfilSayfasi extends StatelessWidget {

  final String isimSoyad;
  final String kullaniciAdi;
  final String kapakResimlinki;
  final String profilResimlinki;

  const ProfilSayfasi({Key key, this.isimSoyad, this.kullaniciAdi, this.kapakResimlinki, this.profilResimlinki}) : super(key: key);




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[100],
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: 230,
                  //color: Colors.yellow,
                ),
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      image: DecorationImage(
                          image: NetworkImage(
                              kapakResimlinki),
                          fit: BoxFit.cover)),
                ),
                Positioned(
                  left: 20.0,
                  bottom: 0.0,
                  child: Hero(
                    tag: kullaniciAdi,
                    child: Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(60.0),
                          border: Border.all(width: 2.0, color: Colors.white),
                          image: DecorationImage(
                              image: NetworkImage(
                                  profilResimlinki),
                              fit: BoxFit.cover)),
                    ),
                  ),
                ),
                Positioned(
                  left: 149.0,
                  top: 191.0,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(isimSoyad,
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 18.0,
                                color: Colors.black)),
                        Text("@richard",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15.0,
                                color: Colors.grey))
                      ]),
                ),
                Positioned(
                  right: 21.0,
                  bottom: 61.0,
                  child: Container(
                    width: 100,
                    height: 34.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[200],
                        border: Border.all(width: 2.0, color: Colors.white)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_add_alt_1_sharp,
                          size: 18.0,
                        ),
                        SizedBox(
                          width: 7.0,
                        ),
                        Text("Takip Et",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 15.0,
                                color: Colors.black))
                      ],
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.arrow_back_sharp),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.pop(context,true);
                    }),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              height: 75,
              color: Colors.grey.withOpacity(0.5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  sayac("Takipçi","20K"),
                  sayac("Takip","500"),
                  sayac("Paylaşım","75"),
                ],
              ),
            ),
            GonderiKarti(
            profilResimLinki:
                "https://i.pinimg.com/736x/51/e6/2c/51e62cd5e5fd70189933496977639c61.jpg",
            gonderiResimLinki:
                "https://i.ytimg.com/vi/azoSlntEmKU/maxresdefault.jpg",
            isimSoyad: "Richard Watterson",
            gecenSure: "1 saat önce",
            aciklama: "Acıktııımmmm.",
          ),
          GonderiKarti(
            profilResimLinki:
                "https://i.pinimg.com/736x/51/e6/2c/51e62cd5e5fd70189933496977639c61.jpg",
            gonderiResimLinki:
                "https://i.ytimg.com/vi/azoSlntEmKU/maxresdefault.jpg",
            isimSoyad: "Richard Watterson",
            gecenSure: "1 saat önce",
            aciklama: "Acıktııımmmm.",
          ),
          ],
        ));
  }

  Column sayac(String baslik, String sayi) {
    return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      sayi,
                      style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                    SizedBox(
                      height: 1.0,
                    ),
                    Text(
                      baslik,
                      style: TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey[600]),
                    )
                  ],
                );
  }
}
