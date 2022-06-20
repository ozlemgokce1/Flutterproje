import 'package:flutter/material.dart';
import 'package:ozlemgokce/companents/altmenu.dart';
import 'package:ozlemgokce/companents/header.dart';

class urun_detaypage extends StatefulWidget {
  String urunBaslik;
  urun_detaypage(this.urunBaslik);

  @override
  State<urun_detaypage> createState() => _urun_detaypageState();
}

class _urun_detaypageState extends State<urun_detaypage> {
  List<Color> colors = [
    Color(0xFF52514F),
    Color(0xFF0001fc),
    Color(0xFF6f7972),
    Color(0xFFf5d8c0),
  ];
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
                  header(widget.urunBaslik, context),
                  SizedBox(height: 40),

                  //ürün fotoğrafı

                  Image.asset(
                    "assets/images/l.jpg",
                    width: 250,
                    height: 250,
                  ),

                  SizedBox(height: 40),

                  //renk seçenekleri
                  Text(
                    "Renk",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF0A1034)),
                  ),
                  SizedBox(height: 15),

                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: colors
                          .map((Color color) => renkSecenegi(color))
                          .toList()),
                  SizedBox(height: 30),
                  //sepete ekle butonu

                  GestureDetector(
                    onTap: (() {
                      print("Ürün sepete eklendi. ");
                      print(" ürünün ismi: " + widget.urunBaslik);
                    }),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Color(0xFFcd853f),
                      ),
                      child: Text(
                        "Sepete Ekle",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
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

Widget renkSecenegi(Color color) {
  return Container(
    margin: EdgeInsets.only(right: 15),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: color,
    ),
    width: 23,
    height: 23,
  );
}
