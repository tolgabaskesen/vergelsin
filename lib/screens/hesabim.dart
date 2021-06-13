import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:vergelsin/screens/deneme_screen.dart';
import 'package:vergelsin/screens/uyelik_bilgilerim.dart';
import 'package:vergelsin/utils/color.dart';

class ProfileScreen extends StatefulWidget {
  ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: genelAppBar(context, "Hesabım"),
      bottomSheet: navBar(context),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height * 0.9,
          color: arkaplanRenk,
          alignment: Alignment.center,
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
                            child: AutoSizeText("Miraç Yıldırım",
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
                              "Düzenle",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              profileButtons("Hesabım", FontAwesomeIcons.user, () {
                print("1");
              }),
              profileButtons("Favoriler", FontAwesomeIcons.heart, () {
                print("2");
              }),
              profileButtons("Adreslerim", FontAwesomeIcons.mapMarkedAlt, () {
                print("3");
              }),
              profileButtons(
                  "Geçmiş Siparişlerim", FontAwesomeIcons.shoppingBag, () {
                print("4");
              }),
              profileButtons("Ödeme Yöntemlerim", FontAwesomeIcons.handshake,
                  () {
                print("5");
              }),
              profileButtons("İletişim Tercihleri", FontAwesomeIcons.comments,
                  () {
                print("6");
              }),
              profileButtons("Kuponlarım", FontAwesomeIcons.ticketAlt, () {
                print("7");
              }),
              profileButtons("Yardım", FontAwesomeIcons.questionCircle, () {
                print("8");
              }),
              profileButtons("Çıkış", FontAwesomeIcons.signOutAlt, () {
                print("9");
              }),
              Container(
                alignment: Alignment.center,
                width: size.width,
                child: Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(width: size.width * 0.2),
                    socialIcons("assets/social/faceSiyah.png", () {}),
                    socialIcons("assets/social/twitSiyah.png", () {}),
                    socialIcons("assets/social/linkedSiyah.png", () {}),
                    socialIcons("assets/social/youtubeSiyah.png", () {}),
                    socialIcons("assets/social/instaSiyah.png", () {}),
                  ],
                ),
              ),
              SizedBox(height: size.height * 0.1)
            ],
          ),
        ),
      ),
    );
  }

  Widget socialIcons(String resim, void Function()? func) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, right: 8.0, top: 8.0),
      child: GestureDetector(
        child: Container(
          color: Colors.white,
          width: size.width * 0.1,
          height: size.width * 0.1,
          child: Image.asset(resim),
        ),
      ),
    );
  }

  Widget profileButtons(String text, IconData icon, void Function()? func) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
      child: GestureDetector(
        child: Container(
          color: Colors.white,
          width: size.width,
          height: size.height * 0.06,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: size.width * 0.1,
                    child: FaIcon(
                      icon,
                      color: anaRenkKoyu,
                      size: size.width * 0.05,
                    ),
                  ),
                  AutoSizeText(
                    text,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Icon(Icons.keyboard_arrow_right_outlined),
            ],
          ),
        ),
        onTap: func,
      ),
    );
  }
}
