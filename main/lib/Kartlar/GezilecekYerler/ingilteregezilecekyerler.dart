import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IngiltereGezilecekYerler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'İngiltere Gezilecek Yerler',
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
              Color.fromARGB(255, 255, 119, 0),
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildGezilecekYer(
                'Oxford',
                'Bir üniversite kenti olan Oxford kitapçıları ve eski kafeleriyle İngiltere’nin en entelektüel şehri.',
                'https://i.hizliresim.com/g8xvdv5.jpeg',
              ),
              _buildGezilecekYer(
                'London Eye (Millennium Wheel)',
                'Avrupa’nın en yüksek dönme dolabı unvanını taşıyan London Eye, İngiltere’nin başkenti Londra’da bulunmaktadır.',
                'https://i.hizliresim.com/342atu6.jpeg',
              ),
              _buildGezilecekYer(
                'Buckingham Sarayı',
                'İngiltere’nin başkenti Londra’nın kalbinde yer alan 1703 yılında inşa edilen Birleşik Krallık’ın yönetim merkezi olarak bilinmektedir.',
                'https://i.hizliresim.com/rlnro7x.jpeg',
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