import 'package:flutter/material.dart';
import 'package:vergelsin/utils/color.dart';

class UyelikBilgilerim extends StatefulWidget {
  UyelikBilgilerim({Key? key}) : super(key: key);

  @override
  _UyelikBilgilerimState createState() => _UyelikBilgilerimState();
}

class _UyelikBilgilerimState extends State<UyelikBilgilerim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: anaRenk,
        title: Text("Üyelik Bilgilerim"),
        centerTitle: true,
      ),
    );
  }
}
