import 'package:flutter/material.dart';
import 'package:vizeodev/Anasayfa.dart';
import 'package:vizeodev/main.dart';

class signin extends StatefulWidget {
  const signin({Key? key}) : super(key: key);
  @override
  State<signin> createState() => _signinState();
}

class _signinState extends State<signin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Sign in"),
      ),
      body: Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text("Giriş Yap",style: TextStyle(fontSize: 30),),
            ),
            Container(width: 200,child: Divider(height: 10,color: Colors.black,),),
            Padding(
              padding: const EdgeInsets.only(right: 8,left: 8,top: 20,bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/7/70/User_icon_BLACK-01.png"),radius: 25,backgroundColor: Colors.white,),
                  Container(
                      width: 300,
                      child:
                      TextField(decoration: InputDecoration(

                          border: OutlineInputBorder(),
                          labelText: "Kullanıcı Adı"
                      ),)
                  ),

                ],

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  CircleAvatar(backgroundImage: NetworkImage("https://icons-for-free.com/download-icon-lock+password+protect+safety+security+icon-1320086045132546966_512.png"),radius: 25,backgroundColor: Colors.white,),
                  Container(
                      width: 300,
                      child:
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(

                          border: OutlineInputBorder(),
                          labelText: "Şifre"
                      ),)
                  ),

                ],

              ),
            ),

            ElevatedButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Anasayfa()));
            }, child: Text("Giriş Yap"))
          ],
        ),
      ),

    );
  }
}
