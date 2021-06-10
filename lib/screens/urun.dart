import 'package:flutter/material.dart';

class Urun extends StatefulWidget {
  const Urun({Key? key}) : super(key: key);

  @override
  _UrunState createState() => _UrunState();
}

class _UrunState extends State<Urun> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: TabBarView(children: [aciklama(), ozellikler(), yorumlar()]),
        ));
  }
}

Widget aciklama() {
  return Container();
}

Widget ozellikler() {
  return Container();
}

Widget yorumlar() {
  return Container();
}
