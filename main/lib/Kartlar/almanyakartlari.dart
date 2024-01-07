import 'package:flutter/material.dart';
import 'GeceHayati/almanyagecehayati.dart';
import 'GezilecekYerler/almanyagezilecekyerler.dart';
import 'Ulasim/almanyaulasim.dart';
import 'Yemekler/almanyayemekler.dart';
import 'package:google_fonts/google_fonts.dart';

class AlmanyaKartlari extends StatefulWidget {
  @override
  _AlmanyaKartlariState createState() => _AlmanyaKartlariState();
}

class _AlmanyaKartlariState extends State<AlmanyaKartlari> {
  int hoveredIndex = -1;
  final List<String> titles = [
    'Yemekler',
    'Gezilecek Yerler',
    'Gece Hayatı',
    'Ulaşım'
  ];
  final List<String> imageUrls = [
    'https://images.pexels.com/photos/1659437/pexels-photo-1659437.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/280221/pexels-photo-280221.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/4969831/pexels-photo-4969831.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/1545743/pexels-photo-1545743.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
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
              MaterialPageRoute(
                  builder: (context) =>
                      AlmanyaYemek()), // FinlandiyaYemek sayfasına yönlendirme
            );
            break;
          
          case 1:
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      AlmanyaGezilecekYerler()), // FinlandiyaGezilecekYerler sayfasına yönlendirme
            );
            break;
          case 2:
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      AlmanyaGeceHayati()), // FinlandiyaGeceHayati sayfasına yönlendirme
            );
            break;
          case 3:
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      AlmanyaUlasim()), // FinlandiyaUlasim sayfasına yönlendirme
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
                          imageUrls[index], 
                          height: imageSize.height,
                          width:
                              double.infinity, 
                          fit: BoxFit
                              .cover, 
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
        ),
      ),
    );
  }
}