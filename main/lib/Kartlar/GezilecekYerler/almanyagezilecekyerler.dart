import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlmanyaGezilecekYerler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'Almanya Gezilecek Yerler',
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
                'Hamburg',
                'Hamburg, Almanyanın en büyük ikinci şehri olup, önemli bir liman kenti olarak bilinir. Renkli tarih ve modern mimarinin harmanlandığı şehir, göletleri, parkları ve tarihi binalarıyla ünlüdür. Hamburg, müzeleri, sanat galerileri ve canlı kültür sahnesi ile kültürel bir cazibe merkezidir.',
                'https://images.pexels.com/photos/2506904/pexels-photo-2506904.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              ),
              _buildGezilecekYer(
                'Neuschwanstein Şatosu',
                'Neuschwanstein Şatosu, Bavyera, Almanya\'da bulunan ünlü bir şato. Alman romantizminin bir sembolü olarak kabul edilir.',
                'https://media.istockphoto.com/id/624394918/tr/foto%C4%9Fraf/cologne-cathedral-at-night-germany.jpg?s=612x612&w=0&k=20&c=c7XJ0qW9WWWCSlgzpZkyz4atOep0Xldn2jvQJVPOqeg=',
              ),
              _buildGezilecekYer(
                'Köln Katedrali',
                'Köln Katedrali, Köln şehrinin simgelerinden biridir. Gotik mimarisiyle dikkat çeker ve Almanya\'nın en çok ziyaret edilen yerlerinden biridir.',
                'https://images.pexels.com/photos/13006452/pexels-photo-13006452.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
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
        ],
      ),
    );
  }
}