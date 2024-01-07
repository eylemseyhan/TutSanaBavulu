import 'package:flutter/material.dart';


import 'package:google_fonts/google_fonts.dart';

class FinlandiyaUlasim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'Finlandiya Ulaşım',
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
                'Helsinki-Vantaa Havalimanı',
                'Finlandiya\'ya gelenler genellikle Helsinki-Vantaa Havalimanı\'nı kullanır. Şehir merkezine kolay erişim sağlayan düzenli tren ve otobüs seferleri bulunmaktadır.',
                'https://i.hizliresim.com/kr0kf4v.jpg',
              ),
              _buildUlasim(
                'VR Trenleri',
                'VR Trenleri, Finlandiya içindeki şehirler arası ulaşımda sıklıkla tercih edilir. Helsinki’den diğer büyük şehirlere hızlı ve konforlu bir seyahat sunar.',
                'https://i.hizliresim.com/hz9jti9.jpg',
              ),
              _buildUlasim(
                'Tramvay ve Otobüsler',
                'Helsinki gibi büyük şehirlerde, tramvay ve otobüsler sık sık kullanılan toplu taşıma araçlarıdır. Şehir içi ulaşımda etkili ve yaygın bir seçenektir.',
                'https://i.hizliresim.com/2px6x8q.jpg',
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
        ],
      ),
    );
  }
}
