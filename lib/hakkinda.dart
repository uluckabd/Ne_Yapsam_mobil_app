import 'package:flutter/material.dart';

class Hakkinda extends StatefulWidget {
  const Hakkinda({super.key});

  @override
  State<Hakkinda> createState() => _HakkindaState();
}

class _HakkindaState extends State<Hakkinda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(child: Image.asset("resim/aa.jpg")),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Card(
              elevation: 20,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
              ),
              color: const Color.fromARGB(255, 255, 163, 26),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  " Neyapsam?, boş vaktinde ne yapacağına karar veremeyenler için tasarlanmış eğlenceli ve pratik bir öneri uygulamasıdır! "
                  "Rastgele ve farklı kategorilerden ilgi çekici aktiviteler sunar, seni harekete geçmeye teşvik eder. "
                  "uygulamayı aç; yeni keşifler ve keyifli anlar seni bekliyor! "
                  "Her kullanımda taptaze fikirlerle zamanını daha verimli, daha eğlenceli ve dolu dolu geçirmeni sağlar. "
                  "Boş zamanlarını değerlendir, kendini geliştir! "
                  "Üstelik, sen de kendi tavsiyelerini ekleyerek topluluğa katkıda bulunabilir, uygulamanın zenginleşmesine destek olabilirsin. "
                  "Haydi, hemen başla ve ne yapacağına karar ver!",
                  style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
