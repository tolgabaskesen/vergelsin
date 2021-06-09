import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:vergelsin/screens/uyelik_bilgilerim.dart';
import 'package:vergelsin/utils/color.dart';

class DenemeScreen extends StatefulWidget {
  DenemeScreen({Key? key}) : super(key: key);

  @override
  _DenemeScreenState createState() => _DenemeScreenState();
}

class _DenemeScreenState extends State<DenemeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: genelAppBar(context, "Deneme"),
      body: Container(),
      bottomNavigationBar: navBar(context),
    );
  }
}

Widget navBar(BuildContext context) {
  Size size = MediaQuery.of(context).size;
  return Container(
    width: size.width,
    height: size.height * 0.12,
    color: Colors.transparent,
    alignment: Alignment.bottomCenter,
    child: Stack(
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.only(
            top: size.height * 0.05,
          ),
          width: size.width,
          height: size.height * 0.07,
          color: anaRenk,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.home,
                    color: bottomIconColor,
                  )),
              IconButton(
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.home,
                    color: bottomIconColor,
                  )),
              Container(
                height: size.height * 0.1,
                width: size.height * 0.1,
              ),
              IconButton(
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.home,
                    color: bottomIconColor,
                  )),
              IconButton(
                  splashColor: bottomIconColor,
                  onPressed: () {},
                  icon: FaIcon(
                    FontAwesomeIcons.home,
                    color: bottomIconColor,
                  )),
            ],
          ),
        ),
        Container(
            alignment: Alignment.center,
            height: size.width * 0.22,
            width: size.width * 0.22,
            margin: EdgeInsets.only(
              left: size.width * 0.39,
            ),
            decoration: BoxDecoration(
              color: arkaplanRenk,
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            child: GestureDetector(
              onTap: () => print("tolga"),
              child: Image.asset("assets/bottom_bar_icon.png"),
            )),
      ],
    ),
  );
}
