import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main2.dart';

import 'spinwheelscreen.dart';

void main() {
  runApp(AraEkran());
}

class AraEkran extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Seçim',
      theme: ThemeData(
        primaryColor: Colors.blue,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
          accentColor: Color.fromARGB(255, 255, 119, 0),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 42.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 2.0,
            shadows: [
              Shadow(
                blurRadius: 5.0,
                color: Colors.black,
                offset: Offset(2.0, 2.0),
              ),
            ],
          ),
          bodyText2: TextStyle(
            fontSize: 16.0,
            color: const Color.fromARGB(255, 232, 233, 234),
          ),
        ),
      ),
      home: AraEkranSayfasi(),
    );
  }
}

class AraEkranSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        flexibleSpace: Center(
          child: Text(
            'Birini Seç!',
            style: GoogleFonts.gochiHand(
              letterSpacing: 5,
              fontSize: 55,
              fontWeight: FontWeight.bold,
              shadows: [Shadow(blurRadius: 5, color: Colors.grey)],
            ),
          ),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 23, 34, 237),
              Color.fromARGB(255, 255, 119, 0),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20.0),

              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'TutSanaBavulu\'nda keşfe hazır mısınız? Çark çevirerek yeni yerler keşfedebilir veya testi çözerek size uygun seyahat rotanızı görebilirsiniz. Maceranız şimdi başlasın!',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.azeretMono(
                          fontSize: 30,
                          shadows: [
                            Shadow(blurRadius: 5, color: Colors.grey),
                          ],
                        ).copyWith(
                          color: const Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CarkApp()),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                    Container(
                      
                      margin: EdgeInsets.only(bottom: 250),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(70),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(70),
                        child: Image.network(
                          'https://i.hizliresim.com/glt0zes.jpg',
                          width: 200, // Set your desired width
                          height: 200, // Set your desired height
                          fit: BoxFit.cover,
                        ),
                      ),
                      
                    ),
                    SizedBox(width: 20),
                    
                    GestureDetector(
  onTap: () {
    // Navigate to the desired screen when the second image is clicked
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HolidayPollApp()), // Replace SecondScreen with the actual screen you want to navigate to
    );
  },
  child: Container(
    margin: EdgeInsets.only(bottom: 250),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
    ),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image.network(
        'https://i.hizliresim.com/tkcmnyn.jpg',
        width: 200, // Set your desired width
        height: 200, // Set your desired height
        fit: BoxFit.cover,
      ),
    ),
  ),
),
                    
                  ],
                ),
              ),
            ],
          ),
        ),),);}
}