import 'package:flutter/material.dart';
import 'main.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ForgotPasswordScreen(),
    );
  }
}

class ForgotPasswordScreen extends StatefulWidget {
  @override
  _ForgotPasswordScreenState createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            children: [
             
              SizedBox(height: 20),
              buildPasswordTextField(
                'Yeni Şifre',
                newPasswordController,
              ),
              SizedBox(height: 10),
              buildPasswordTextField(
                'Yeni Şifreyi Tekrar Girin',
                confirmPasswordController,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 102, 0),
                ),
                onPressed: () {
                  // Şifre sıfırlama işlemleri burada 
                  String newPassword = newPasswordController.text;
                  String confirmPassword = confirmPasswordController.text;

                  if (newPassword == confirmPassword) {
                    // Şifreleri kontrol etme
                    // ...
                    print('Şifre sıfırlama işlemi başarılı!');
                  } else {
                    // kullanıcıya uyarı verecek
                    print('Şifreler uyuşmuyor!');
                  }
                },
                child: Text('Şifreyi Sıfırla',
                style: GoogleFonts.azeretMono(
                            
                            fontSize: 15,
                            
                            shadows: [Shadow(blurRadius: 5,color: Colors.grey,),],
                            ).copyWith(color:Colors.white),
                ),
              ),

              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                 backgroundColor: const Color.fromARGB(255, 255, 102, 0),
                ),
                onPressed: () {
                  print('Butona tıklandı');
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TutSanaBavuluApp()),
                  );
                },
                
                child: Text(
                  'Giriş\' e Geri Dön',
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
    );
  }

  Widget buildPasswordTextField(String label, TextEditingController controller) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        controller: controller,
        obscureText: true,
        style: TextStyle(color: Colors.white),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.white),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),),),),);}}