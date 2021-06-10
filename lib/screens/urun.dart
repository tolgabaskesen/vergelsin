import 'package:flutter/material.dart';

import 'package:vergelsin/utils/color.dart';

class Urun extends StatefulWidget {
  const Urun({Key? key}) : super(key: key);

  @override
  _UrunState createState() => _UrunState();
}

class _UrunState extends State<Urun> {
  int yorumsayisi = 121;
  double fiyat = 77.77;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Ürün"),
          centerTitle: true,
          backgroundColor: anaRenkKoyu,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              TabBar(
                labelColor: Colors.black,
                indicatorColor: Colors.grey,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(
                    text: "Açıklama",
                  ),
                  Tab(
                    text: "Özellikler",
                  ),
                  Tab(
                    text: "Yorumlar($yorumsayisi)",
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(60, 0, 0, 8),
                        width: size.width * 0.55,
                        height: size.height * 0.25,
                        child: Image.asset(
                          "assets/food/sogan.png",
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(60, 0, 0, 0),
                        color: anaRenkKoyu,
                        child: Text(
                          "%10 İNDİRİM!",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 8, 8, 8),
                        child: Text(
                          "Soğan Kuru Dökme Kg",
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(60, 0, 0, 8),
                        child: Text(
                          "$fiyat TL",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 17),
                        ),
                      )
                    ],
                  ),
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        iconSize: 30,
                        onPressed: () {},
                        icon: Icon(Icons.favorite_outline_rounded),
                      ),
                      SizedBox(
                        height: size.height * 0.04,
                      ),
                      IconButton(
                        iconSize: 30,
                        onPressed: () {},
                        icon: Icon(Icons.zoom_in_rounded),
                      ),
                    ],
                  )
                ],
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
              ),
              SizedBox(
                height: size.height * 0.1,
              )
            ],
          ),
        ),
        floatingActionButton: Container(
            /*  width: size.width * 0.87,
            height: size.height * 0.07, */
            color: Color(0xBBFFFFFF),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
                    height: size.height * 0.05,
                    width: size.width * 0.15,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.grey[350],
                      ),
                      clipBehavior: Clip.none,
                      onPressed: () {},
                      child: Icon(
                        Icons.remove,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: size.height * 0.05,
                    width: size.width * 0.15,
                    color: Colors.white,
                    child: Text(
                      "5",
                      style: TextStyle(
                          color: Colors.black54,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: size.height * 0.05,
                    width: size.width * 0.15,
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(primary: Colors.grey[350]),
                      clipBehavior: Clip.none,
                      onPressed: () {},
                      child: Icon(
                        Icons.add,
                        color: Colors.black54,
                      ),
                    ),
                  ),
                ]),
                Container(
                    width: size.width * 0.5,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Sepete Ekle"),
                      style:
                          ElevatedButton.styleFrom(primary: Colors.yellow[800]),
                    ))
              ],
            )),
      ),
    );
  }

  Widget aciklama() {
    return Container(
      color: Colors.red,
    );
  }

  Widget ozellikler() {
    return Container(
      color: Colors.yellow,
    );
  }

  Widget yorumlar() {
    return Container(
      color: Colors.blue,
    );
  }
}
