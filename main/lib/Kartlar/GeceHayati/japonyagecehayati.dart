import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class JaponyaGeceHayati extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'Japonya Gece Hayatı',
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
              _buildGeceHayati(
            'Roppongi Hills',
            'Tokyonun Roppongi bölgesi, lüks gece kulüpleri, barlar, restoranlar ve canlı müzik mekanları ile ünlüdür. Roppongi Hills kompleksi, modern ve şık mekanlarıyla dikkat çeker.',
            'https://i.hizliresim.com/9noisfn.jpg',
              ),
              _buildGeceHayati(
            'Dotonbori',
            'Osakanın en ünlü gece hayatı bölgesi olan Dotonbori, renkli neon ışıkları, canlı reklam panoları ve lezzetli sokak yemekleri ile bilinir. Bu bölge, barlar, gece kulüpleri ve eğlenceli aktivitelerle doludur. Ayrıca, Japonyanın geleneksel kabuki tiyatrosunu deneyimleyebileceğiniz mekanlar da burada bulunabilir.',
            'https://i.hizliresim.com/c4ug29h.jpg',
              ),
               _buildGeceHayati(
            'Suskino',
            'Sapporo, Hokkaido adasında yer alan bir şehir ve Susukino bölgesi, kış festivaliyle ünlü olmasının yanı sıra gece hayatıyla da dikkat çeker. Susukino, barlar, gece kulüpleri ve karaoke salonları ile doludur. Ayrıca, özellikle kış aylarında buz heykel festivali gibi etkinliklere ev sahipliği yapar.',
            'https://i.hizliresim.com/rfmxapc.jpg',
              ),
          
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGeceHayati(String title, String description, String imageUrl) {
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