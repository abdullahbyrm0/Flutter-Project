import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class VeritabaniYardimcisi{
  static final String VeritabaniAdi="finalproje.sqlite";
  static Future<Database?> vtErisimi() async
  {
    String veritabaniyolu=join(await getDatabasesPath(),VeritabaniAdi);
    if(await databaseExists(veritabaniyolu))
    {
      print("Database var");
    }
    else
    {
     ByteData data= await rootBundle.load("veritabani/$VeritabaniAdi");
     List<int> bytes=data.buffer.asUint8List(data.offsetInBytes,data.lengthInBytes);
     await File(veritabaniyolu).writeAsBytes(bytes,flush: true);
     print("veri tabani kopyalandı");
    }
    return openDatabase(veritabaniyolu);
  }
}