import 'package:flutter/material.dart';

class Soru extends StatefulWidget {
  final String baslik;
  const Soru({Key? key, required this.baslik}) : super(key: key);

  @override
  _SoruState createState() => _SoruState();
}

class _SoruState extends State<Soru> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.baslik,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.add))
        ],
      ),
    );
  }
}
