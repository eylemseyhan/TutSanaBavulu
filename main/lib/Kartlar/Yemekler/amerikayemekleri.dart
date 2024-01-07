import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AmerikaYemek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'Amerika Yemekleri',
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
                'Clam Chowder',
                'https://images.pexels.com/photos/12263112/pexels-photo-12263112.png?auto=compress&cs=tinysrgb&w=600',
                'Çorbanızı tabakta mı yoksa bardakta mı alırdınız? Peki ya içi oyulmuş ekmeğin içine doldursak? '
                'Midye ve patates gibi farklı malzemelerle hazırlanan bu çorba özellikle ülkenin kıyı bölgelerinde lezzet tutkunlarının gözdesi.',
              ),
              _buildYemek(
                'Pretzel',
                'https://images.pexels.com/photos/1718383/pexels-photo-1718383.jpeg?auto=compress&cs=tinysrgb&w=600',
                'Bir çeşit sert simit olarak adlandırılabilecek pretzel de Amerika\'da tadabileceğiniz farklı lezzetler arasında ilk sıralarda geliyor. '
                'Genellikle hot dog arabalarında satılan pretzel yanında kahve ile oldukça iyi bir atıştırmalık.',
              ),
              _buildYemek(
                'Hot Dog',
                'Amerikada popüler olan bir diğer atıştırmalık türüdür. Genellikle bir köfte veya sosisin özel bir ekmeğe konulmasıyla yapılır. ',
                'https://images.pexels.com/photos/3023479/pexels-photo-3023479.jpeg?auto=compress&cs=tinysrgb&w=600',
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
      ],),);
}