import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlmanyaGeceHayati extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'Almanya Gece Hayatı',
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
              Color.fromARGB(255, 255, 119, 0)
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildNightlifeCard(
                'Berghain (Berlin)',
                'Dünyaca ünlü bir gece kulübü olan Berghain, Berlin\'in elektronik müzik sahnesinin merkezinde yer alır. Endüstriyel bir atmosfere sahip olan kulüp, kaliteli DJ performansları ve eşsiz dans deneyimleriyle tanınır. Ancak giriş politikaları sıkıdır ve seçici kapı görevlileri bulunmaktadır.',
                'https://media.istockphoto.com/id/1141666338/tr/foto%C4%9Fraf/bir-konserde-elle-smartphone-sahnede-mor-%C4%B1%C5%9F%C4%B1k.jpg?s=612x612&w=0&k=20&c=xVa4p4hCb7cGqZ-m5_FlsVcHIPToT-uqhVpUxtgpo6w=',
              ),
              buildNightlifeCard(
                'KitKatClub',
                'KitKatClubta eğlence sadece müzik ve dansın ötesine geçer. Geleneksel gece hayatı deneyimlerinin sınırlarını zorlayan büyüleyici performanslarla kendinizi hipnotize olmuş hissedin.',
                'https://images.pexels.com/photos/2034851/pexels-photo-2034851.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              ),
              buildNightlifeCard(
                'Reeperbahn (Hamburg)',
                'Hamburg\'un ünlü Red Light District\'i olan Reeperbahn, gece hayatının nabzını tutan bir bölgedir. Barlar, kulüpler ve canlı müzik mekanlarıyla dolu olan Reeperbahn, özellikle gençler ve turistler arasında popülerdir. Gecenin ilerleyen saatlerinde sokaklar canlanır, farklı müzik tarzlarını deneyimleyebilirsiniz.',
                'https://images.pexels.com/photos/5152573/pexels-photo-5152573.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNightlifeCard(String title, String description, String imageUrl) {
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
        ],
      ),
    );
  }
}