import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MisirYemek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'Mısır Yemekleri',
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
                'Ruisleipä (Koşari)',
                'Mısır mutfağının geleneksel bir yemeğidir. Pirinç, makarna, yeşil mercimek ve kızarmış soğan içerir. Genellikle acı biber sosu ve sirke ile servis edilir.',
                'https://i.hizliresim.com/9wh3493.jpeg',
              ),
              _buildYemek(
                'Kalakukko (Falafel)',
                'Çıtır dış kabuk ve içerisindeki nohut köftesiyle bilinir. Çoğunlukla ekmek içinde sandviç veya salatalarla servis edilir.',
                'https://images.pexels.com/photos/6546031/pexels-photo-6546031.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              ),
              _buildYemek(
                'Lohikeitto (Humus)',
                'Nohut, tahin, zeytinyağı, limon suyu ve sarımsak içeren bir mezektir. Pide, lavaş veya sebzelerle tüketilir.',
                'https://images.pexels.com/photos/9304931/pexels-photo-9304931.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
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