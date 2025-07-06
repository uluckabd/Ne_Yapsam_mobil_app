import 'package:flutter/material.dart';

class Istatistikler extends StatefulWidget {
  const Istatistikler({super.key});

  @override
  State<Istatistikler> createState() => _IstatistiklerState();
}

class _IstatistiklerState extends State<Istatistikler> {
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
    "Oyun oyna",
    "Arkadaşınla buluş",
    "Fotoğraf çek",
    "Blog yaz / içerik üret",
  ];

  void _gosterDialog(String tavsiye) {
    int sayac = 0;

    showDialog(
      context: context,
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setStateDialog) {
            return AlertDialog(
              backgroundColor: const Color.fromARGB(255, 189, 238, 255),
              title: Text("Aktivite: $tavsiye"),
              content: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Sayaç:"),
                  Text(
                    "$sayac",
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.add_circle_outline),
                    onPressed: () {
                      setStateDialog(() {
                        sayac++;
                      });
                    },
                  ),
                ],
              ),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    "kaydet",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: tavsiyeler.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 4,
            margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 4),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            color: Colors.blue[50],
            child: ListTile(
              leading: Icon(
                Icons.check_circle_outline,
                color: Colors.blue[400],
              ),
              title: Text(
                tavsiyeler[index],
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () => _gosterDialog(tavsiyeler[index]),
            ),
          );
        },
      ),
    );
  }
}
