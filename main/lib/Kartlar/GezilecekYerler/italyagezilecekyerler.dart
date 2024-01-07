import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class ItalyaGezilecekYerler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'İtalya Gezilecek Yerler',
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
              _buildGezilecekYer(
              'Colosseum, Roma',
            'Colosseum, Roma\'nın simgelerinden biridir. Antik Roma\'da gladyatör dövüşleri ve diğer etkinlikler için kullanılan dev bir amfiteatrdır.',
            'https://i.hizliresim.com/chaafsj.jpg',
              ),
              _buildGezilecekYer(
               'Pisa Kulesi, Pisa',
            'Pisa Kulesi, Pisa\'daki ünlü Miracoli Meydanı\'nda bulunan eğik kule olarak bilinir. Dünyanın en tanınan anıtlarından biridir.',
            'https://i.hizliresim.com/i8ibhc5.jpg',
              ),
              _buildGezilecekYer(
                'Venedik Kanalları, Venedik',
            'Venedik, kanalları ve tarihi binalarıyla ünlüdür. Gondollarla yapılan romantik geziler ve şehirdeki birçok tarihi mekan ziyaretçilere benzersiz bir deneyim sunar.',
            'https://i.hizliresim.com/9rxysip.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGezilecekYer(String title, String description, String imageUrl) {
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