import 'package:flutter/material.dart';
import 'main.dart';
import 'successfully_signedup.dart';
import 'package:google_fonts/google_fonts.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpScreen(),
    );
  }
}

class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        title: Text('Sign Up',
        style: GoogleFonts.azeretMono(
                            
                            fontSize: 25,
                            
                            shadows: [Shadow(blurRadius: 5,color: Colors.grey,),],
                            ).copyWith(color:Colors.white),),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color.fromARGB(255, 23, 34, 237), Color.fromARGB(255, 255, 119, 0)],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'İsim',
                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Soyisim',
                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Telefon',
                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextField(
                      decoration: InputDecoration(
                        labelText: 'Kullanıcı Adı',
                      ),
                    ),
                    SizedBox(height: 8.0),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Parola',
                      ),
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 23, 34, 237),
                            padding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 20,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                      onPressed: () {
                        
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SuccessfullySignedUp(),
                          ),
                        );
                      },
                      child: Text('Üye Ol',
                      style: GoogleFonts.azeretMono(
                            
                            fontSize: 15,
                            
                            shadows: [Shadow(blurRadius: 5,color: Colors.grey,),],
                            ).copyWith(color:Colors.white),),
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                            primary: Color.fromARGB(255, 23, 34, 237),
                            padding: EdgeInsets.symmetric(
                              vertical: 15,
                              horizontal: 20,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage(),
                          ),
                        );
                        
                      },
                      child: Text(
                        'Önceki sayfaya dön',
                        style: GoogleFonts.azeretMono(
                            
                            fontSize: 15,
                            
                            shadows: [Shadow(blurRadius: 5,color: Colors.grey,),],
                            ).copyWith(color:Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),),);}
}