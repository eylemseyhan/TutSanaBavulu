import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItalyaYemek extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'İtalya Yemekleri',
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
               'Pizza Napoletana',
            'Napoli şehrine özgü olan bu pizza, ince hamur, domates sosu, mozzarella peyniri, taze fesleğen ve zeytinyağı içerir. Harika bir lezzet deneyimi sunar.',
            'https://i.hizliresim.com/n4srg5i.jpg',
              ),
              _buildYemek(
                'Risotto alla Milanese',
            'Milano kökenli olan Risotto alla Milanese, safran ile renklendirilmiş ve tavuk suyu ile pişirilmiş kremsi bir risotto türüdür. Genellikle Parmesan peyniri ile servis edilir.',
            'https://i.hizliresim.com/5nptgk3.jpg',
              ),
              _buildYemek(
               'Ossobuco alla Milanese',
            'Milano mutfağından bir diğer lezzet olan Ossobuco, dana budunun dilimlenmiş bir parçasını içerir. Bu et, beyaz şarap, soğan, havuç ve kereviz ile birlikte yavaşça pişirilir.',
            'https://i.hizliresim.com/fdbhew7.jpg',
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