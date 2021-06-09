import 'package:auto_size_text/auto_size_text.dart';
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
      //bottomNavigationBar: navBar(context),
      bottomSheet: navBar(context),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          color: Colors.black,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 8, right: 8),
                height: size.height * 0.07,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/icons/profilephoto.png"),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Text("Miraç Yıldırım",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16)),
                          ),
                        ],
                      ),
                      GestureDetector(
                        child: Container(
                          margin: EdgeInsets.only(
                              top: size.height * 0.015,
                              bottom: size.height * 0.015),
                          decoration: BoxDecoration(
                              color: ikincilRenk,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: AutoSizeText(
                              "Hesabıma Dön",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 8, right: 8),
                height: size.height * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.red),
              ),
            ],
          ),
        ),
      ),
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
