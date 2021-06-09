import 'package:flutter/material.dart';
import 'package:vergelsin/utils/color.dart';

class KampanyaDetay extends StatefulWidget {
  const KampanyaDetay({Key? key}) : super(key: key);

  @override
  _KampanyaDetayState createState() => _KampanyaDetayState();
}

class _KampanyaDetayState extends State<KampanyaDetay> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Kampanya Detay"),
        backgroundColor: Colors.blue[900],
      ),
      body: SingleChildScrollView(
        child: Column(
          /* mainAxisAlignment: MainAxisAlignment.center, */
          /*  crossAxisAlignment: CrossAxisAlignment.center, */
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(8, 12, 8, 8),
              width: size.width,
              height: size.height * 0.25,
              child: Image.asset(
                "assets/promotion/promo1.png",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: Text(
                "GetirYemek'te indirimli siparişinize Getir'den aynı gün 20 TL indirim!",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.blue[900]),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: Text(
                "It is a long established fact that a reader will be ditracted by the readable content of a page when looking at its layout.",
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: Text(
                "Kampanya Koşulları",
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
            right: size.width * 0.025, left: size.width * 0.025),
        child: Container(
          width: size.width * 0.87,
          height: size.height * 0.07,
          child: ElevatedButton(
            onPressed: () {},
            child: Text("ÜRÜNÜ GÖSTER"),
            style: ElevatedButton.styleFrom(
              primary: anaRenkKoyu,
            ),
          ),
        ),
      ),
    );
  }
}
