import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class MisirGezilecekYerler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'Mısır Gezilecek Yerler',
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
                'Gize Piramitleri ve Sfenks',
                'Gizede bulunan Keops, Kefren ve Mikerinos piramitleri, Antik Mısırın en önemli yapılarından biridir. Ayrıca, Büyük Gize Sfenksi, piramitlerin hemen yanında yer alır ve ziyaretçileri etkileyici bir şekilde karşılar',
                'https://images.pexels.com/photos/11517391/pexels-photo-11517391.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              ),
              _buildGezilecekYer(
                'Kahire Mısır Müzesi',
                'Mısırın başkenti Kahiredeki bu müze, Antik Mısıra ait birçok önemli arkeolojik eseri barındırır. Mumyalar, altın takılar, antik yazıtlar ve diğer tarihi eserler bu müzede sergilenmektedir.',
                'https://images.pexels.com/photos/3697742/pexels-photo-3697742.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              ),
              _buildGezilecekYer(
                'Luksor Tapınağı ve Karnak Tapınağı',
                'Luksordaki bu tapınaklar, Antik Mısır döneminde önemli dini ritüallerin yapıldığı yerlerden biridir. Karnak Tapınağı, Antik Mısırın en büyük tapınak kompleksi olarak bilinir.',
                'https://images.pexels.com/photos/18934606/pexels-photo-18934606/free-photo-of-gece-seyahat-vucut-yapilari-misir.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
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