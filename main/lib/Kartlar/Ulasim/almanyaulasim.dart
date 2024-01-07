import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AlmanyaUlasim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'Almanya Ulaşım',
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
                'Frankfurt Havalimanı',
                'Almanya\'ya gelenler genellikle Frankfurt Havalimanı\'nı kullanır. Avrupa\'nın önemli havayolu merkezlerinden biridir ve şehir içi ulaşım seçenekleriyle bağlantılıdır.',
                'https://images.pexels.com/photos/912050/pexels-photo-912050.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              ),
              buildTransportationCard(
                'ICE Trenleri',
                'ICE (InterCityExpress) Trenleri, Almanya içindeki şehirler arası ulaşımda öncüdür. Frankfurt gibi büyük şehirlerden diğer merkezlere yüksek hızlı ve konforlu bir seyahat imkanı sağlar.',
                'https://images.pexels.com/photos/2365701/pexels-photo-2365701.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              ),
              buildTransportationCard(
                'Bisiklet',
                'Bisiklet: Almanyada bisiklet yolları geniş bir ağa sahiptir. Birçok şehirde bisiklet kiralama hizmetleri bulunur ve bisikletle şehir içi ulaşım popülerdir.',
                'https://media.istockphoto.com/id/1466667925/tr/foto%C4%9Fraf/woman-with-long-brown-hair-wearing-helmet-while-riding-her-bike-down-a-serpentine-road-in.jpg?s=612x612&w=0&k=20&c=3zuwEJV-s-ra47xiNEF3IsCTgb8OI9EdJxotvKF1mrs=',
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
        ],
      ),
    );
  }
}