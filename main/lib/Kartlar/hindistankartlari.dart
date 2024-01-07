// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:main/Kartlar/GezilecekYerler/hindistangezilecekyerler.dart';
import 'package:main/Kartlar/Yemekler/hindistanyemek.dart';
import 'package:main/Kartlar/GeceHayati/hindistangecehayati.dart';
import 'package:main/Kartlar/Ulasim/hindistanulasim.dart';
import 'package:google_fonts/google_fonts.dart';

class HindistanKartlari extends StatefulWidget {
  @override
  _HindistanKartlariState createState() => _HindistanKartlariState();
}

class _HindistanKartlariState extends State<HindistanKartlari> {
  int hoveredIndex = -1;
  final List<String> titles = ['Yemekler', 'Gezilecek Yerler', 'Gece Hayatı', 'Ulaşım'];
  final List<String> imageUrls = [
    'https://images.pexels.com/photos/618491/pexels-photo-618491.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/1007427/pexels-photo-1007427.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/9194750/pexels-photo-9194750.jpeg?auto=compress&cs=tinysrgb&w=600',
    'https://images.pexels.com/photos/17899648/pexels-photo-17899648/free-photo-of-sokak-hindistan-kentsel-tekerlek.jpeg?auto=compress&cs=tinysrgb&w=600',
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              titles.length,
              (index) => buildCard(index),
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCard(int index) {
    final bool isHovering = hoveredIndex == index;
    final imageSize = isHovering ? Size(160, 150) : Size(150, 150); // Resim boyutu

    return GestureDetector(
      onTap: () {

        // Kart sayfasına yönlendirme işlemi
        switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HindistanYemek()), // FinlandiyaYemek sayfasına yönlendirme
        );
        break;
      // Diğer kartlar için aynı işlemi yapabiliriz
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HindistanGezilecekYerler()), // FinlandiyaGezilecekYerler sayfasına yönlendirme
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HindistanGeceHayati()), // FinlandiyaGeceHayati sayfasına yönlendirme
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HindistanUlasim()), // FinlandiyaUlasim sayfasına yönlendirme
        );
        break;
      default:
        break;
    }
      },
      child: MouseRegion(
        onEnter: (_) {
          setState(() {
            hoveredIndex = index;
          });
        },
        onExit: (_) {
          setState(() {
            hoveredIndex = -1;
          });
        },
        child: Container(
          width: imageSize.width, // Genişlik resim boyutuna göre ayarlandı
          height: imageSize.height, // Yükseklik resim boyutuna göre ayarlandı
          child: Card(
            elevation: 8.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.0), // Köşeleri yuvarlatma
              child: Center(
                child: AnimatedSwitcher(
                  duration: Duration(milliseconds: 200),
                  child: isHovering
                      ? Image.network(
                          imageUrls[index], // Farklı resim URL'si
                          height: imageSize.height,
                          width: double.infinity, // Kartın genişliğine göre ayarla
                          fit: BoxFit.cover, // Resmi kartın boyutuna sığacak şekilde ayarla
                          key: ValueKey<String>('image_$index'),
                        )
                      : Text(
                          titles[index],
                          style: GoogleFonts.azeretMono(
                            fontSize: 16,
                            shadows: [Shadow(blurRadius: 5, color: Colors.grey)],
                          ).copyWith(color: Colors.orange),
                          key: ValueKey<String>('text_$index'),
                        ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}