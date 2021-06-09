import 'package:flutter/material.dart';
import 'package:vergelsin/utils/color.dart';

class DenemeScreen extends StatefulWidget {
  DenemeScreen({Key? key}) : super(key: key);

  @override
  _DenemeScreenState createState() => _DenemeScreenState();
}

class _DenemeScreenState extends State<DenemeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: anaRenk,
        title: Text("Deneme"),
      ),
      body: Container(),
    );
  }
}
