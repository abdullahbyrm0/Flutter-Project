import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:vizeodev/Avengers.dart';
import 'package:vizeodev/Deadpool.dart';
import 'package:vizeodev/EsaretinBedeli.dart';
import 'package:vizeodev/Muslum.dart';
import 'package:vizeodev/Siccin6.dart';
import 'package:vizeodev/Yedincikogus.dart';
import 'package:vizeodev/kayitol.dart';
import 'package:vizeodev/kisiler.dart';
import 'package:vizeodev/kisilerdao.dart';
import 'package:vizeodev/kullanici_islemleri.dart';
import 'package:vizeodev/signin.dart';

void main() {
  runApp(const Anasayfa());
}

class Anasayfa extends StatelessWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Film Tutkunu'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool aramayapiliyormu=false ;
  String aramakelimesi="";
  Future<void> tumkisilerigoster() async{
    var liste =await Kisilerdao().tumKisiler();
    for(kisiler k in liste){

      print("*******");
      print("Kisi id = ${k.kisi_id}");
      print("Kisi ad = ${k.kisi_ad}");
      print("Kisi soyad = ${k.kisi_soyad}");
      print("Kisi kullanıcı adı = ${k.kisi_kullaniciadi}");
      print("Kisi şifre = ${k.kisi_sifre}");

    }
  }
  @override
  void initState(){
    tumkisilerigoster();
  }

  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        actions: [
          IconButton( onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => kayit()));
          }, icon: Icon(Icons.add,size: 30,)),
          IconButton( onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => signin()));
          }, icon: Icon(Icons.account_circle_outlined,size: 30,)),
          IconButton( onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => bilgi()));
          }, icon: Icon(Icons.info,size: 30,)),
        ],
        centerTitle: true,
        title: Text(
          widget.title,
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 50),
                child: Column(
                  children: [

                    Image.asset(
                      "assets/film_1.jpg",
                      width: 180,
                      height: 160,
                    ),
                    TextButton(

                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Film1()));
                        },
                        child: Text("7. Koğuştaki Mucize",style: TextStyle(fontSize: 16 ,color: Colors.black),)),
                    Image.asset(
                      "assets/film_2.jpg",
                      width: 180,
                      height: 160,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Film2()));
                        },
                        child: Text("Avengers EndGame",style: TextStyle(fontSize: 16 ,color: Colors.black),)),
                    Image.asset(
                      "assets/film_3.jpg",
                      width: 180,
                      height: 160,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Film3()));
                        },
                        child: Text("Deadpool",style: TextStyle(fontSize: 16 ,color: Colors.black),)),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 10,top: 50),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/film_4.jpg",
                      width: 180,
                      height: 160,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Film4()));
                        },
                        child: Text("Esaretin bedeli",style: TextStyle(fontSize: 16 ,color: Colors.black),)),
                    Image.asset(
                      "assets/film_5.jpg",
                      width: 180,
                      height: 160,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Film5()));
                        },
                        child: Text("Müslüm",style: TextStyle(fontSize: 16 ,color: Colors.black),)),
                    Image.asset(
                      "assets/film_6.jpg",
                      width: 180,
                      height: 160,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Film6()));
                        },
                        child: Text("Siccin 6",style: TextStyle(fontSize: 16 ,color: Colors.black),)),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex:currentIndex,
        backgroundColor: Colors.redAccent,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
        iconSize: 35,
        selectedFontSize: 18,
        showUnselectedLabels: false,
        onTap: (index)=>setState(() => currentIndex= index),

        items: [
          BottomNavigationBarItem(

              icon: Icon(Icons.home),
              label: "home",
              backgroundColor: Colors.red

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box),
              label: "Giriş",
              backgroundColor: Colors.red

          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: "Kayıt",
              backgroundColor: Colors.red


          ),

        ],


      ),
    );
  }
}
