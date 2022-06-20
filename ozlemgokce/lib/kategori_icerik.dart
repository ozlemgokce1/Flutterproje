import 'package:flutter/material.dart';
import 'package:ozlemgokce/companents/altmenu.dart';
import 'package:ozlemgokce/companents/header.dart';
import 'package:ozlemgokce/urun_detay.dart';

class CategoriContentPage extends StatelessWidget {
  String kategoriBaslik;
  CategoriContentPage(this.kategoriBaslik);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ListView(
                children: [
                  //başlık
                  header(kategoriBaslik, context),
                  SizedBox(height: 33),

                  //içerik

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildContent("Mavi Elbise", "assets/images/a.jpg",
                          "189,99", context),
                      SizedBox(
                        width: 15,
                      ),
                      buildContent("Uzun Siyah Elbise", "assets/images/h.jpg",
                          "200", context),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildContent(" Pembe Elbise", "assets/images/i.jpg",
                          "220,99", context),
                      SizedBox(
                        width: 15,
                      ),
                      buildContent("Kısa Siyah Elbise", "assets/images/j.jpg",
                          "189,99", context),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildContent("Kırmızı Elbise", "assets/images/k.jpg",
                          "149,99", context),
                      SizedBox(
                        width: 15,
                      ),
                      buildContent("Beyaz Çiçekli Elbise",
                          "assets/images/l.jpg", "149,99", context),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),

                  SizedBox(
                    height: 50,
                  ),
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

Widget buildContent(String text, String fotoUrl, String fiyat, context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return urun_detaypage(text);
      }));
    },
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.08),
              blurRadius: 25,
              offset: Offset(0, 16))
        ],
      ),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 16),
          Image.asset(
            fotoUrl,
            width: 150,
            height: 200,
          ),
          SizedBox(height: 42),
          Column(
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Color(0xFF0a1034),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                fiyat,
                style: TextStyle(
                  color: Color(0xFFcd853f),
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
