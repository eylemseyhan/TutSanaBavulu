import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class FinlandiyaGezilecekYerler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'Finlandiya Gezilecek Yerler',
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
                'Helsinki Katedrali',
                'Helsinki Katedrali, Finlandiya’nın başkenti Helsinki’nin simgelerinden biridir. Beyaz rengiyle dikkat çeken katedral, şehrin merkezinde yer alır.',
                'https://images.pexels.com/photos/5072366/pexels-photo-5072366.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              ),
              _buildGezilecekYer(
                'Santa Claus Village',
                'Santa Claus Village, Laponya bölgesinde yer alan ve Kuzey Kutbu’nun yakınında bulunan bir turistik bölgedir. Burada Noel Baba’nın evini ziyaret edebilirsiniz.',
                'https://i.hizliresim.com/jw9u9cr.jpg',
              ),
              _buildGezilecekYer(
                'Rovaniemi Arctic Reindeer',
                'Rovaniemi Arctic Reindeer, Laponya bölgesinde yer alan geleneksel bir kuzey ışıkları çiftliğidir. Bu çiftlikte kutup ren geyikleriyle tanışabilirsiniz.',
                'https://i.hizliresim.com/gqp1l0q.jpg',
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
        ],
      ),
    );
  }
}
