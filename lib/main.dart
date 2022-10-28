import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {

  final String title = 'dusun semilir';
  final String location = "Bawen, Jawa Tengah";
  final String description = 
      '''Dusun Semilir Eco Park terbagi dalam beberapa wilayah yang memiliki keunikannya tersendiri. Pertama, di bagian depan adalah pusat suvenir dengan nama Warisan Indonesia. Pengunjung bisa membeli aneka suvenir sebagai buah tangan saat pulang nanti. Sedangkan pada lantai duanya (masih satu gedung) terdapat restoran dengan nama Gunungan Resto yang menjual menu makanan modern seperti di café atau restoran kota.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Objek Wisata'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'image/semilir.jpg',
            height: 250,
            width: 412,
            fit: BoxFit.fill,),
          Container(height: 15,),
          Row(
            children: [
              Container(width: 15,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(this.title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
                    ),
                    Text(this.location,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    ),)
                ],
              ),
              Container(width: 100,),
              Icon(Icons.star,
              size: 30,
              color: Colors.orange,),
              Text('4', style: TextStyle(fontSize: 18,))
            ]
          ),
          Container(
            padding: EdgeInsets.all(15),
          child: Text(
            this.description, 
            style: TextStyle(
              fontSize: 18,
            ),
          softWrap: true,),),
        ],
      ),
    );

  }
}