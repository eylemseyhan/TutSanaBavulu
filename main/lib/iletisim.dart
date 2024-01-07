import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'main.dart';
import 'package:google_fonts/google_fonts.dart';

class IletisimSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'İletişim',
          style: GoogleFonts.azeretMono(
            fontSize: 30,
            shadows: [Shadow(blurRadius: 5, color: Colors.grey)],
          ).copyWith(color: Colors.orange.shade600),
        ),
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        elevation: 0.0,
      ),
      body: Container(
          height: 1000,
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
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                      'https://i.hizliresim.com/gwh0nat.png',
                    ),
                  ),
                ),
                SizedBox(height: 20),
                IletisimBilgisi(
                  ikon: Icons.phone,
                  metin: 'Telefon: 05352371982',
                  onPress: () => _aramaYap('05352371982'),
                ),
                SizedBox(height: 16.0),
                IletisimBilgisi(
                  ikon: Icons.email,
                  metin: 'E-posta: emirozturk@trakya.edu.tr',
                  onPress: () => _emailGonder('emirozturk@trakya.edu.tr'),
                ),
                SizedBox(height: 16.0),
                IletisimBilgisi(
                  ikon: Icons.link,
                  metin: 'LinkedIn: linkedin.com/in/emirozturk',
                  onPress: () => _urlAc('https://www.linkedin.com/in/example'),
                ),
                SizedBox(height: 16.0),
                IletisimBilgisi(
                  ikon: Icons.code,
                  metin: 'GitHub: github.com/emirozturk',
                  onPress: () => _urlAc('https://github.com/emirozturk'),
                ),
                SizedBox(height:  40.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromARGB(255, 255, 102, 0),
                    padding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 20,
                            ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TutSanaBavuluApp()),
                    );
                  },
                  child: TweenAnimationBuilder<double>(
                    tween: Tween<double>(begin: 0.0, end: 1.0),
                    duration: Duration(milliseconds: 500),
                    builder: (BuildContext context, double value, Widget? child) {
                      return Opacity(
                        opacity: value,
                        child: child,
                      );
                    },
                    child: Text(
                      'Anasayfaya Geri Dön',
                      style: GoogleFonts.azeretMono(
                        fontSize: 16,
                        shadows: [Shadow(blurRadius: 5, color: Colors.grey)],
                      ).copyWith(color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void _aramaYap(String telefonNumarasi) async {
  String url = 'tel:$telefonNumarasi';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Arama başlatılamıyor: $url';
  }
}

void _emailGonder(String email) async {
  String url = 'mailto:$email';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'E-posta gönderilemiyor: $url';
  }
}

void _urlAc(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Bağlantı açılamıyor: $url';
  }
}

}

class IletisimBilgisi extends StatelessWidget {
  final IconData ikon;
  final String metin;
  final VoidCallback onPress;

  IletisimBilgisi({
    required this.ikon,
    required this.metin,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(ikon, size: 30.0),
          SizedBox(width: 8.0),
          Text(
            metin,
            style: GoogleFonts.azeretMono(
              fontSize: 15,
              shadows: [Shadow(blurRadius: 5, color: Colors.grey)],
            ).copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
