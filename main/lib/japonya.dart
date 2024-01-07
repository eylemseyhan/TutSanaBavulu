import 'package:flutter/material.dart';
import 'spinwheelscreen.dart';
import 'main2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/Kartlar/japoncard.dart';

void main() {
  runApp(JaponyaApp());
}

class JaponyaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: JapanPage(),
    );
  }
}

class JapanPage extends StatelessWidget {
  final ScrollController _scrollController = ScrollController();

  Widget _buildTravelPlace(String title, String description, String imageUrl) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            description,
            style: TextStyle(fontSize: 18),
          ),
          Image.network(
            imageUrl,
            height: 300,
            width: 500,
            fit: BoxFit.cover,
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _buildInfo(String title, String content) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            content,
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Center(
          child: Text(
            'VAYY!! JAPONYA\'YA GİDİYORSUN',
            style: GoogleFonts.azeretMono(
              fontSize: 35,
              shadows: [
                Shadow(
                  blurRadius: 5,
                  color: Colors.grey,
                ),
              ],
            ).copyWith(color: const Color.fromARGB(255, 255, 255, 255)),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
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
          controller: _scrollController,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 104, 103, 103)
                            .withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image.network(
                      'https://images.pexels.com/photos/3408354/pexels-photo-3408354.jpeg?auto=compress&cs=tinysrgb&w=600',
                      height: 400,
                      width: 700,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Center(
                  child: Text(
                    'Japonya, Doğu Asya\'da bulunan bir ada ülkesidir ve Pasifik Okyanusu\'nda dört ana adadan oluşur: Honshu, Hokkaido, Kyushu ve Shikoku. Ülke, zengin kültürü, gelenekleri, teknolojik yenilikleri ve muazzam şehir manzaralarıyla bilinir.\n\n'
                    'Japonya, geleneksel ve modern unsurların bir araya geldiği benzersiz bir ülkedir. Geleneksel kimonolar, çay seremonileri, klasik bahçeler ve tapınaklar, modern ve hızlı tren sistemleri, yüksek teknoloji ürünleri ve pop kültürü gibi özellikleriyle öne çıkar.\n\n'
                    'Ülke aynı zamanda doğal güzelliklere de ev sahipliği yapar. Fuji Dağı gibi ikonik dağlar, güzel bahçeler, geleneksel ryokan adlı konaklama yerleri ve antik şehirler, turistleri çeken cazibe merkezlerindendir.',
                    style: GoogleFonts.azeretMono(
                      fontSize: 16,
                      shadows: [
                        Shadow(
                          blurRadius: 5,
                          color: Colors.grey,
                        ),
                      ],
                    ).copyWith(color: const Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
              ),
              JaponyaKartlari(),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: SizedBox(
                      width: 400,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HolidayPollApp()));
                        },
                        child: Center(
                          child: Text(
                            'Teste Geri Dön ',
                            style: GoogleFonts.azeretMono(
                              fontSize: 16,
                              shadows: [
                                Shadow(
                                  blurRadius: 5,
                                  color: Colors.grey,
                                ),
                              ],
                            ).copyWith(
                                color:
                                    const Color.fromARGB(255, 255, 255, 255)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
  alignment: Alignment.centerLeft,
  child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Center(
      child: SizedBox(
        width: 400,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CarkApp())); // 'AnotherPage()' yerine gitmek istediğiniz sayfa widget'ını ekleyin
          },
          child: Center(
            child: Text(
              'Çarka Geri Dön',
              style: GoogleFonts.azeretMono(
                fontSize: 16,
                shadows: [
                  Shadow(
                    blurRadius: 5,
                    color: Colors.grey,
                  ),
                ],
              ).copyWith(
                  color: const Color.fromARGB(255, 255, 255, 255)),
            ),
          ),
        ),
      ),
    ),
  ),
),
            ],
          ),
        ),),);}
}