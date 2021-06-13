import 'package:flutter/material.dart';
import 'package:vergelsin/screens/deneme_screen.dart';
import 'package:vergelsin/screens/uyelik_bilgilerim.dart';
import 'package:vergelsin/utils/color.dart';

import 'package:vergelsin/widgets/kategori.dart';

class Arama extends StatefulWidget {
  const Arama({Key? key}) : super(key: key);

  @override
  _AramaState createState() => _AramaState();
}

class _AramaState extends State<Arama> {
  int yorumsayisi = 121;
  double fiyat = 77.77;
  int adet = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: genelAppBar(context, "Arama"),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: size.height * 0.07,
                child: TabBar(
                  labelColor: Colors.black,
                  indicatorColor: Colors.grey,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      text: "Kategoriler",
                    ),
                    Tab(
                      text: "Markalar",
                    ),
                    Tab(
                      text: "Geçmiş",
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * 0.8,
                child: TabBarView(children: [
                  kategoriler(context),
                  markalar(context),
                  gecmis(context)
                ]),
              ),
            ],
          ),
        ),
        bottomSheet: navBar(context),
      ),
    );
  }

  Widget kategoriler(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      color: arkaplanRenk,
      child: SingleChildScrollView(
        // physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.01,
              ),
              Card(
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.search_rounded),
                            enabledBorder: new OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "ürün ara",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.mic_none_outlined,
                            color: Colors.grey,
                            size: 20,
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.01,
              ),
              Kategori(
                kategoriadi: "Meyveler",
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 15,
                  itemBuilder: (context, i) {
                    return Kategori(kategoriadi: "Meyve ve Sebze");
                  }),
              SizedBox(
                height: size.height * 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget markalar(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.blue[50],
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: size.height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Card(
                child: Row(
                  children: [
                    Expanded(
                      flex: 8,
                      child: TextField(
                        decoration: InputDecoration(
                            suffixIcon: Icon(Icons.search_rounded),
                            enabledBorder: new OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            hintText: "marka ara",
                            hintStyle: TextStyle(color: Colors.grey)),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.mic_none_outlined,
                            color: Colors.grey,
                            size: 20,
                          )),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
          ],
        ),
      ),
    );
  }

  Widget gecmis(BuildContext context) {
    return Container(
      color: Colors.blue,
    );
  }
}
