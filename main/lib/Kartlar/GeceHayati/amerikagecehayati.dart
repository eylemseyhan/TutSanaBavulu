import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class AmerikaGeceHayati extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'Amerika Gece Hayatı',
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
                'Times Square',
                'Times Square, New York Citynin simgelerinden biridir ve gece hayatı açısından da oldukça popülerdir. Renkli neon ışıkları, dev reklam panoları ve Broadway tiyatroları ile ünlüdür. Times Square çevresinde birçok gece kulübü, bar ve canlı müzik mekanı bulunmaktadır.',
                'https://images.pexels.com/photos/1486222/pexels-photo-1486222.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
              _buildGeceHayati(
                'South Beach',
                'Dünya çapında ünlü plajları, şık gece kulüpleri ve lüks barları ile tanınır. Ocean Drive üzerinde yer alan renkli Art Deco tarzındaki binaların önünde yürüyüş yapabilir, plaj partilerine katılabilir ve çeşitli müzik türlerinde canlı performansları dinleyebilirsiniz.',
                'https://images.pexels.com/photos/801863/pexels-photo-801863.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
              _buildGeceHayati(
                'The Strip',
                'Las Vegas, dünyanın en ünlü eğlence ve kumar merkezlerinden biridir. The Strip, yani Las Vegas Bulvarı, devasa oteller, casinolar, gece kulüpleri ve şovlarla doludur. Las Vegasta gece hayatı genellikle 24 saat devam eder ve dünya çapında ünlü DJlerin performanslarına ev sahipliği yapar.',
                'https://images.pexels.com/photos/18041018/pexels-photo-18041018/free-photo-of-vegas.jpeg?auto=compress&cs=tinysrgb&w=600',
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
        ],),);}
}