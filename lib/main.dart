import 'package:flutter/material.dart';
import 'package:neyapsam/Anasayfa.dart';
import 'package:neyapsam/Ayarlar.dart';
import 'package:neyapsam/Istatistikler.dart';
import 'package:neyapsam/Tavsiyeler.dart';
import 'package:neyapsam/Hakkinda.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 13, 178, 233),
        ),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'NeYapsam'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var sayfalar = [
    Tavsiyeler(),
    Istatistikler(),
    Ayarlar(),
    Hakkinda(),
    Anasayfa(),
  ];

  int takip = 4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          [
            "Tavsiyeler",
            "İstatistikler",
            "Ayarlar",
            "Hakkında",
            "Anasayfa",
          ][takip],
        ),
      ),
      body: sayfalar[takip],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 13, 178, 233),
              ),
              child: const Text(
                "Menü",
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            ListTile(
              iconColor: const Color.fromARGB(255, 78, 16, 141),
              title: const Text(
                "ANA SAYFA",
                style: TextStyle(
                  color: Color.fromARGB(255, 17, 31, 186),
                  fontWeight: FontWeight.w700,
                ),
              ),
              leading: const Icon(Icons.home),
              onTap: () {
                setState(() {
                  takip = 4;
                });
                Navigator.pop(context);
              },
            ),

            ListTile(
              iconColor: const Color.fromARGB(255, 78, 16, 141),
              title: const Text(
                "TAVSİYELER",
                style: TextStyle(
                  color: Color.fromARGB(255, 17, 31, 186),
                  fontWeight: FontWeight.w700,
                ),
              ),
              leading: const Icon(Icons.list_alt),
              onTap: () {
                setState(() {
                  takip = 0;
                });
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 6),
            ListTile(
              iconColor: const Color.fromARGB(255, 78, 16, 141),

              title: const Text(
                "İSTATİSTİKLER",
                style: TextStyle(
                  color: Color.fromARGB(255, 17, 31, 186),
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: const Icon(Icons.bar_chart),
              onTap: () {
                setState(() {
                  takip = 1;
                });
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 6),
            ListTile(
              iconColor: const Color.fromARGB(255, 78, 16, 141),
              title: const Text(
                "AYARLAR",
                style: TextStyle(
                  color: Color.fromARGB(255, 17, 31, 186),
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: const Icon(Icons.settings),
              onTap: () {
                setState(() {
                  takip = 2;
                });
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 6),
            ListTile(
              iconColor: const Color.fromARGB(255, 78, 16, 141),
              title: const Text(
                "HAKKINDA",
                style: TextStyle(
                  color: Color.fromARGB(255, 17, 31, 186),
                  fontWeight: FontWeight.w700,
                ),
              ),
              leading: const Icon(Icons.list_alt),
              onTap: () {
                setState(() {
                  takip = 3;
                });
                Navigator.pop(context);
              },
            ),

            const SizedBox(height: 310),
            ListTile(
              iconColor: const Color.fromARGB(255, 78, 16, 141),

              title: const Text(
                "KAPAT",
                style: TextStyle(
                  color: Color.fromARGB(255, 17, 31, 186),
                  fontWeight: FontWeight.bold,
                ),
              ),
              leading: const Icon(Icons.close),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
