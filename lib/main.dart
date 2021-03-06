import 'package:flutter/material.dart';
import 'package:vergelsin/screens/arama.dart';
import 'package:vergelsin/screens/deneme_screen.dart';
import 'package:vergelsin/screens/first_screen.dart';
import 'package:vergelsin/screens/hesabim.dart';
import 'package:vergelsin/screens/iletisim_tercihleri.dart';
import 'package:vergelsin/screens/kampanya_detay.dart';
import 'package:vergelsin/screens/sikca_sorulan_sorular.dart';
import 'package:vergelsin/screens/urun.dart';
import 'package:vergelsin/screens/uyelik_bilgilerim.dart';
import 'package:vergelsin/utils/color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'VerGelsin APP',
      theme: ThemeData(
        primaryColor: anaRenk,
        primarySwatch: Colors.blue,
        bottomSheetTheme:
            BottomSheetThemeData(backgroundColor: Colors.transparent),
      ),
      home: MyHomePage(title: 'VerGelsin APP'),
      debugShowCheckedModeBanner: false,
      routes: {
        //EKLENECEK HER YENİ SAYFA BURAYA ROUTE EDİLECEK!!!
        "/deneme_screen": (context) => DenemeScreen(),
        "/uyelik_bilgilerim": (context) => UyelikBilgilerim(),
        "/kampanya_detay": (context) => KampanyaDetay(),
        "/urun": (context) => Urun(),
        "/first_screen": (context) => FirstScreen(),
        "/sikca_sorulan_sorular": (context) => SikcaSorulanSorular(),
        "/arama": (context) => Arama(),
        "/profile_screen": (context) => ProfileScreen(),
        "/iletisim_tercihleri": (context) => IletisimTercihleri(),
        "/siparis_durumu": (context) => DenemeScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: anaRenk,
        centerTitle: true,
        title: Container(
          width: size.width * 0.3,
          child: Image.asset(
            "assets/app_logo.png",
            fit: BoxFit.fill,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              sayfaGecis(
                //Oluşturulan her sayfa için geçişler buraya button olarak aynı şekilde tanımlanacak.
                context,
                "Deneme Screen",
                () => Navigator.pushNamed(context, "/deneme_screen"),
              ),
              sayfaGecis(
                //Oluşturulan her sayfa için geçişler buraya button olarak aynı şekilde tanımlanacak.
                context,
                "Uyelik Bilgilerim",
                () => Navigator.pushNamed(context, "/uyelik_bilgilerim"),
              ),
              sayfaGecis(
                //Oluşturulan her sayfa için geçişler buraya button olarak aynı şekilde tanımlanacak.
                context,
                "Kampanya Detay",
                () => Navigator.pushNamed(context, "/kampanya_detay"),
              ),
              sayfaGecis(
                //Oluşturulan her sayfa için geçişler buraya button olarak aynı şekilde tanımlanacak.
                context,
                "Urun Ekranı",
                () => Navigator.pushNamed(context, "/urun"),
              ),
              sayfaGecis(
                //Oluşturulan her sayfa için geçişler buraya button olarak aynı şekilde tanımlanacak.
                context,
                "Sıkça Sorulan Sorular Ekranı",
                () => Navigator.pushNamed(context, "/sikca_sorulan_sorular"),
              ),
              sayfaGecis(
                //Oluşturulan her sayfa için geçişler buraya button olarak aynı şekilde tanımlanacak.
                context,
                "Arama Ekranı",
                () => Navigator.pushNamed(context, "/arama"),
              ),
              sayfaGecis(
                //Oluşturulan her sayfa için geçişler buraya button olarak aynı şekilde tanımlanacak.
                context,
                "Hesabım",
                () => Navigator.pushNamed(context, "/profile_screen"),
              ),
              sayfaGecis(
                //Oluşturulan her sayfa için geçişler buraya button olarak aynı şekilde tanımlanacak.
                context,
                "İletişim Tercihleri",
                () => Navigator.pushNamed(context, "/iletisim_tercihleri"),
              ),
              sayfaGecis(
                //Oluşturulan her sayfa için geçişler buraya button olarak aynı şekilde tanımlanacak.
                context,
                "Sipariş Durumu",
                () => Navigator.pushNamed(context, "/siparis_durumu"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget sayfaGecis(
    BuildContext context, String sayfaAdi, void Function()? onpress) {
  Size size = MediaQuery.of(context).size;
  return Container(
    padding: EdgeInsets.all(8),
    width: size.width * 0.9,
    height: size.height * 0.07,
    child: ElevatedButton(
      child: Text(sayfaAdi),
      onPressed: onpress,
    ),
  );
}
