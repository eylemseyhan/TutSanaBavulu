import 'package:flutter/material.dart';


import 'package:google_fonts/google_fonts.dart';

class ItalyaUlasim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'İtalya Ulaşım',
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
              _buildUlasim(
                'Tren',
            'İtalya\'da tren seyahati oldukça popülerdir. Hızlı trenlerle ünlüdür ve ülkenin çeşitli bölgelerini birbirine bağlar. Tren ağı geniştir ve güvenli bir ulaşım seçeneği sunar.',
            'https://i.hizliresim.com/a64npng.jpg',
                ),
              _buildUlasim( 'Vaporetto (Su Otobüsü)',
            'Venedik kanallarında yaygın olarak kullanılan Vaporetto, su üzerinde yolcu taşıyan bir otobüs sistemidir. Şehirdeki birçok noktaya ulaşım sağlar.',
            'https://i.hizliresim.com/auf286g.jpg',
           
              ),
              _buildUlasim(
               'Bisiklet',
            'İtalya\'da şehir içi ulaşımda sıkça tercih edilen bisiklet, çevre dostu ve sağlıklı bir ulaşım aracıdır. Şehirlerdeki bisiklet yolları ve paylaşımlı bisiklet sistemleri yaygındır.',
            'https://i.hizliresim.com/1863nmz.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUlasim(String title, String description, String imageUrl) {
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
                  width: 400, // Resim boyutunu sabitledik
                  fit: BoxFit.cover,
                )
              : Container(), // Image yoksa boş bir Container ekleyelim
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
        ],),);}
}