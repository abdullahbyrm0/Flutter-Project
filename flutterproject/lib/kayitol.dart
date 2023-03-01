import 'package:flutter/material.dart';
import 'package:vizeodev/Anasayfa.dart';
import 'package:vizeodev/main.dart';
import 'package:vizeodev/signin.dart';

class kayit extends StatefulWidget {
  const kayit({Key? key}) : super(key: key);
  @override
  State<kayit> createState() => _kayitState();
}

class _kayitState extends State<kayit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Kayıt Ol"),
      ),
      body: Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text("Kayıt Ol",style: TextStyle(fontSize: 30),),
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
                            labelText: "Şifre Doğrulama"
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

                  CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrZz0zYNRFObH1pQNXo9kCc3rsxE1DcKAPURUIKhVl9RS06x4PNAp49zY0PHUhkDn54Kg&usqp=CAU"),radius: 25,backgroundColor: Colors.white,),
                  Container(
                      width: 300,
                      child:
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(

                            border: OutlineInputBorder(),
                            labelText: "E-Posta"
                        ),)
                  ),

                ],

              ),
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => signin()));
            }, child: Text("Kayıt Ol")),
          ],
        ),
      ),

    );
  }
}
