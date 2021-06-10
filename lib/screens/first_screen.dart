import 'package:flutter/material.dart';
import 'package:vergelsin/utils/color.dart';

class FirstScreen extends StatefulWidget {
  FirstScreen({Key? key}) : super(key: key);

  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool isLogin = true;
  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    width: size.width,
                    height: size.height * 0.4,
                    color: anaRenk,
                  ),
                  Container(
                    width: size.width,
                    height: size.height * 0.6,
                    color: arkaplanRenk,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: size.height * 0.15, left: size.width * 0.25),
                child: Container(
                  width: size.width * 0.5,
                  height: size.height * 0.1,
                  child: Image.asset("assets/app_logo.png"),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: size.height * 0.30, left: 8, right: 8),
                child: Container(
                  height: size.height * 0.6,
                  width: size.width,
                  //padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Column(
                    children: [
                      Material(
                        elevation: 5,
                        child: Container(
                          height: size.height * 0.07,
                          width: size.width,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                height: size.height * 0.07,
                                width: size.width * 0.45,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: size.height * 0.06,
                                      width: size.width * 0.4,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isLogin = true;
                                            print("giriş");
                                          });
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: size.height * 0.06,
                                          width: size.width * 0.4,
                                          child: Text(
                                            "Giriş Yap",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ),
                                    (isLogin)
                                        ? Divider(
                                            color: anaRenkKoyu,
                                            thickness: 2,
                                            height: 2,
                                          )
                                        : Container(),
                                  ],
                                ),
                              ),
                              Container(
                                  width: size.width * 0.04,
                                  child: Image.asset(
                                    "assets/icons/two-arrows.png",
                                    fit: BoxFit.fill,
                                  )),
                              Container(
                                height: size.height * 0.07,
                                width: size.width * 0.45,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: size.height * 0.06,
                                      width: size.width * 0.4,
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            isLogin = false;
                                            print("kayıt");
                                          });
                                        },
                                        child: Container(
                                          alignment: Alignment.center,
                                          height: size.height * 0.06,
                                          width: size.width * 0.4,
                                          child: Text(
                                            "Kayıt Ol",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: anaRenkKoyu,
                                                fontSize: 16),
                                          ),
                                        ),
                                      ),
                                    ),
                                    (!isLogin)
                                        ? Divider(
                                            color: anaRenkKoyu,
                                            thickness: 2,
                                            height: 2,
                                          )
                                        : Container(),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      emailField(context, "E-Mail"),
                      passField(
                          context, "Şifrenizi buraya yazınız..", isVisible),
                      Container(
                        margin: EdgeInsets.only(left: 8, right: 8, top: 8),
                        height: size.height * 0.06,
                        width: size.width * 0.9,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Giriş Yap",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: size.width * 0.06),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: anaRenk,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 8, right: 8, top: 2),
                        height: size.height * 0.06,
                        width: size.width * 0.5,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Şifremi Unuttum?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: size.width * 0.03,
                                color: Colors.grey),
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          print("facebook");
                        },
                        child: Container(
                          width: size.width * 0.9,
                          height: size.height * 0.1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: size.width * 0.44,
                                height: size.height * 0.07,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: size.width * 0.05,
                                        height: size.width * 0.05,
                                        child: Image.asset(
                                          "assets/social/facebook.png",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                      SizedBox(
                                        width: size.width * 0.02,
                                      ),
                                      Text(
                                        "Facebook ile \n Kayıt Ol",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  print("google");
                                },
                                child: Container(
                                  width: size.width * 0.44,
                                  height: size.height * 0.07,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.grey)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          width: size.width * 0.05,
                                          height: size.width * 0.05,
                                          child: Image.asset(
                                            "assets/social/google.png",
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        SizedBox(
                                          width: size.width * 0.02,
                                        ),
                                        Text(
                                          "Google ile \n Kayıt Ol",
                                          textAlign: TextAlign.start,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget passField(BuildContext context, String labelText, bool visible) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.all(8),
          height: size.height * 0.06,
          width: size.width * 0.8,
          child: new Theme(
            data: new ThemeData(
              primaryColor: ikincilRenk,
              primaryColorDark: ikincilRenk,
            ),
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
              obscureText: visible,
            ),
          ),
        ),
        Container(
          height: size.height * 0.06,
          width: size.width * 0.1,
          child: GestureDetector(
            onTap: () {
              setState(() {
                isVisible = !isVisible;
                print("tolga");
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/icons/visibility.png",
                fit: BoxFit.fill,
              ),
            ),
          ),
        )
      ],
    );
  }
}

Widget emailField(BuildContext context, String labelText) {
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
