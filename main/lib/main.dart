import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:main/animasyon.dart';
import 'package:main/araekran.dart';


import 'signup_screen.dart';
import 'forgot_password.dart';
import 'hakkımızda.dart';
import 'iletisim.dart';


void main() {
  runApp(TutSanaBavuluApp());
}

class TutSanaBavuluApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TutSanaBavulu',
      theme: ThemeData(
        primaryColor: Colors.blue,
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
          accentColor:Color.fromARGB(255, 255, 119, 0),
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
      home:AnimationPage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true, // Scaffold'ın body kısmını AppBar'ın arkasına uzatıyor
      appBar: AppBar(
        flexibleSpace: Center(
          child: Text(
            'TutSanaBavulu',
            style: GoogleFonts.gochiHand(
              letterSpacing: 5,
              fontSize: 55,
              fontWeight: FontWeight.bold,
              shadows: [Shadow(blurRadius: 5,color: Colors.grey,),],
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
            colors: [Color.fromARGB(255, 23, 34, 237), Color.fromARGB(255, 255, 119, 0)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 40.0,
              ),
              Container(
  margin: EdgeInsets.only(top: 40),
  decoration: BoxDecoration(
    boxShadow: [
      BoxShadow(
        color:  Color.fromARGB(255, 255, 119, 0).withOpacity(0.7), 
        spreadRadius: 7, 
        blurRadius: 7, 
        offset: Offset(0, 3), 
      ),
    ],
    borderRadius: BorderRadius.circular(50),
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(50),
    child: Image.network(
      'https://i.hizliresim.com/7k8lspl.jpg',
      width: 200, // Width
      height: 200, // Height
      fit: BoxFit.cover,
    ),
  ),
),
              SizedBox(height: 30,),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Kullanıcı adı',
                          labelStyle: TextStyle(color: Colors.white),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 10,
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Şifre',
                          labelStyle: TextStyle(color: Colors.white),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: 15,
                            horizontal: 10,
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ForgotPasswordScreen()),
                            );
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.blue,
                        ),
                        child: Text(
                          'Şifremi Unuttum',
                          style: GoogleFonts.azeretMono(
                            
                            fontSize: 15,
                            
                            shadows: [Shadow(blurRadius: 5,color: Colors.grey,),],
                            ).copyWith(color:Colors.white),
                          
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 255, 102, 0),
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
                              MaterialPageRoute(builder: (context) => AraEkranSayfasi()),
                            );
                          },
                          child: Text(
                            'Giriş Yap',
                            style: GoogleFonts.azeretMono(
                            
                            fontSize: 15,
                            
                            shadows: [Shadow(blurRadius: 5,color: Colors.grey,),],
                            ),
                            
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: const Color.fromARGB(255, 255, 102, 0),
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
                      MaterialPageRoute(builder: (context) => SignUpScreen()), 
                    );
                            print('Sign Up button pressed');
                          },
                          child: Text(
                            'Üye Ol',
                            style: GoogleFonts.azeretMono(
                            fontSize: 15,
                            shadows: [Shadow(blurRadius: 5,color: Colors.grey,),],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
    color: Color.fromARGB(255, 105, 23, 237),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
          onPressed: () {
            Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HakkimizdaSayfasi()),
                  );
            // Hakkımızda sayfasına yönlendirme
          },
          child: Text(
            'Hakkımızda',
            style: GoogleFonts.azeretMono(
                            
                            fontSize: 15,
                            
                            shadows: [Shadow(blurRadius: 5,color: Colors.grey,),],
                            ).copyWith(color:Colors.white),

          ),
        ),
        TextButton(
          onPressed: () {
             Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => IletisimSayfasi()),
                  );
          },
            // İletişim sayfasına yönlendirme 
          
          child: Text(
            'İletişim',
            style: GoogleFonts.azeretMono(
                            
                            fontSize: 15,
                            
                            shadows: [Shadow(blurRadius: 5,color: Colors.grey,),],
                            ).copyWith(color:Colors.white),

          ),
        ),
        
      ],),),);}
}