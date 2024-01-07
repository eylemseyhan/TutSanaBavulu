import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class MisirUlasim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'Mısır Ulaşım',
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
                'Metro',
                'Kahirede bulunan bir metro sistemi, şehir içi ulaşımda önemli bir rol oynar. Hattın uzunluğu ve güzergahları, farklı bölgeleri birbirine bağlar.',
                'https://images.pexels.com/photos/5098043/pexels-photo-5098043.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              ),
              _buildUlasim(
                'Feribot',
                'Nil Nehri üzerinde feribotlar, özellikle Nil Nehri boyunca seyahat ederken kullanışlıdır. Büyük şehirlerde ve turistik bölgelerde nehir üzerindeki ulaşımı sağlarlar.',
                'https://images.pexels.com/photos/1575452/pexels-photo-1575452.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              ),
              _buildUlasim(
                'Araba Kiralama',
                'Özellikle turistler için, araç kiralama Mısırda yaygındır. Ancak trafiğin yoğun olabileceği yerlerde dikkatli olunmalıdır.',
                'https://images.pexels.com/photos/1637859/pexels-photo-1637859.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
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