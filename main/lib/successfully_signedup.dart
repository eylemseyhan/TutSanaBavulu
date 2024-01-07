import 'package:flutter/material.dart';
import 'main2.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SuccessfullySignedUp(),
    );
  }
}


class SuccessfullySignedUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color.fromARGB(255, 23, 34, 237), Color.fromARGB(255, 255, 119, 0)],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Tebrikler!',
                  style: GoogleFonts.azeretMono(
                            
                            fontSize: 30,
                            
                            shadows: [Shadow(blurRadius: 5,color: Colors.grey,),],
                            ).copyWith(color:Colors.white),
                ),
                SizedBox(height: 20),
                Text(
                  'Başarıyla üye oldunuz',
                  style: GoogleFonts.azeretMono(
                            
                            fontSize: 15,
                            
                            shadows: [Shadow(blurRadius: 5,color: Colors.grey,),],
                            ).copyWith(color:Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Navigate back to the previous screen (signup_screen.dart)
                    Navigator.push
                    (context,
                    MaterialPageRoute(
                      builder: (context) => HolidayPollApp(),
                    ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    backgroundColor: Color.fromARGB(255, 23, 34, 237),
                  ),
                  child: Text('Teste başla',
                  style: GoogleFonts.azeretMono(
                            
                            fontSize: 15,
                            
                            shadows: [Shadow(blurRadius: 5,color: Colors.grey,),],
                            ).copyWith(color:Colors.white),),
                ),
              ],
            ),
          ),
        ),),);}
}