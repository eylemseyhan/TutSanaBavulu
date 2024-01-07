import 'package:flutter/material.dart';


import 'package:google_fonts/google_fonts.dart';

class JaponyaUlasim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'Japonya Ulaşım',
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
            'Shinkansen (Hızlı Tren)',
            'Japonyanın ünlü yüksek hızlı tren ağı olan Shinkansen, şehirleri birbirine bağlar ve kısa sürede uzun mesafeleri kat etmenizi sağlar. ',
            'https://images.pexels.com/photos/5194487/pexels-photo-5194487.jpeg?auto=compress&cs=tinysrgb&w=600',
                ),
              _buildUlasim( 
            'Metro ve Şehiriçi Ulaşım',
            'Japonyanın büyük şehirlerinde, özellikle Tokyo, Osaka ve Kyoto gibi bölgelerde metro ve tren hatları oldukça gelişmiştir. ',
            'https://images.pexels.com/photos/5507497/pexels-photo-5507497.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
           
              ),
              _buildUlasim(
            'Kiralık Araçlar',
            'Japonyada kiralık araçlar da popüler bir ulaşım seçeneğidir, özellikle kırsal bölgeleri keşfetmek veya şehirler arası seyahat etmek istiyorsanız. ',
            'https://images.pexels.com/photos/3048529/pexels-photo-3048529.jpeg?auto=compress&cs=tinysrgb&w=600',
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