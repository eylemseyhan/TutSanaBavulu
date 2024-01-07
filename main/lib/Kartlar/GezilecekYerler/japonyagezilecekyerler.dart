import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class JaponyaGezilecekYerler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text(
          'Japonya Gezilecek Yerler',
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
              Color.fromARGB(255, 255, 119, 0),
            ],
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildGezilecekYer(
                'Kyoto - Altın Tapınak (Kinkaku-ji)',
                'Kyoto, geleneksel Japon kültürü ve tarihiyle ünlüdür. Altın Tapınak veya Kinkaku-ji, muazzam bir bahçe içinde yer alır ve yaldızlı altın kaplamasıyla süslüdür. Budist tapınağı olan Kinkaku-ji, gölün yansıması ve çevresindeki peyzajla birlikte büyüleyici bir manzara sunar.',
                'https://images.pexels.com/photos/1673978/pexels-photo-1673978.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
              _buildGezilecekYer(
                'Tokyo - Asakusa ve Sensō-ji Tapınağı',
                'Tokyo, Japonyanın başkenti ve en büyük şehri olarak modern yaşam tarzıyla bilinir. Ancak, Asakusa bölgesinde bulunan Sensō-ji Tapınağı, geleneksel Japon mimarisini ve kültürünü keşfetmek için harika bir yerdir.Tapınak,renkli bir geçit olan Nakamise Doriden geçilerek ulaşılabilir.',
                'https://images.pexels.com/photos/861446/pexels-photo-861446.jpeg?auto=compress&cs=tinysrgb&w=600',
              ),
              _buildGezilecekYer(
                'Hiroşima - Barış Anıtı ve Barış Parkı',
                'Hiroşima, tarihî bir öneme sahip olan ve II. Dünya Savaşında atom bombasına maruz kalan bir şehirdir. Barış Anıtı ve Barış Parkı, Hiroşimadaki barış ve anlama kültürünü vurgular. Anıt, 1945teki atom bombası patlamasının kurbanlarını anmak için inşa edilmiştir. Park içinde ayrıca Japonya Barış Anıtı Müzesi de bulunmaktadır.',
                'https://images.pexels.com/photos/18385203/pexels-photo-18385203/free-photo-of-kent-kent-simgesi-bina-cimen.jpeg?auto=compress&cs=tinysrgb&w=600',
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
                  width: 400,
                  fit: BoxFit.cover,
                )
              : Container(),
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