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
          height: size.height * 0.8,
          color: arkaplanRenk,
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
                margin: EdgeInsets.only(left: 8, right: 8, top: 8),
                height: size.height * 0.6,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.white),
                child: Column(
                  children: [
                    textField(context, "E-Posta"),
                    phoneField(context, "Telefon Numaranız", true),
                    textField(context, "İsim Soyisim"),
                    acilirCinsiyet(context),
                    acilirTarih(context),
                    textField(context, "Şifre"),
                    textField(context, "Yeni Şifre"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String dropdownValue1 = 'Seçiniz';
  String dropdownValue2 = 'Seçiniz';
  Widget acilirCinsiyet(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(8),
      width: size.width,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(dropdownValue1),
            DropdownButton<String>(
              icon: const Icon(Icons.keyboard_arrow_down),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.grey),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue1 = newValue!;
                });
              },
              items: <String>['Kadın', 'Erkek']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget acilirTarih(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.all(8),
      width: size.width,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(dropdownValue2),
            DropdownButton<String>(
              icon: const Icon(Icons.keyboard_arrow_down),
              iconSize: 24,
              elevation: 16,
              style: const TextStyle(color: Colors.grey),
              underline: Container(
                height: 0,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue2 = newValue!;
                });
              },
              items: <String>['Tarih Eklenecek']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget phoneField(BuildContext context, String labelText, bool onayli) {
  Size size = MediaQuery.of(context).size;
  return Container(
    margin: EdgeInsets.all(8),
    height: size.height * 0.06,
    child: new Theme(
      data: new ThemeData(
        primaryColor: ikincilRenk,
        primaryColorDark: ikincilRenk,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: size.height * 0.06,
            width: (onayli) ? size.width * 0.67 : size.width * 0.9,
            child: TextField(
              decoration: InputDecoration(
                  focusedBorder: new OutlineInputBorder(
                      borderSide:
                          BorderSide(color: Color(0xFFff9600), width: 2)),
                  enabledBorder: new OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  labelText: labelText,
                  labelStyle: TextStyle(
                    color: Colors.grey,
                  )),
            ),
          ),
          (onayli)
              ? Row(
                  children: [
                    Icon(
                      Icons.check_circle,
                      color: ikincilRenk,
                    ),
                    Text(
                      "ONAYLI",
                      style: TextStyle(
                          color: ikincilRenk,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    )
                  ],
                )
              : Container()
        ],
      ),
    ),
  );
}

Widget textField(BuildContext context, String labelText) {
  Size size = MediaQuery.of(context).size;
  return Container(
    margin: EdgeInsets.all(8),
    height: size.height * 0.06,
    child: new Theme(
      data: new ThemeData(
        primaryColor: ikincilRenk,
        primaryColorDark: ikincilRenk,
      ),
      child: TextField(
        decoration: InputDecoration(
            focusedBorder: new OutlineInputBorder(
                borderSide: BorderSide(color: Color(0xFFff9600), width: 2)),
            enabledBorder: new OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
            ),
            labelText: labelText,
            labelStyle: TextStyle(
              color: Colors.grey,
            )),
      ),
    ),
  );
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
