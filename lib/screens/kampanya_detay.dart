import 'package:flutter/material.dart';

class KampanyaDetay extends StatefulWidget {
  const KampanyaDetay({Key? key}) : super(key: key);

  @override
  _KampanyaDetayState createState() => _KampanyaDetayState();
}

class _KampanyaDetayState extends State<KampanyaDetay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kampanya Detay"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 300,
              child: Image.asset(
                "assets/promotion/promo1.png",
                fit: BoxFit.cover,
              ),
            ),
            Flexible(child: Text("Buraya detay metinleri gelecek"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
    );
  }
}
