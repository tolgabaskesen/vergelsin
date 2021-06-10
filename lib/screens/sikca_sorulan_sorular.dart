import 'package:flutter/material.dart';
import 'package:vergelsin/screens/deneme_screen.dart';
import 'package:vergelsin/screens/uyelik_bilgilerim.dart';
import 'package:vergelsin/widgets/soru_kart.dart';

class SikcaSorulanSorular extends StatefulWidget {
  const SikcaSorulanSorular({Key? key}) : super(key: key);

  @override
  _SikcaSorulanSorularState createState() => _SikcaSorulanSorularState();
}

class _SikcaSorulanSorularState extends State<SikcaSorulanSorular> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: genelAppBar(context, "Sıkça Sorulan Sorular"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(8, 12, 8, 8),
              width: size.width,
              height: size.height * 0.25,
              child: Image.asset(
                "assets/promotion/promo1.png",
                fit: BoxFit.fill,
              ),
            ),
            Soru(baslik: "Where does it come from?"),
            Soru(baslik: "Where does it come from?"),
            Soru(baslik: "Where does it come from?"),
            Soru(baslik: "Where does it come from?"),
            Soru(baslik: "Where does it come from?"),
            Soru(baslik: "Where does it come from?"),
            Soru(baslik: "Where does it come from?"),
            Soru(baslik: "Where does it come from?"),
            Soru(baslik: "Where does it come from?"),
            Soru(baslik: "Where does it come from?"),
            SizedBox(
              height: size.height * 0.1,
            )
          ],
        ),
      ),
      bottomNavigationBar: navBar(context),
    );
  }
}
