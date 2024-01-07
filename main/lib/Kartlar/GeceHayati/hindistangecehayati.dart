import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class HindistanGeceHayati extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'Hindistan Gece Hayatı',
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
              _buildGeceHayati(
                'Mumbai',
                'Hindistanın finansal başkenti ve en büyük şehirlerinden biri olan Mumbai, gece hayatıyla ünlüdür. Şehirde birçok lüks gece kulübü, bar ve lounge bulunmaktadır. Colaba ve Bandra bölgelerindeki mekanlar genellikle popülerdir. "Mumbai gece hayatı" deyince akla gelen yerlerden biri de Marine Drivedaki sahil şeridi barlarıdır.',
                'https://images.pexels.com/photos/706352/pexels-photo-706352.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              ),
              _buildGeceHayati(
                'Delhi',
                'Hindistanın başkenti Delhi, çeşitli gece hayatı seçenekleri sunan bir şehirdir. Connaught Place ve Hauz Khas Village gibi bölgelerde birçok bar, kulüp ve lounge bulunmaktadır. Delhinin gece hayatı, farklı müzik türlerini seven herkesi memnun edecek kadar çeşitlidir.',
                'https://images.pexels.com/photos/1007426/pexels-photo-1007426.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
              ),
              _buildGeceHayati(
                'Goa',
                'Goa, plajları, gece partileri ve eğlenceli atmosferi ile ünlüdür. Hindistanın en popüler turistik destinasyonlarından biri olan Goa, özellikle gençler arasında popülerdir. Anjuna ve Baga plajlarındaki gece kulüpleri, canlı müzik ve renkli partilerle bilinir.',
                'https://images.pexels.com/photos/4430314/pexels-photo-4430314.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGeceHayati(String title, String description, String imageUrl) {
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