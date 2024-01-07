import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlmanyaYemek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'Almanya Yemekleri',
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
                'Bratwurst',
                'Almanyanın geleneksel sosislerinden biri olan Bratwurst, genellikle ızgarada pişirilir. Baharatlı ve lezzetli bir iç harcı olan bu sosis, genellikle hardal ve ekmekle servis edilir.',
                'https://media.istockphoto.com/id/1156521400/tr/foto%C4%9Fraf/k%C4%B1zartma-tavas%C4%B1nda-k%C4%B1zarm%C4%B1%C5%9F-sosis.jpg?s=612x612&w=0&k=20&c=thv5hBNv7rg3cFHt5wWMxyvLYX6Sg1GvI0MXi5igIOw=',
              ),
              _buildYemek(
                'Schnitzel',
                'Alman mutfağının vazgeçilmezlerinden biri olan Schnitzel, genellikle tavuk veya domuz etinden yapılır. Et, ekmek kırıntılarıyla kaplanır ve genellikle kızartılarak servis edilir. Limon dilimleri veya patates salatası gibi yanında garnitürlerle servis edilir.',
                'https://images.pexels.com/photos/19396433/pexels-photo-19396433/free-photo-of-aksam-yemegi-lezzetli-naturmort-yemek-fotografciligi.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              ),
              _buildYemek(
                'Sauerkraut',
                'Fermente lahana turşusu olan Sauerkraut, Alman mutfağının önemli bir yan ürünüdür. Ekşi ve turşu tadıyla bilinen bu yemek, genellikle sosis, et veya patates gibi ana yemeklerle birlikte servis edilir.',
                'https://images.pexels.com/photos/8601413/pexels-photo-8601413.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
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