import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JaponyaYemek extends StatelessWidget {
  const JaponyaYemek({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'Japonya Yemekleri',
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
              _buildYemek(
                'Sushi (寿司)',
                'Dünyaca ünlü ve Japon mutfağının sembolü haline gelmiş bir yemektir. Genellikle küçük parçalar halinde hazırlanan taze balıklar, sebzeler ve özel sushi pirinci ile yapılan bu yemek, soya sosu ve wasabi ile birlikte servis edilir. ',
                'https://images.pexels.com/photos/359993/pexels-photo-359993.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
              _buildYemek(
                'Ramen (ラーメン)',
                'Japon mutfağında popüler bir çorba-bazlı yemektir. Çeşitli malzemelerle yapılan ramen, genellikle tavuk, domuz eti veya deniz ürünleri içerir. Çorba genellikle soya sosu, miso veya tuz bazlı olabilir. Ramen, çeşitli garnitürlerle birlikte servis edilir, bu garnitürler arasında haşlanmış yumurta, nori (deniz yosunu), bambu filizi ve yeşil soğan bulunabilir.',
                'https://images.pexels.com/photos/1907229/pexels-photo-1907229.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
              _buildYemek(
                'Tempura (天ぷら)',
                'Kızartılmış deniz ürünleri veya sebzelerin hafif ve gevrek bir hamur içinde kızartılmasıyla yapılan bir yemektir. Tempura hamuru genellikle hafif ve çıtır olup, genellikle soya sosu ile servis edilir.',
                'https://images.pexels.com/photos/884596/pexels-photo-884596.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),  
            ],
          ),
        ),
      ),
    );
  }
}
Widget _buildYemek(String title, String description, String imageUrl) {
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
      ],),);
}