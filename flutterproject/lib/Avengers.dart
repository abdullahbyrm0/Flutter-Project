import 'package:flutter/material.dart';
import 'package:vizeodev/main.dart';

class Film2 extends StatefulWidget {
  const Film2({Key? key}) : super(key: key);

  @override
  State<Film2> createState() => _Film2State();
}


class _Film2State extends State<Film2> {
  int filmNo = 2;
  List<String> filmler = [
    "Yedinci Koğuştaki Mucize",
    "Avengers EndGame",
    "Deadpool",
    "Esaretin bedeli",
    "Müslüm",
    "Siccin6"
  ];
  List<String> filmaAciklama = [
    "7. Koğuştaki Mucize, 7 yaşındaki kızı ile aynı zeka yaşına sahip bir babanın adalet arayışını konu ediyor. 1983 yılında bir Ege kasabasında küçük bir kız ölür. Ölen küçük kız sıkıyönetim komutanının kızıdır ve onun ölümünün sorumlusu olarak babaannesi ile yaşayan ve 7 yaşında bir kızı olan Memo görülür. Memo, her ne kadar suçsuz olduğunu anlatsa da kimse ona inanmaz. İdam cezasına çarptırılan Memo'nun yakınları adaletin sağlanması için uğraşırken, Memo ve kızı Ova'nın tek istediği birbirlerine kavuşabilmektir. Memo, bir mucize gerçekleşip idam cezasından kurtulabilecek midir?",
    "Avengers Infinity War'un ardından pek çok süper kahraman küle dönüşmüştür. Doktor Strange, Gamora, Drax, Mantis, genç Örümcek Adam, Black Panther, Bucky Barnes, Groot, Scarlet Witch, Vision, Star Lord, Maria Hill, The Wasp ve Nick Fury gibi pek çok kahraman, Thanos'un Sonsuzluk Eldiveni'ni ele geçirmesi ve kendi dengesini kurması yüzünden yok olmuştur ve dünya umutsuz haldedir. Dünya üzerinde kalan Black Widow, Kaptan Amerika, Thor ve Hulk kendi yaslarını tutmaktayken, Iron ve Nebula ise kontrol edemedikleri bir uzay gemisinin içinde, uzay boşluğunda sürüklenmektedirler. Süper kahramanlar takımı için işler pek de iyi görünmemektedir",
    "Marvel Comics'in en alışılmadık anti-kahramanı Deadpool, eski bir Özel Kuvvet askeri olan Wade Wilson'un, üzerinde uygulanan zorlu bir deneyin onu hızlandırılmış kendini iyileştirme gücü ve alt egosuyla baş başa bırakmasının hikayesi",
    "Esaretin Bedeli, Andy ve Red isimli iki mahkumun parmaklıklar ardında kurdukları dünyanın hikayesini anlatıyor. Andy Dufresne, genç ve başarılı bir bankerdir. Karısını ve karısının sevgilisini öldürmek suçundan yargılanır ve ömür boyu hapis cezası alır. Shawsank Hapishanesinde dayak, işkence, tecavüz, her türlü durum yaşanmaktadır fakat Andy gene de hayata bağlı ve iyimserdir. Bu tutumu etrafındakileri de etkiler. Andy umutlu bakış açısıyla çevresindeki tüm mahkumları, parmaklıklar arkasında bile özgür bir yaşam olabileceğine inandırır. Andy'nin bu çabalarına ortak olacak bir arkadaşı da olacaktır: Red.Bir Stephen King uyarlaması olan filmde Morgan Freeman ve Tim Robbins başrolde. Film, 1995te, aralarında en iyi film adaylığı da olmak üzere tam 7 dalda Oscara aday gösterildi",
    "Müslüm, arabesk müziğinin efsane ismi Müslüm Gürsesin hayat hikayesini beyaz perdeye taşıyor. Unutulmaz ses sanatçısının iniş ve çıkışlarla dolu yaşamının anlatıldığı filmde, Müslüm Gürsesin milyonları etkileyen müziğine, çocukluğundan ölümüne kadar geçen zamanda yaşamına etki eden kişilere, çok sevdiğini her fırsatta dile getirdiği eşi Muhterem Nura odaklanılıyor. Timuçin Esenin Müslüm Gürsesi canlandırdığı filmde, Muhterem Nura Zerrin Tekindor, Müslüm Gürsesin babasına ise Turgut Tunçalp hayat veriyor",
    "Siccin serisinin yeni filmi olan Siccin 6 babasından kalan miras sebebiyle üvey annesi ile sorunlar yaşayan Yaşara odaklanıyor. Bir gün Yaşar aynı evde yaşadığı baldızı Cananın kendisine aşık olduğunu öğrenir. Bu olayın şokunu atlatamadan, evinde korkunç olaylar yaşanmaya başlar. Üstelik, Yaşarın akli dengesi bozuk kızı Efsunda bu süreçte karanlık geçmişi ile yüzleşecek ve aileyi daha zorlu günlere sürükleyecektir. Bu esnada, Orhanda kendisine bahşedilmiş yeteneğin hayır mı yoksa şer mi olduğunu sorgulamaktadır",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(filmler[filmNo - 1]),
      ),
      body: Align(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/film_$filmNo.jpg",
                width: 250,
                height: 350,
              ),
            ),
            Text(filmler[filmNo-1],style: TextStyle(fontSize: 20,),),

            Container(
              child: Divider(
                height: 20,
                color: Colors.black,
              ),
              width: 200,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Card(

                child: Text(
                  filmaAciklama[filmNo - 1],
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  filmNo++;
                  if(filmNo==7){
                    filmNo=1;
                  }
                });
                /* Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyApp()));
                    */
              },
              child: Text("Bir Sonraki Film"),
            )
          ],
        ),
      ),
    );
  }
}
