import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AmerikaUlasim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'Amerika Ulaşım',
          style: GoogleFonts.azeretMono(
            fontSize: 35,
            shadows: [Shadow(blurRadius: 5, color: Colors.grey)],
          ).copyWith(color: Color.fromARGB(255, 255, 255, 255)),
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
              buildTransportationCard(
                'Rekreasyonel ve Turistik Araçlar',
                'Amerikada seyahat etmek ve ülkenin güzelliklerini keşfetmek için RVs (Recreational Vehicles) veya kamper araçları popülerdir. Bu araçlar, kişilere taşınabilir konaklama ve seyahat imkanı sağlar, özellikle doğal parklarda veya kamp alanlarında kullanılır.',
                'https://images.pexels.com/photos/8154289/pexels-photo-8154289.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
              buildTransportationCard(
                'Toplu Taşıma',
                'Özellikle New York, Chicago, San Francisco, ve Washington D.C. gibi şehirlerde toplu taşıma sistemleri sıkça kullanılmaktadır.',
                'https://images.pexels.com/photos/6097769/pexels-photo-6097769.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
              buildTransportationCard(
                'Hava Taşımacılığı',
                'Amerika, geniş bir hava taşımacılığı ağına sahiptir ve birçok büyük şehri birbirine bağlayan iç hat uçuşları oldukça yaygındır. ',
                'https://images.pexels.com/photos/747079/pexels-photo-747079.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTransportationCard(
      String title, String description, String imageUrl) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (imageUrl.isNotEmpty)
            Image.network(
              imageUrl,
              height: 300,
              width: 400,
              fit: BoxFit.cover,
            )
          else
            Container(),
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