import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sicermat/ui/menu1.dart';
import 'package:sicermat/ui/menu2.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[800],
        title: Text(
          "Sistem Hubungan Eksklusif Berbasis Teknologi",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white70,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            color: Colors.teal[800],
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: GridView.count(
                shrinkWrap: true,
                physics:
                    NeverScrollableScrollPhysics(), // Menghindari scroll ganda
                crossAxisCount: 2,
                crossAxisSpacing: 40,
                mainAxisSpacing: 30,
                children: [
                  itemDashboard(context, "Persyaratan Dukcapil",
                      CupertinoIcons.doc_checkmark, Colors.deepOrange, Menu1()),
                  itemDashboard(
                      context,
                      "Formulir Dukcapil",
                      CupertinoIcons.doc_text_search,
                      Colors.deepOrange,
                      Menu2()),
                  // itemDashboard(context, "Layanan Umum", CupertinoIcons.airplane,
                  //     Colors.deepOrange, Menu3()),
                  // itemDashboard(context, "Kegiatan Rutin",
                  //     CupertinoIcons.archivebox_fill, Colors.deepOrange, Menu4()),
                  // itemDashboard(context, "Pendataan Warga",
                  //     CupertinoIcons.archivebox_fill, Colors.deepOrange, Menu5()),
                  // itemDashboard(context, "Informasi Nama dan No Telp",
                  //     CupertinoIcons.archivebox_fill, Colors.deepOrange, Menu6()),
                  // itemDashboard(context, "Produk RW 05",
                  //     CupertinoIcons.archivebox_fill, Colors.deepOrange),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget itemDashboard(BuildContext context, String title, IconData icon,
      Color background, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 5),
              color: Theme.of(context).primaryColor.withOpacity(.2),
              spreadRadius: 2,
              blurRadius: 5,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: background,
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: Colors.white),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
