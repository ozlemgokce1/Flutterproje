import 'package:flutter/material.dart';
import 'package:ozlemgokce/companents/altmenu.dart';
import 'package:ozlemgokce/companents/header.dart';
import 'package:ozlemgokce/kategori_icerik.dart';

class CategoriPage extends StatelessWidget {
  final List<String> kategori = [
    "Elbise",
    "Pantolon",
    "Tişört",
    "Etek",
    "Çanta",
    "Şort",
    "Ceket",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //header
                  header("Kategoriler", context),
                  SizedBox(height: 23),

                  //kategoriler
                  //veri tabanından kategori verileri çekileceğinden elle kategori isimleri girmek yerine liste oluşturuldu.
                  Expanded(
                    //alabildiğin tüm boyutu al demek
                    child: ListView(
                        children: kategori
                            .map((String baslik) =>
                                buildKategori(baslik, context))
                            .toList()),
                  )
                ],
              ),
            ),

            //alt menü
            altmenu(),
          ],
        ),
      ),
    );
  }
}

Widget buildKategori(String baslik, context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return CategoriContentPage(baslik);
      }));
    },
    child: Container(
      padding: EdgeInsets.all(24),
      margin: EdgeInsets.only(bottom: 16),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.25),
                blurRadius: 4,
                offset: Offset(0, 4))
          ]),
      child: Text(
        baslik,
        style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Color(0xFF0A1034)),
      ),
    ),
  );
}
