import 'package:flutter/material.dart';
import 'package:vergelsin/screens/deneme_screen.dart';
import 'package:vergelsin/utils/color.dart';

class UyelikBilgilerim extends StatefulWidget {
  UyelikBilgilerim({Key? key}) : super(key: key);

  @override
  _UyelikBilgilerimState createState() => _UyelikBilgilerimState();
}

class _UyelikBilgilerimState extends State<UyelikBilgilerim> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: genelAppBar(context, "Üyelik Bilgilerim"),
      bottomNavigationBar: navBar(context),
    );
  }
}

PreferredSizeWidget? genelAppBar(BuildContext context, String title) {
  Size size = MediaQuery.of(context).size;
  return AppBar(
    backgroundColor: anaRenkKoyu,
    title: Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold),
    ),
    centerTitle: true,
    actions: [
      GestureDetector(
        child: Container(
          width: size.width * 0.2,
          margin: EdgeInsets.only(
              top: size.height * 0.02, bottom: size.height * 0.02),
          decoration: BoxDecoration(
              color: ikincilRenk,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(100),
                bottomLeft: Radius.circular(100),
              )),
          child: Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Row(
              children: [
                Icon(
                  Icons.shopping_bag_rounded,
                  size: size.width * 0.04,
                ),
                Text(
                  "500.00₺",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      )
    ],
  );
}
