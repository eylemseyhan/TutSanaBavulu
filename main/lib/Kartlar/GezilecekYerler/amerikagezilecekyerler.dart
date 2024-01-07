import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AmerikaGezilecekYerler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'Amerika Gezilecek Yerler',
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
                'New York',
                'Sanat ve moda için bir merkez olan büyük bir Amerikan şehridir ve çeşitli kültürlerin kaynaştığı bir yerdir.Bir Broadway gösterisine katılarak ve Met sanat galerisini ziyaret ederek kendinizi sanat ortamına bırakabilir ya da ünlü bir restoranda güzel yemekler yiyebilirsiniz. Hatta Central Park\'ta veya High Line boyunca yürüyüşe çıkarak koşuşturmacadan kaçabilirsiniz.',
                'https://images.pexels.com/photos/290386/pexels-photo-290386.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
              _buildGezilecekYer(
                'Miami',
                'Miami, güçlü Karayip etkilerine sahip kültürel bir destinasyondur. Bu Güney Florida şehri, South Beach\'in palmiye ağaçlarından ve turkuaz sularından dans kulüplerine ve müzelere kadar her şeye sahiptir.Miami şehir merkezinin alışveriş ve gece hayatını keşfederken Küba kültürü ve mutfağının tadına bakmak için Little Havana\'yı keşfedebilirsiniz.',
                'https://images.pexels.com/photos/4366062/pexels-photo-4366062.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
              _buildGezilecekYer(
                'Chicago',
                'Chicago, büyük gökdelenleri, mimarisi, kültürel etkinlikleri ve göl kenarındaki konumuyla bilinir. Millenium Park, Navy Pier ve Chicago Sanat Enstitüsü gibi önemli turistik noktaları vardır.',
                'https://images.pexels.com/photos/1797195/pexels-photo-1797195.jpeg?auto=compress&cs=tinysrgb&w=600',
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