import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'GeceHayati/misirgecehayati.dart';
import 'GezilecekYerler/misirgezilecekyerler.dart';
import 'Ulasim/misirulasim.dart';
import 'Yemekler/misiryemekleri.dart';

class MisirKartlari extends StatefulWidget {
  @override
  _MisirKartlariState createState() => _MisirKartlariState();
}

class _MisirKartlariState extends State<MisirKartlari> {
  int hoveredIndex = -1;
  final List<String> titles = [
    'Yemekler',
    'Gezilecek Yerler',
    'Gece Hayatı',
    'Ulaşım'
  ];
  final List<String> imageUrls = [
    'https://images.pexels.com/photos/6053916/pexels-photo-6053916.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/4577718/pexels-photo-4577718.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://images.pexels.com/photos/1123262/pexels-photo-1123262.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/3889891/pexels-photo-3889891.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
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
    final imageSize =
        isHovering ? Size(160, 150) : Size(150, 150); // Resim boyutu

    return GestureDetector(
      onTap: () {
        // Kart sayfasına yönlendirme işlemi
        switch (index) {
          case 0:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MisirYemek()),
            );
            break;
          // Diğer kartlar için aynı işlemi yapabiliriz
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MisirGezilecekYerler()),
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MisirGeceHayati()),
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MisirUlasim()),
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
                          width:
                              double.infinity, // Kartın genişliğine göre ayarla
                          fit: BoxFit
                              .cover, // Resmi kartın boyutuna sığacak şekilde ayarla
                          key: ValueKey<String>('image_$index'),
                        )
                      : Text(
                          titles[index],
                          style: GoogleFonts.azeretMono(
                            fontSize: 16,
                            shadows: [
                              Shadow(blurRadius: 5, color: Colors.grey)
                            ],
                          ).copyWith(color: Colors.orange),
                          key: ValueKey<String>('text_$index'),
                        ),
                ),
              ),
            ),
          ),
        ),),);}
}