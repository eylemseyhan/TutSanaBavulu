import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IngiltereYemek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'İngiltere Yemekleri',
          style: GoogleFonts.azeretMono(
            fontSize: 35,
            shadows: [Shadow(blurRadius: 5, color: Colors.grey)],
          ).copyWith(color: const Color.fromARGB(255, 255, 255, 255)),
        ),
        elevation: 0.0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 23, 34, 237),
              Color.fromARGB(255, 255, 119, 0)
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildYemek(
                'İngiliz Kahvaltısı',
                'İngiliz kahvaltısı, sosis, pastırma, yumurta, fasulye, domates ve mantardan oluşan geleneksel bir kahvaltıdır.',
                'https://i.hizliresim.com/cg4k1r9.jpeg',
              ),
              _buildYemek(
                'Donut',
                'Donut, şekerli glazür ile kaplı, delikli ve yuvarlak hamur tatlısıdır. Kahve ile birlikte sıkça tüketilir.',
                'https://i.hizliresim.com/4nyyvhv.jpg',
              ),
              _buildYemek(
                'Beef Wellington',
                'Beef Wellington, dana eti, mantar duxelles ve hamur içinde pişirilen geleneksel bir İngiliz yemeğidir.',
                'https://i.hizliresim.com/4m3adac.jpeg',
              ),
              _buildYemek(
                'Sticky Toffee',
                'Sticky Toffee Pudding, karamel soslu ve genellikle vanilya dondurma ile servis edilen lezzetli bir tatlıdır.',
                'https://i.hizliresim.com/dl80yod.jpeg',
              ),
              _buildYemek(
                'Bangers & Mash',
                'Bangers & Mash, İngiliz sosisleri ile püre patatesin birleşiminden oluşan geleneksel bir yemektir.',
                'https://i.hizliresim.com/gu2w63h.jpeg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _buildYemek(String title, String description, String imageUrl) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.only(bottom: 16.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        imageUrl.isNotEmpty
            ? Image.network(
                imageUrl,
                height: 300,
                width: 400,
                fit: BoxFit.cover,
              )
            : Container(),
        Padding(
          padding: EdgeInsets.all(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.azeretMono(
                  fontSize: 25,
                  shadows: [Shadow(blurRadius: 5, color: Colors.grey)],
                ).copyWith(color: Color.fromARGB(255, 23, 34, 237)),
              ),
              SizedBox(height: 8.0),
              Text(
                description,
                style: GoogleFonts.azeretMono(
                  fontSize: 14,
                  shadows: [Shadow(blurRadius: 5, color: Colors.grey)],
                ).copyWith(color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ],
          ),
        ),
      ],),);
}