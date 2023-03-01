import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:vizeodev/Yedincikogus.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: 'Film Tutkunu'),
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
  int currentIndex =  0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Align(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
        SizedBox(height: 10,),
            Text(
              "Filmler",
              style: TextStyle(
                fontSize: 24,
              ),
            ),
            Container(child: Divider(height: 20,color: Colors.black,),width: 150,),

            Container(width: 300,
              child: Card(
                shadowColor:  Colors.teal,
                color: Colors.white10,

                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Image.asset(
                        "assets/film_1.jpg",
                      ),
                      title: Text("Yedinci Koğuştaki Mucize"),
                      subtitle: Text("Drama "),
                      trailing: IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Film1()));
                          },

                          icon: Icon(Icons.info)),
                    ),

                  ],
                ),
              ),
            ),
            Container(width: 300,
              child: Card(
                shadowColor:  Colors.teal,

                color: Colors.white10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Image.asset(
                        "assets/film_2.jpg",
                      ),
                      title: Text("Avengers EndGame"),
                      subtitle: Text("Bilim Kurgu "),
                      trailing: IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Film1()));
                          },

                          icon: Icon(Icons.info)),
                    ),

                  ],
                ),
              ),
            ),
            Container(width: 300,
              child: Card(
                shadowColor:  Colors.teal,

                color: Colors.white10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Image.asset(
                        "assets/film_3.jpg",
                      ),
                      title: Text("Deadpool"),
                      subtitle: Text("Aksiyon "),
                      trailing: IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Film1()));
                          },

                          icon: Icon(Icons.info)),
                    ),

                  ],
                ),
              ),
            ),
            Container(width: 300,
              child: Card(
                shadowColor:  Colors.teal,

                color: Colors.white10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Image.asset(
                        "assets/film_4.jpg",
                      ),
                      title: Text("Esaretin Bedeli"),
                      subtitle: Text("Drama "),
                      trailing: IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Film1()));
                          },

                          icon: Icon(Icons.info)),
                    ),

                  ],
                ),
              ),
            ),
            Container(width: 300,
              child: Card(
                shadowColor:  Colors.teal,

                color: Colors.white10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Image.asset(
                        "assets/film_6.jpg",
                      ),
                      title: Text("Siccin 6"),
                      subtitle: Text("Korku "),
                      trailing: IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Film1()));
                          },

                          icon: Icon(Icons.info)),
                    ),

                  ],
                ),
              ),
            ),
            Container(width: 300,
              child: Card(
                shadowColor:  Colors.teal,

                color: Colors.white10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Image.asset(
                        "assets/film_5.jpg",
                      ),
                      title: Text("Müslüm"),
                      subtitle: Text("Drama "),
                      trailing: IconButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Film1()));
                          },

                          icon: Icon(Icons.info)),
                    ),

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
      backgroundColor: Colors.greenAccent,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.grey,
      onTap: (index)=>setState(() => currentIndex= index),

      items: [
        BottomNavigationBarItem(

            icon: Icon(Icons.home),
            label: "home",
            backgroundColor: Colors.red

        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Giriş",
            backgroundColor: Colors.red

        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Kayıt",
            backgroundColor: Colors.red

        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.verified_user),
            label: "Liste",
            backgroundColor: Colors.red

        )
      ],


      ),

    );
  }
}
