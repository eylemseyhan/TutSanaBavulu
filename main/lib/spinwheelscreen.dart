import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';
import 'package:main/ingiltere.dart';
import 'package:rxdart/rxdart.dart'; //reaktif programlama kitaplığı
import 'package:main/almanya.dart';
import 'package:main/amerika.dart';
import 'package:main/japonya.dart';
import 'package:main/finlandiya.dart';
import 'package:main/hindistan.dart';
import 'package:main/italya.dart';
import 'misir.dart';
import 'package:main/turkiye.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const CarkApp());
}



class CarkApp extends StatelessWidget {
  const CarkApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rota Ruleti',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const SpinWheel(),
    );
  }
}

class SpinWheel extends StatefulWidget {
  const SpinWheel({Key? key}) : super(key: key);
  

  @override
  State<SpinWheel> createState() => _SpinWheelState();
}

class _SpinWheelState extends State<SpinWheel> {
  final selected = BehaviorSubject<int>(); //çarkın seçilen öğesini takip etmek için rxdarttan geliyo
  int cikanUlke = 0;
  

  List<String> countries = [
    'Amerika',
    'İngiltere',
    'Mısır',
    'Japonya',
    'Hindistan',
    'Finlandiya',
    'Almanya',
    'İtalya',
    'Türkiye',
  ];
  bool spinning = false; //başlangıçta çarkın dönmediği bilgisi

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 23, 34, 237),
        elevation: 0.0,
        title: Center(
          child: Text(
            'ROTA RULETİ',
            style: GoogleFonts.azeretMono(
                fontSize: 35,
                color: Colors.white,
                shadows: [
                  Shadow(
                    blurRadius: 5,
                    color: Colors.white,
                  ),
                ]),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 23, 34, 237),
              Color.fromARGB(255, 255, 119, 0),
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(
                height: 600,
                width: 1600,
                child: Expanded(
                  child: FortuneWheel(
                    //çark veya tekerlek görünümü oluşturmak için kullanılan  Widget
                    selected: selected
                        .stream, //bu çarktaki hangi öğenin seçildiğini  göstermek için
                    animateFirst:
                        false, //ilk seçimin animasyonla gösterilmemesi
                    items: [
                      //çarkın içindeki öğeler
                      for (int i = 0;
                          i < countries.length;
                          i++) ...<FortuneItem>{
                        FortuneItem(
                          //çarktaki her bir öğenin temsil edildiği Widget
                            child: Text(
                          //"countries" listesinden gelen ülke isimleri
                          countries[i],
                          style: GoogleFonts.azeretMono(fontSize: 25, shadows: [
                            Shadow(
                              blurRadius: 5,
                              color: Colors.grey,
                            ),
                          ]),
                        )),
                      },
                    ],
                    onAnimationEnd: () { //animasyonun bitiminde gerçekleştirilecek işlemler
                      setState(() {
                        cikanUlke = selected.value; //, "selected" değerinden gelen bilgiyi cikanUlke değişkenine atıyor
                      });

                      String selectedCountry = countries[cikanUlke];
                      switch (selectedCountry) {
                        case 'Amerika':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AmerikaPage(),
                            ),
                          );
                          break;
                        case 'İngiltere':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => IngilterePage(),
                            ),
                          );
                          break;
                        case 'Türkiye':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TurkiyePage(),
                            ),
                          );
                          break;
                        case 'Almanya':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AlmanyaPage(),
                            ),
                          );
                          break;
                        case 'İtalya':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ItalyApp(),
                            ),
                          );
                          break;
                        case 'Hindistan':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HindistanPage(),
                            ),
                          );
                          break;
                        case 'Finlandiya':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FinlandiyaApp(),
                            ),
                          );
                          break;
                        case 'Mısır':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MisirApp(),
                            ),
                          );
                          break;
                        case 'Japonya':
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => JapanPage(),
                            ),
                          );
                          break;

                      }
                    },
                  ),
                ),
              ),
            ),
            GestureDetector( //dokunmatik veya tıklama olayını algılamak için kullanılır
              onTap: ()  {
                setState(()  {
                  selected.sink.add(Fortune.randomInt(0, countries.length)); // 0 ile 7 arasında rastgele bir sayı seçiyor
                  
                });
              },

              child: Container(
                margin: EdgeInsets.all(10),
                height: 60,
                width: 140,
                color: Colors.white,
                child: Center(
                  child: Text(
                    "ÇEVİR",
                    style: GoogleFonts.azeretMono(
                      fontSize: 25,
                      shadows: [
                        Shadow(
                          blurRadius: 5,
                          color: Colors.grey,
                        ),
                      ],
                    ).copyWith(
                      color: Color.fromARGB(255, 27, 10, 183),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
