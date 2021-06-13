import 'package:flutter/material.dart';
import 'package:vergelsin/screens/deneme_screen.dart';
import 'package:vergelsin/screens/uyelik_bilgilerim.dart';
import 'package:vergelsin/utils/color.dart';

class IletisimTercihleri extends StatefulWidget {
  IletisimTercihleri({Key? key}) : super(key: key);

  @override
  _IletisimTercihleriState createState() => _IletisimTercihleriState();
}

class _IletisimTercihleriState extends State<IletisimTercihleri> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: genelAppBar(context, "İletişim Tercihleri"),
      bottomSheet: navBar(context),
      body: Container(
        height: size.height,
        width: size.width,
        color: arkaplanRenk,
        child: Column(
          children: [
            switchItem(
              "E-Posta",
              "Kampanyalarla ilgili e-posta almak istiyorum.",
              () {},
            )
          ],
        ),
      ),
    );
  }

  Widget switchItem(String baslik, String altmetin, void Function()? func) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.8,
      color: Colors.white,
      child: Text(""),
    );
  }
}
