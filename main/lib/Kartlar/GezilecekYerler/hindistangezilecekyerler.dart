import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class HindistanGezilecekYerler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'Hindistan Gezilecek Yerler',
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
                'Tac Mahal',
                'Hindistanın Agra şehrinde Yamuna Nehri’nin sağ kıyısında yer alan fildişi beyazı mermer bir türbedir. Hindistan’da gezilip görülecek yerler arasında Tac Mahal, birçok kişi tarafından Babür mimarisinin en iyi örneği ve Hindistanın zengin tarihinin bir sembolü olarak kabul edilmektedir. Hindistan Turizm İstatistikleri 2019 verilerine göre Tac Mahal yılda 6 milyondan fazla ziyaretçinin uğrak noktasıdır.',
                'https://images.pexels.com/photos/1603650/pexels-photo-1603650.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
              _buildGezilecekYer(
                'Altın Tapınak',
                'Pakistan sınırında bulunan Amritsar şehrine yolun düşerse altından yapılma bir tapınak seni bekliyor olacak. Gerçek ismi Harmandir Sahib olan bu tapınak, Sih inancının en kutsal yerlerinden biri olarak kabul ediliyor. Hindistan’da gezilecek yerler arasına, altın parıltısıyla büyüleneceğin bir yer eklemek istersen önce Amritsar şehrine, oradan da rotanı Altın Tapınak’a çevir.',
                'https://images.pexels.com/photos/12656948/pexels-photo-12656948.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
          
              _buildGezilecekYer(
                'Lotus Tapınağı',
                'Hindistan’da gezilecek yerlerin en meşhurunu sona sakladık. Lotus çiçeğinin anatomisi baz alınarak inşa edilen Lotus ya da Bahai Tapınağı, 1986 yılında tamamlanarak dünyanın çeşitli yerlerinde bulunan Bahai tapınaklarının sonuncusu olma unvanını kazanmış. 9 girişiyle 9 dini sembolize eden Lotus Tapınağı, Yeni Delhi’de mimar Fariborz Sahba ismiyle tasarlanmış. Son olarak burada mutlaka sessiz olmak gerektiğini de hatırlatalım! Şşt!',
                'https://images.pexels.com/photos/4059538/pexels-photo-4059538.jpeg?auto=compress&cs=tinysrgb&w=600',
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