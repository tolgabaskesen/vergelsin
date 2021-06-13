import 'package:flutter/material.dart';
import 'package:vergelsin/screens/deneme_screen.dart';
import 'package:vergelsin/screens/uyelik_bilgilerim.dart';
import 'package:vergelsin/utils/color.dart';
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
    int soruadedi = 8;
    return Scaffold(
      appBar: genelAppBar(context, "Sıkça Sorulan Sorular"),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(4),
              alignment: Alignment.center,
              width: size.width,
              height: size.height * 0.25,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/background/bg1.png"))),
              child: Container(
                margin: EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "CANLI DESTEK",
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested.",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: ikincilRenk),
                        onPressed: () {},
                        child: Text("CANLI DESTEĞE BAĞLAN")),
                  ],
                ),
              ),
              
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: soruadedi,
                itemBuilder: (context, i) {
                  return Soru(
                    soru: "Where does it come from?",
                    cevap:
                        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English.",
                  );
                }),
            SizedBox(
              height: size.height * 0.1,
            )
          ],
        ),
      ),
      bottomSheet: navBar(context),
    );
  }
}
