import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HindistanYemek extends StatelessWidget {
  const HindistanYemek({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'Hindistan Yemekleri',
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
                'Aloo Gobi',
                'Bu lezzetli yemek, patates (Aloo) ve karnabaharın (Gobi) birleşiminden oluşur. Genellikle baharatlı bir domates sosu içinde pişirilen bu yemek, çeşitli baharatlar ve otlarla zenginleştirilir.',
                'https://images.pexels.com/photos/15014921/pexels-photo-15014921/free-photo-of-gida-aksam-yemegi-ogle-yemegi-tavuk.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
              _buildYemek(
                'Chana Masala',
                'Bu lezzetli yemek, ana malzemesi olan nohut (Chana) ile karakterizedir. Nohutlar, baharatlar, soğan, domates ve diğer lezzetli malzemelerle bir araya getirilerek hazırlanır. ',
                'https://images.pexels.com/photos/9287032/pexels-photo-9287032.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
              _buildYemek(
                'Biryani',
                ' Hindistan mutfağının en ünlü ve sevilen pilav yemeklerinden biridir. Genellikle baharatlı ve aromatik pilavın, çeşitli baharatlarla marine edilmiş et (tavuk, dana, kuzu) veya sebzelerle birleştirilmesiyle yapılır. ',
                'https://images.pexels.com/photos/2092916/pexels-photo-2092916.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
              _buildYemek(
                'Masala Dosa: ',
                'Sevilen bir kahvaltı yemeğidir. Krep benzeri bir hamur olan dosa, çeşitli baharatlar ve malzemelerle doldurulur.',
                'https://i.hizliresim.com/thcc58f.jpg',
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
      ],
    ),
  );
}