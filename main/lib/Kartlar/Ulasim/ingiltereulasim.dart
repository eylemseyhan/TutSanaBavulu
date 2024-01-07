import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IngiltereUlasim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'Ingiltere Ulaşım',
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
                'Heathrow Havaalanı',
                'Heathrow Havalimanı, Londra\'nın batısında, Westminster şehir merkezinin 24 km batısında yer alan bir uluslararası havalimanıdır. İngiltere\'nin en büyük ve dünyanın en yoğun havalimanlarından biridir.',
                'https://images.pexels.com/photos/730778/pexels-photo-730778.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              ),
              _buildUlasim(
                'Metro',
                'Londra Metrosu, aynı zamanda "Tube" olarak da bilinir ve şehir içinde ve varoşlarında gezinmek için pratik ve verimli bir yol sağlar.',
                'https://images.pexels.com/photos/297836/pexels-photo-297836.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
              ),
              _buildUlasim(
                'Double Decker Buses',
                'İkonik çift katlı otobüsler, Londra\'da sıkça görülen bir manzaradır. Şehri keşfetmek için ikonik ve manzaralı bir yol sunarlar.',
                'https://images.pexels.com/photos/10288856/pexels-photo-10288856.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
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
        ],),);}
}