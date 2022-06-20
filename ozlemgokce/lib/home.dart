import 'package:flutter/material.dart';
import 'package:ozlemgokce/companents/altmenu.dart';
import 'package:ozlemgokce/kategori.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  //Başlık

                  Padding(
                    padding: const EdgeInsets.only(top: 15.0),
                    child: Text(
                      "ANASAYFA",
                      style: TextStyle(
                        fontSize: 24,
                        color: Color(0xFF0A1034),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  //Butonlar
                  Padding(
                    padding: EdgeInsets.only(top: 35),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buildNav(
                            "Kategori", Icons.menu, CategoriPage(), context),
                        buildNav("Favori", Icons.star_border, widget, context),
                        buildNav("Kampanyalar", Icons.card_giftcard, widget,
                            context),
                        buildNav("Satışlar", Icons.people, widget, context),

                        /*
                       Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 19, vertical: 22),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFf5f5dc)),
                              child:  Icon(
                                Icons.menu,
                                color: Color(0xFFcd853f),
                                size: 18, 
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Kategori",
                              style: TextStyle(
                                color: Color(0xFFcd853f),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 45),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 19, vertical: 22),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFf5f5dc)),
                              child: Icon(
                                Icons.star_border,
                                color: Color(0xFFcd853f),
                                size: 18,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Favori",
                              style: TextStyle(
                                color: Color(0xFFcd853f),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 45),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 19, vertical: 22),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFf5f5dc)),
                              child: Icon(
                                Icons.card_giftcard,
                                color: Color(0xFFcd853f),
                                size: 18,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Hediyeler",
                              style: TextStyle(
                                color: Color(0xFFcd853f),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 45),
                        Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 19, vertical: 22),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Color(0xFFf5f5dc)),
                              child: Icon(
                                Icons.sell,
                                color: Color(0xFFcd853f),
                                size: 18,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Satışlar",
                              style: TextStyle(
                                color: Color(0xFFcd853f),
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),*/
                      ],
                    ),
                  ),

                  SizedBox(height: 40),

                  //ürünler başlık
                  Text(
                    "ÜRÜNLER",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Color(0xFF0A1034)),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  //ürünler
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 12, top: 12, bottom: 21, right: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //-%50
                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xFFf5f5dc)),
                              child: Text(
                                "-50%",
                                style: TextStyle(
                                    color: Color(0xFFcd853f), fontSize: 12),
                              ),
                            ),

                            SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              "assets/images/a.jpg",
                              width: 150,
                              height: 200,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("Mavi Kısa Elbise",
                                style: TextStyle(
                                    color: Color(0xFF0A1034), fontSize: 18)),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 12, top: 12, bottom: 21, right: 12),
                        child: Column(
                          children: [
                            //-%50
                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xFFf5f5dc)),
                              child: Text(
                                "-50%",
                                style: TextStyle(
                                    color: Color(0xFFcd853f), fontSize: 12),
                              ),
                            ),

                            SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              "assets/images/b.jpg",
                              width: 150,
                              height: 200,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("Kahverengi Tişört",
                                style: TextStyle(
                                    color: Color(0xFF0A1034), fontSize: 18)),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 12, top: 12, bottom: 21, right: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //-%50
                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xFFf5f5dc)),
                              child: Text(
                                "-50%",
                                style: TextStyle(
                                    color: Color(0xFFcd853f), fontSize: 12),
                              ),
                            ),

                            SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              "assets/images/c.jpg",
                              width: 150,
                              height: 200,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("Kot Etek",
                                style: TextStyle(
                                    color: Color(0xFF0A1034), fontSize: 18)),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 12, top: 12, bottom: 21, right: 12),
                        child: Column(
                          children: [
                            //-%50
                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xFFf5f5dc)),
                              child: Text(
                                "-50%",
                                style: TextStyle(
                                    color: Color(0xFFcd853f), fontSize: 12),
                              ),
                            ),

                            SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              "assets/images/d.jpg",
                              width: 150,
                              height: 200,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("Renkli Gömlek",
                                style: TextStyle(
                                    color: Color(0xFF0A1034), fontSize: 18)),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: EdgeInsets.only(
                            left: 12, top: 12, bottom: 21, right: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //-%50
                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xFFf5f5dc)),
                              child: Text(
                                "-50%",
                                style: TextStyle(
                                    color: Color(0xFFcd853f), fontSize: 12),
                              ),
                            ),

                            SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              "assets/images/e.jpg",
                              width: 150,
                              height: 200,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("Pembe Gömlek",
                                style: TextStyle(
                                    color: Color(0xFF0A1034), fontSize: 18)),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 12, top: 12, bottom: 21, right: 12),
                        child: Column(
                          children: [
                            //-%50
                            Container(
                              padding: EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(2),
                                  color: Color(0xFFf5f5dc)),
                              child: Text(
                                "-50%",
                                style: TextStyle(
                                    color: Color(0xFFcd853f), fontSize: 12),
                              ),
                            ),

                            SizedBox(
                              height: 20,
                            ),
                            Image.asset(
                              "assets/images/f.jpg",
                              width: 150,
                              height: 200,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text("Kot Pantolon",
                                style: TextStyle(
                                    color: Color(0xFF0A1034), fontSize: 18)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //alt menu
            altmenu(),
          ],
        ),
      ),
    );
  }
}

Widget buildNav(@required String text, @required IconData icon, Widget widget,
    BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return widget;
      }));
    },
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 38, vertical: 22),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Color(0xFFf5f5dc)),
          child: Icon(
            icon,
            color: Color(0xFFcd853f),
            size: 18,
          ),
        ),
        SizedBox(height: 8),
        Text(
          text,
          style: TextStyle(
            color: Color(0xFFcd853f),
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    ),
  );
}
