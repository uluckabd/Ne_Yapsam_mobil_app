import 'dart:math';

import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  List<String> tavsiyeler = [
    "Yürüyüş yap",
    "Kitap oku",
    "İlgilendiğin sporu yap",
    "Bir arkadaşına mesaj at",
    "Yabancı dil çalış",
    "Zihinsel oyun oyna",
    "Kodlama çalış",
    "Podcast dinle",
    "Diziden 1 bölüm izle / film izle",
    "Tarih videoları izle",
    "Müzik dinle",
    "Puzzle yap",
    "Belgesel izle",
    "Koşu yap",
    "Bisiklet sür",
    "Kütüphane ya da kafeye git",
    "Yeni bir tarif dene",
    "Oyun oyna ",
    "Arkadaşınla buluş",
    "Fotoğraf çek",
    "Blog yaz / içerik üret",
  ];

  String? secilentavsiye;

  void rastgeletavsiye() {
    final random = Random();
    setState(() {
      secilentavsiye = tavsiyeler[random.nextInt(tavsiyeler.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,

        children: [
          Image.asset(
            "resim/anasayfa.jpg",
            width: MediaQuery.of(context).size.width,
            height: 250,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "HOŞGELDİN ",
                style: TextStyle(
                  color: const Color(0xFF0DB2E9),
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "kullanıcı ismi",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: const Color(0xFF0DB2E9),
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(4.0),
            child: SizedBox(
              height: 300,
              width: MediaQuery.of(context).size.width,
              child: Card(
                elevation: 20,
                shadowColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: const Color.fromARGB(255, 212, 152, 249),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Center(
                    child: AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      transitionBuilder: (child, animation) =>
                          FadeTransition(opacity: animation, child: child),
                      child: Text(
                        secilentavsiye ?? "Tavsiye almak için butona bas",
                        key: ValueKey(secilentavsiye),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: Colors.white,
                          fontStyle: FontStyle.italic,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          const SizedBox(height: 10, child: Icon(Icons.arrow_downward_sharp)),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF0DB2E9),
              elevation: 15,
            ),
            onPressed: rastgeletavsiye,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(Icons.question_mark_outlined, color: Colors.white),
                Text("  Ne Yapsam", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
