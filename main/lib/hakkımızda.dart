import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'main.dart';

class HakkimizdaSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: Text(
    'Hakkımızda',
    style: GoogleFonts.azeretMono(
      fontSize: 30,
      shadows: [Shadow(blurRadius: 5, color: Colors.grey)],
    ).copyWith(color: Colors.orange.shade600),
  ),
  centerTitle: true,
  elevation: 0.0,
  backgroundColor: Color.fromARGB(255, 23, 34, 237), // App bar arkaplan rengi
),
      
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 23, 34, 237), Color.fromARGB(255, 255, 119, 0)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'TutSanaBavulu',
                style: GoogleFonts.azeretMono(
                            
                            fontSize: 35,
                            
                            shadows: [Shadow(blurRadius: 5,color: Colors.grey,),],
                            ).copyWith(color:Colors.orange.shade600),
              ),
              SizedBox(height: 10),
              Text(
                'Biz Kimiz?',
                style: GoogleFonts.azeretMono(
                            
                            fontSize: 20,
                            
                            shadows: [Shadow(blurRadius: 5,color: Colors.grey,),],
                            ).copyWith(color:Colors.orange.shade600),
              ),
              SizedBox(height: 5),
              Text(
                'Tutsana Bavulu ekibi olarak, seyahat tutkunları ve gezmeyi seven bir grup geliştiriciyiz. '
                'Amacımız, kullanıcılarımıza tercihlerine göre özel seyahat rotaları sunmak ve '
                'gezilecek yerler hakkında kapsamlı bilgi sağlamaktır.',
                style: GoogleFonts.azeretMono(
                            
                            fontSize: 16,
                            
                            shadows: [Shadow(blurRadius: 5,color: Colors.grey,),],
                            ).copyWith(color:const Color.fromARGB(255, 255, 255, 255)),
              ),
              SizedBox(height: 20),
              Text(
                'Misyonumuz',
                style: GoogleFonts.azeretMono(
                            
                            fontSize: 20,
                            
                            shadows: [Shadow(blurRadius: 5,color: Colors.grey,),],
                            ).copyWith(color:Colors.orange.shade600),
              ),
              SizedBox(height: 5),
              Text(
                'Tutsana Bavulu olarak, insanların seyahat deneyimlerini unutulmaz kılmak ve '
                'farklı kültürleri keşfetmelerine yardımcı olmak istiyoruz. '
                'Herkesin kendi özel seyahat hikayesini yazmasına destek oluyoruz.',
                style: GoogleFonts.azeretMono(
                            
                            fontSize: 16,
                            
                            shadows: [Shadow(blurRadius: 5,color: Colors.grey,),],
                            ).copyWith(color:const Color.fromARGB(255, 255, 255, 255)),
              ),
              SizedBox(height: 20),
              Text(
                'Neden Biz?',
                style: GoogleFonts.azeretMono(
                            
                            fontSize: 20,
                            
                            shadows: [Shadow(blurRadius: 5,color: Colors.grey,),],
                            ).copyWith(color:Colors.orange.shade600),
              ),
              SizedBox(height: 5),
              Text(
                'Tutsana Bavulu, kullanıcı dostu arayüzü, kişiselleştirilmiş rota önerileri ve '
                'detaylı gezilecek yer bilgileri ile fark yaratıyor. '
                'Seyahat tutkunları için özel olarak tasarlandık!',
                style: GoogleFonts.azeretMono(
                            
                            fontSize: 16,
                            
                            shadows: [Shadow(blurRadius: 5,color: Colors.grey,),],
                            ).copyWith(color:const Color.fromARGB(255, 255, 255, 255)),
                
              ),
              SizedBox(height: 20),
              Center(
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
                                MaterialPageRoute(builder: (context) => TutSanaBavuluApp()),
                          );
                          
                        },
                        child: Text('Anasayfaya Geri Dön',
                        style: GoogleFonts.azeretMono(
                              
                              fontSize: 12,
                              
                              shadows: [Shadow(blurRadius: 5,color: Colors.grey,),],
                              ).copyWith(color:const Color.fromARGB(255, 255, 255, 255)),),
                        
                      ),
              ),
                
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HakkimizdaSayfasi(),));
}