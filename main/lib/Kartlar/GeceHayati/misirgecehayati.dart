import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MisirGeceHayati extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'Mısır Gece Hayatı',
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
                'Pacha Sharm',
                'Şarm El-Şeyhteki gece hayatının merkezi , şehirdeki ve tüm Mısırdaki en büyük ve en ünlü gece kulübü olan Pacha gece kulübüdür. Naama Körfezinin kalbinde yer alan ve her gece açık olan bu kulüp, Paşa gece kulüplerinin tipik atmosferini ekstra oryantal dokunuşla ve uluslararası üne sahip DJlerle akşamları bir araya getiriyor. ',
                'https://i.hizliresim.com/3w4zb7j.jpeg',
              ),
              _buildGeceHayati(
                'Little Buddha',
                'Gösterişli ve fütürist dekoru ve devasa altın Buda heykeli ile şehrin en zarif yerlerinden biri. Burası bir kulüp ve bir suşi barın eşsiz bir birleşimidir ve içeride bir restoran, bir lounge bar, bir açık teras bulunmaktadır. Saat 23.00dan sonra mekan yerel DJlerin olduğu bir kulübe dönüşüyor ve partiler geç saatlere kadar dans etmek isteyen turistleri ve modaya uygun gençleri cezbediyor',
                'https://images.pexels.com/photos/326715/pexels-photo-326715.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              ),
              _buildGeceHayati(
                'Tac Mahal Disco',
                'İki katlı büyük bir açık hava diskosudur. Parti havuz başında gerçekleşir (mayo ile gelirseniz yüzebilirsiniz!) Ve her hafta konsolda uluslararası bir konuk DJ var.',
                'https://i.hizliresim.com/hhjwgam.jpeg',
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