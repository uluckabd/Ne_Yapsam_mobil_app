import 'package:flutter/material.dart';

class Ayarlar extends StatefulWidget {
  const Ayarlar({super.key});

  @override
  State<Ayarlar> createState() => _AyarlarState();
}

class _AyarlarState extends State<Ayarlar> {
  String secilendil = "türkçe";
  final List<String> diller = ["Türkçe", "İngilizce", "Almanca"];
  bool bildirim = false;
  bool tema = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            iconColor: const Color.fromARGB(255, 78, 16, 141),

            leading: Icon(Icons.person),
            title: Text("kullanıcı adı değiştir"),
            trailing: Icon(Icons.edit),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  TextEditingController kontrol = TextEditingController();

                  return AlertDialog(
                    title: Text("kullanıcı adını değiştir"),
                    content: TextField(
                      controller: kontrol,
                      decoration: InputDecoration(
                        hintText: "yeni kullanıcı adını giriniz",
                      ),
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("iptal"),
                      ),
                      TextButton(
                        onPressed: () => Navigator.pop(context),
                        child: Text("kaydet"),
                      ),
                    ],
                  );
                },
              );
            },
          ),

          ListTile(
            iconColor: const Color.fromARGB(255, 78, 16, 141),

            leading: Icon(Icons.brightness_6),
            title: Text("Temayı Değiştir"),
            trailing: Switch(
              activeColor: Color(0xFF0DB2E9),
              value: tema,
              onChanged: (bool yeniDeger) {
                setState(() {
                  tema = yeniDeger;
                });
              },
            ),
          ),

          ListTile(
            iconColor: const Color.fromARGB(255, 78, 16, 141),

            leading: Icon(Icons.notifications),
            title: Text("Bildirimler"),
            trailing: Switch(
              activeColor: Color(0xFF0DB2E9),
              value: bildirim,
              onChanged: (val) => setState(() => bildirim = val),
            ),
          ),
          ListTile(
            iconColor: const Color.fromARGB(255, 78, 16, 141),
            leading: Icon(Icons.language),
            title: Text("Dil Seçimi"),
            trailing: Icon(Icons.arrow_drop_down),
          ),
        ],
      ),
    );
  }
}
