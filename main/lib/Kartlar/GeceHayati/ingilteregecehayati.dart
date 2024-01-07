import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IngiltereGeceHayati extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'İngiltere Gece Hayatı',
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
                ' Trailer Happiness',
                'Portobello Road üzerinde bulunan ve üzerindeki sarı balık resmi olmasa bulunamayacak bir kapıdan girilen Trailer Happiness’ın yeraltındaki egzotik barında bir gece geçirdiğinde, o heyecan verici 70’li yıllara zaman yolculuğu yapmış gibi hissedeceksin.',
                'https://images.pexels.com/photos/2034851/pexels-photo-2034851.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              ),
              _buildGeceHayati(
                'Kensington Roof Garden',
                'Londra’da şık bir bar mı arıyorsun? Gökyüzündeki bu mekanı mutlaka denemelisin. Kensington caddelerinin üzerinde yükselen bu özel kulüp, sosyetik ve gösterişli insanların geceyi geçirmek için uğradığı yerlerden biri.',
                'https://images.pexels.com/photos/1267350/pexels-photo-1267350.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              ),
              _buildGeceHayati(
                'Happiness Forgets',
                'Mum ışığıyla aydınlatılan bodrum katı atmosferi tabii ki o klasik ve şık salaş ortamı yaratabiliyor ve dışarıda barı işaret eden tabelaların azlığı da buraya seçilmiş ve özel bir hava katıyor ama ortam genel olarak neşeli ve rahat. Ve her ne kadar burası Doğu Londra’nın “hipster” cennetinin tam merkezinde yer alsa da, bu bölge gösterişçilere kesinlikle kapalı.',
                'https://images.pexels.com/photos/54512/pexels-photo-54512.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
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