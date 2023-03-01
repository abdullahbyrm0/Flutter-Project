import 'package:vizeodev/kisiler.dart';

import 'Veritabaniyardimcisi.dart';

class Kisilerdao{
   Future<List<kisiler>> tumKisiler() async{

    var db = await VeritabaniYardimcisi.vtErisimi();
    List<Map<String,dynamic>> maps = await db!.rawQuery("SELECT * FROM kisiler");
    return List.generate(maps.length, (i)
    {
      var satir = maps[i];
     return kisiler(satir["kisi_id"],satir["kisi_ad"], satir["kisi_soyad"], satir["kisi_kullaniciadi"],satir["kisi_sifre"]);

    });


  }
   Future<List<kisiler>> kisiarama(String aramaKelimesi) async{

     var db = await VeritabaniYardimcisi.vtErisimi();
     List<Map<String,dynamic>> maps = await db!.rawQuery("SELECT * FROM kisiler WHERE kisi_ad like'%$aramaKelimesi'");
     return List.generate(maps.length, (i)
     {
       var satir = maps[i];
       return kisiler(satir["kisi_id"],satir["kisi_ad"], satir["kisi_soyad"], satir["kisi_kullaniciadi"],satir["kisi_sifre"]);

     });


   }
   Future<void> kisiekle(String kisi_ad,String kisi_soyad) async{

     var db = await VeritabaniYardimcisi.vtErisimi();
      var bilgiler=Map<String,dynamic>();
      bilgiler["kisi_ad"]=kisi_ad;
      bilgiler["kisi_soyad"]=kisi_soyad;
     await db!.insert("kisiler", bilgiler);

   }
   Future<void> kisiguncelle(int kisi_id ,String kisi_ad,String kisi_soyad) async{

     var db = await VeritabaniYardimcisi.vtErisimi();
     var bilgiler=Map<String,dynamic>();
     bilgiler["kisi_ad"]=kisi_ad;
     bilgiler["kisi_soyad"]=kisi_soyad;
     await db!.update("kisiler", bilgiler ,where: "kisi_id=?",whereArgs: [kisi_id]);

   }
   Future<void> kisisil(int kisi_id) async{

     var db = await VeritabaniYardimcisi.vtErisimi();

     await db!.delete("kisiler" ,where: "kisi_id=?",whereArgs: [kisi_id]);

   }
}