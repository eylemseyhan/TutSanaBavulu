import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FinlandiyaYemek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'Finlandiya Yemekleri',
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
                'Ruisleipä (Çavdar Ekmeği)',
                'Finlandiya mutfağının önemli bir parçası olan Ruisleipä, çavdar unundan yapılan sağlıklı bir ekmektir. Genellikle birçok yemekle birlikte servis edilir.',
                'https://images.pexels.com/photos/13019131/pexels-photo-13019131.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              ),
              _buildYemek(
                'Kalakukko (Balık ve Etli Turta)',
                'Kalakukko, geleneksel bir Finlandiya yemeğidir. İçi genellikle balık ve domuz etiyle doldurulur ve dışı çavdar unu kabuğuyla kaplanır.',
                'https://i.hizliresim.com/hqo9qy9.jpg',
              ),
              _buildYemek(
                'Lohikeitto (Lohi Çorbası)',
                'Lohikeitto, somon balığı, patates, soğan ve krema ile yapılan nefis bir somon çorbasıdır. Finlandiyada oldukça popülerdir.',
                'https://www.lavenderandmacarons.com/wp-content/uploads/2019/11/Lohikeitto-Recipe-2.jpg',
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
      ],
    ),
  );
}
