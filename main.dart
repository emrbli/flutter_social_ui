import 'package:flutter/material.dart';
import 'package:sociaworld/gonderiKarti.dart';
import 'package:sociaworld/profilSayfasi.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Projem',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Anasayfa(),
    );
  }
}

class Anasayfa extends StatefulWidget {
  @override
  _AnasayfaState createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0, //gölge yok
        leading: IconButton(
            icon: Icon(
              Icons.menu,
              color: Colors.grey,
              size: 32.0,
            ),
            onPressed: () {}),
        title: Padding(
          padding: const EdgeInsets.all(88.0),
          child: Image.asset('assets/gumball_logo.png', fit: BoxFit.cover),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.pink,
                size: 32.0,
              ),
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) {
                      return Column(
                        children: [
                          duyuru("Gumball seni takip etti.", "3 dk önce"),
                          duyuru("Penny seni takip etti.", "1 saat önce"),
                          duyuru(
                              "Nicolas bir fotoğrafını beğendi.", "2 gün önce")
                        ],
                      );
                    });
              })
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 100.0,
            decoration: BoxDecoration(color: Colors.grey[100], boxShadow: [
              BoxShadow(
                  color: Colors.grey,
                  offset: Offset(0.0, 3.0),
                  blurRadius: 5.0),
            ]),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                profilKartiOlustur(
                  "Gumball",
                  "https://yt3.ggpht.com/ytc/AAUvwnhHQs4-aWgrYSODr-HbebsV1BFFP9z2WWvyJNORfjg=s900-c-k-c0x00ffffff-no-rj",
                  "Gumball Watterson",
                  "https://wallpapersplanet.net/sites/default/files/the-amazing-world-of-gumball-wallpapers-34916-9972822.png",
                ),
                profilKartiOlustur(
                  "Darwin",
                  "https://64.media.tumblr.com/c3e8aa401d8f49b9188cdf64f046d230/tumblr_inline_p7p24rXc5G1sss5ih_640.png",
                  "Darwin Watterson",
                  "https://wallpapersplanet.net/sites/default/files/the-amazing-world-of-gumball-wallpapers-34916-9972822.png",
                ),
                profilKartiOlustur(
                  "Richard",
                  "https://i.pinimg.com/736x/51/e6/2c/51e62cd5e5fd70189933496977639c61.jpg",
                  "Richard Watterson",
                  "https://wallpapersplanet.net/sites/default/files/the-amazing-world-of-gumball-wallpapers-34916-9972822.png",
                ),
                profilKartiOlustur(
                  "Nicole",
                  "https://pbs.twimg.com/profile_images/691123438103048192/oBcMYmH1_400x400.jpg",
                  "Nicole Watterson",
                  "https://wallpapersplanet.net/sites/default/files/the-amazing-world-of-gumball-wallpapers-34916-9972822.png",
                ),
                profilKartiOlustur(
                  "Joanna",
                  "https://static.wikia.nocookie.net/theamazingworldofgumball6/images/7/7c/240px-GrannyJojo_S1.png/revision/latest?cb=20130215091653",
                  "Joanna Watterson",
                  "https://wallpapersplanet.net/sites/default/files/the-amazing-world-of-gumball-wallpapers-34916-9972822.png",
                ),
                profilKartiOlustur(
                  "Anais",
                  "https://yt3.ggpht.com/ytc/AAUvwni5Vsx3JWgMFRDDh8vtPKTbogv4HtD7II-vBfWJJw=s900-c-k-c0x00ffffff-no-rj",
                  "Anais Watterson",
                  "https://wallpapersplanet.net/sites/default/files/the-amazing-world-of-gumball-wallpapers-34916-9972822.png",
                ),
                profilKartiOlustur(
                  "Penny",
                  "https://i.pinimg.com/originals/d2/b9/61/d2b961c44ad736cda28e3ec1d54d60fc.jpg",
                  "Penny Penny",
                  "https://wallpapersplanet.net/sites/default/files/the-amazing-world-of-gumball-wallpapers-34916-9972822.png",
                ),
                profilKartiOlustur(
                  "Carrie",
                  "https://uploads.scratch.mit.edu/users/avatars/13865364.png",
                  "Carrie Watterson",
                  "https://wallpapersplanet.net/sites/default/files/the-amazing-world-of-gumball-wallpapers-34916-9972822.png",
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
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
                "https://yt3.ggpht.com/ytc/AAUvwnhHQs4-aWgrYSODr-HbebsV1BFFP9z2WWvyJNORfjg=s900-c-k-c0x00ffffff-no-rj",
            gonderiResimLinki:
                "https://ti-content-global.cdn.turner.com/PROD-APAC/C_GUMBAL_XXXXX072_UKL_UKE/C_GUMBAL_XXXXX072_UKL_UKE_VIDSCREENSHOT.jpg",
            isimSoyad: "Gumball Watterson",
            gecenSure: "1 gün önce",
            aciklama: "Spordayım.",
          ),
          GonderiKarti(
            profilResimLinki:
                "https://yt3.ggpht.com/ytc/AAUvwnhHQs4-aWgrYSODr-HbebsV1BFFP9z2WWvyJNORfjg=s900-c-k-c0x00ffffff-no-rj",
            gonderiResimLinki:
                "https://ti-content-global.cdn.turner.com/PROD-APAC/C_GUMBAL_XXXXX072_UKL_UKE/C_GUMBAL_XXXXX072_UKL_UKE_VIDSCREENSHOT.jpg",
            isimSoyad: "Gumball Watterson",
            gecenSure: "1 gün önce",
            aciklama: "2.",
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        backgroundColor: Colors.purple[300],
        child: Icon(Icons.add_a_photo_outlined),
      ),
    );
  }

  Padding duyuru(String mesaj, String gecenSure) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(mesaj), Text(gecenSure)],
      ),
    );
  }

  Widget profilKartiOlustur(String kullaniciAdi, String resimLinki,
      String isimSoyad, String kapakResimLinki) {
    //Profil Kartı
    return Material(
      child: InkWell(
        onTap: () async {
          bool donenVeri = await Navigator.of(context).push(MaterialPageRoute(
              builder: (BuildContext context) => ProfilSayfasi(
                    kullaniciAdi: kullaniciAdi,
                    profilResimlinki: resimLinki,
                    isimSoyad: isimSoyad,
                    kapakResimlinki: kapakResimLinki,
                  )));
          if (donenVeri == true) {
            print("push object is True");
          } else {
            print("None");
          }
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.topEnd,
                children: [
                  Hero(
                    tag: kullaniciAdi,
                    child: Container(
                      width: 70,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 2.0, color: Colors.grey),
                        borderRadius: BorderRadius.circular(35.0),
                        image: DecorationImage(
                            image: NetworkImage(resimLinki), fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Container(
                    width: 20.0,
                    height: 20.0,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(20.0),
                        border: Border.all(width: 2.0, color: Colors.white)),
                  ),
                ],
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                kullaniciAdi,
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
