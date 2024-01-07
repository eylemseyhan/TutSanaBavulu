import 'package:flutter/material.dart';
import 'spinwheelscreen.dart';
import 'main2.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Kartlar/ingilterekartlari.dart';

void main() {
  runApp(IngiltereApp());
}

class IngiltereApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: IngilterePage(),
    );
  }
}

class IngilterePage extends StatelessWidget {
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
            'VAYY!! İNGİLTERE\'YE GİDİYORSUN',
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
                      'https://images.pexels.com/photos/427679/pexels-photo-427679.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
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
                    'İngiltere, Kuzey Avrupada bulunan ve Büyük Britanya adasında yer alan bir ülkedir. Tarihi, kültürü, sanatı, mimarisi, moda ve mutfağı ile dünya genelinde önemli bir etkiye sahiptir.',
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
              IngiltereKartlari(),
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