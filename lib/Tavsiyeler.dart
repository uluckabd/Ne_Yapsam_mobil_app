import 'package:flutter/material.dart';

class Tavsiyeler extends StatefulWidget {
  const Tavsiyeler({super.key});

  @override
  State<Tavsiyeler> createState() => _TavsiyelerState();
}

class _TavsiyelerState extends State<Tavsiyeler> {
  List<String> tavsiyeler = [
    "Yürüyüş yap",
    "Kitap oku",
    "İlgilendiğin sporu yap",
    "Bir arkadaşına mesaj at",
    "yabancı dil çalış",
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

  void tavsiyeEkle() {
    TextEditingController kontrol = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color.fromARGB(255, 189, 238, 255),
        title: const Text("Tavsiye Ekle"),
        content: TextField(
          controller: kontrol,
          decoration: const InputDecoration(hintText: "Tavsiyeni buraya yaz"),
        ),
        actions: [
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              "İptal",
              style: TextStyle(color: Color.fromARGB(255, 251, 3, 3)),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (kontrol.text.isNotEmpty) {
                setState(() {
                  tavsiyeler.add(kontrol.text);
                });
                Navigator.pop(context);
              }
            },
            child: const Text("Ekle", style: TextStyle(color: Colors.green)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2 / 1,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        itemCount: tavsiyeler.length,
        itemBuilder: (context, index) {
          return Card(
            color: const Color.fromARGB(255, 234, 223, 247),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  tavsiyeler[index],
                  style: TextStyle(
                    color: Color(0xFF311B92),
                    fontSize: 15,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: tavsiyeEkle,
        child: const Icon(Icons.add),
        tooltip: "Yeni Tavsiye Ekle",
      ),
    );
  }
}
