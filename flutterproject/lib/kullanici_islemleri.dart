import 'package:flutter/material.dart';
import 'package:vizeodev/Anasayfa.dart';
import 'package:vizeodev/kisiler.dart';
import 'package:vizeodev/kisilerdao.dart';
import 'package:vizeodev/main.dart';
import 'package:vizeodev/signin.dart';

class bilgi extends StatefulWidget {
  const bilgi({Key? key}) : super(key: key);
  @override
  State<bilgi> createState() => _bilgiState();
}

class _bilgiState extends State<bilgi> {
  bool aramayapiliyormu=false;
  String aramakelimesi="";


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Kullanıcı Bilgileri"),
      ),
      body: Center(




      ),

    );
  }
}
