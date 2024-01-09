import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'decision.dart';

void main() {
  runApp(HolidayPollApp());
}

class HolidayPollApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Test Sayfası',
      theme: ThemeData(
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Secim(),
    );
  }
}

class Secim extends StatefulWidget {
  @override
  _SecimState createState() => _SecimState();
}

class _SecimState extends State<Secim> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  String selectedAgeGroup = '';
  String selectedBudget = '';
  String selectedMeaning = '';
  String selectedTransport = '';
  String selectedFood = '';
  String selectedSeason = '';
  String selectedSpor = '';

  Map<String, String> ageGroupImages = {
    '18 altı': 'https://i.hizliresim.com/9i44icm.jpg',
    '18 - 30': 'https://i.hizliresim.com/axx56wb.jpg',
    '31 - 50': 'https://i.hizliresim.com/94l3ik8.jpg',
    '50 üstü': 'https://i.hizliresim.com/kparmpg.jpg',
  };
  Map<String, String> budgetImages = {
    'Hiç bütçem yok.': 'https://i.hizliresim.com/2rfrpye.jpg',
    'Biraz bütçem var.': 'https://i.hizliresim.com/ac5t9ie.jpg',
    'Çok bütçem var.': 'https://i.hizliresim.com/dukxni8.jpg',
    'Bütçeyi düşünmüyorum.Para böyle yenir.':
        'https://i.hizliresim.com/fam1d2x.jpg',
  };
  Map<String, String> seasonImages = {
    'İlkbahar': 'https://i.hizliresim.com/8vgx48z.jpg',
    'Yaz': 'https://i.hizliresim.com/ntl024y.jpg',
    'Sonbahar': 'https://i.hizliresim.com/jg0i0x8.jpg',
    'Kış': 'https://i.hizliresim.com/kyfl7n6.jpg',
  };

  Map<String, String> meaningImages = {
    'Eğlence': 'https://i.hizliresim.com/rz1whpa.jpg',
    'Sakinlik': 'https://i.hizliresim.com/czch3qu.jpg',
    'Tarih': 'https://i.hizliresim.com/6zvy0hm.jpg',
    'Mimari': 'https://i.hizliresim.com/62gf808.jpg',
  };

  Map<String, String> transportImages = {
    'Metro': 'https://i.hizliresim.com/hcaxbla.jpg',
    'Araba': 'https://i.hizliresim.com/4ej9o4u.jpg',
    'Bisiklet': 'https://i.hizliresim.com/poq75jf.jpg',
    'Yürümek': 'https://i.hizliresim.com/3bx4lgu.jpg',
  };

  Map<String, String> foodImages = {
    'Hamburger': 'https://i.hizliresim.com/job8k9q.jpg',
    'Pizza': 'https://i.hizliresim.com/denja3b.jpg',
    'Kebap': 'https://i.hizliresim.com/8dgkunm.jpg',
    'Sushi': 'https://i.hizliresim.com/35newmp.jpeg',
  };
  Map<String, String> SporImages = {
    'Yüzme': 'https://i.hizliresim.com/9qapu4e.jpg',
    'Kayak': 'https://i.hizliresim.com/ijf6n4x.jpg',
    'Basketbol': 'https://i.hizliresim.com/1av4esr.jpeg',
    'Yoga': 'https://i.hizliresim.com/gcvxbaz.jpg',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'TESTE BAŞLAYALIM!',
          style: GoogleFonts.azeretMono(
            fontSize: 50,
            shadows: [
              Shadow(blurRadius: 20, color: Color.fromARGB(236, 255, 255, 255))
            ],
          ).copyWith(color: Color.fromARGB(255, 255, 119, 0)),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: AnimatedContainer(
          duration: Duration(
              milliseconds: 500), //süre özelliği  animasyonun ne kadar süreceği
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(_getCurrentPageBackgroundImage()),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment
                  .stretch, //çapraz eksen boyunca mevcut alana sığacak şekilde widget'ın genişlemesi
              children: <Widget>[
                Expanded(
                  child: PageView.builder(
                    controller: _pageController,
                    itemCount: 7, // Soru sayısı
                    onPageChanged: (index) {
                      setState(() {
                        _currentPage = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Center(
                        child: Card(
                          elevation: 8.0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: buildQuestionWithOptions(index),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 20),
                if (_currentPage == 6)
                  ElevatedButton(
                    onPressed: () {
                      DecisionHandler.handleDecision(
                        //kullanıcı girdilerine dayalı olarak bir sonuç üretmek için tanımladığımız fonk.
                        context,
                        selectedAgeGroup,
                        selectedBudget,
                        selectedSeason,
                        selectedMeaning,
                        selectedTransport,
                        selectedFood,
                        selectedSpor,
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          Color.fromARGB(255, 255, 119, 0)),
                    ),
                    child: Text(
                      'Gönder',
                      style: GoogleFonts.azeretMono(
                        fontSize: 15,
                        shadows: [Shadow(blurRadius: 5, color: Colors.grey)],
                      ).copyWith(color: Colors.white),
                    ),
                  ),
                SizedBox(height: 20),
                if (_currentPage > 0 && _currentPage < 6)
                  Container(
                    height: 20,
                    width: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        _pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.easeInOut);
                      },
                      style: 
                      ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 255, 119, 0)), // Renk değişikliği
                      ),
                  
                      child: Text(
                        'İleri',
                        style: GoogleFonts.azeretMono(
                          fontSize: 15,
                          shadows: [Shadow(blurRadius: 5, color: Colors.grey)],
                        ).copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                SizedBox(height: 20),
                if (_currentPage > 0)
                  TextButton(
                    onPressed: () {
                      _pageController.previousPage(
                          duration: Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                    },
                    child: Text(
                      'Geri',
                      style: GoogleFonts.azeretMono(
                        fontSize: 15,
                        shadows: [Shadow(blurRadius: 5, color: Colors.grey)],
                      ).copyWith(color: Color.fromARGB(255, 255, 119, 0)),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _getCurrentPageBackgroundImage() { //gif arkaplanı için
    return 'https://i.hizliresim.com/97bgg5m.gif';
  }

  Widget buildQuestionWithOptions(int index) {
    String question;
    List<String> options;
    Map<String, String> imageMap;
    String selectedOption;

    switch (index) {
      case 0:
        question = '1. Yaş aralığını seç';
        options = ageGroupImages.keys.toList();
        imageMap = ageGroupImages;
        selectedOption = selectedAgeGroup;
        break;
      case 1:
        question = '2. Tatil için bütçen nedir?';
        options = budgetImages.keys.toList();
        imageMap = budgetImages;
        selectedOption = selectedBudget;
        break;
      case 2:
        question = '3. En sevdiğin mevsim hangisi?';
        options = seasonImages.keys.toList();
        imageMap = seasonImages;
        selectedOption = selectedSeason;
        break;
      case 3:
        question = '4. Tatil senin için ne anlam ifade ediyor?';
        options = meaningImages.keys.toList();
        imageMap = meaningImages;
        selectedOption = selectedMeaning;
        break;
      case 4:
        question = '5. Hangi ulaşım aracını tercih edersin?';
        options = transportImages.keys.toList();
        imageMap = transportImages;
        selectedOption = selectedTransport;
        break;
      case 5:
        question = '6. Hangi yemeği tercih edersin?';
        options = foodImages.keys.toList();
        imageMap = foodImages;
        selectedOption = selectedFood;
        break;
      case 6:
        question = '7. Hangi spor aktivetisini seversin?';
        options = SporImages.keys.toList();
        imageMap = SporImages;
        selectedOption = selectedSpor;
        break;
      default:
        question = '';
        options = [];
        imageMap = {};
        selectedOption = '';
    }

    return Container(
        height: 280,
        width: 500,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.5),
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                question,
                style: GoogleFonts.azeretMono(
                  fontSize: 15,
                  shadows: [
                    Shadow(
                      blurRadius: 5,
                      color: Colors.grey,
                    ),
                  ],
                ).copyWith(color: Color.fromARGB(255, 255, 119, 0)),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal, //yatay scrollable görüntü oluşturuyor
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: options.map((option) {
                  bool isSelected = selectedOption == option;

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        switch (index) {
                          case 0:
                            selectedAgeGroup = option;
                            break;
                          case 1:
                            selectedBudget = option;
                            break;
                          case 2:
                            selectedSeason = option;
                            break;
                          case 3:
                            selectedMeaning = option;
                            break;
                          case 4:
                            selectedTransport = option;
                            break;
                          case 5:
                            selectedFood = option;
                            break;
                          case 6:
                            selectedSpor = option;
                            break;
                        }
                      });
                    },
                    child: Container(
                      width: isSelected ? 120 : 120,
                      height: isSelected ? 150 : 150,
                      margin: EdgeInsets.all(2),
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: isSelected ? Colors.transparent : null,
                        gradient: isSelected
                            ? null
                            : LinearGradient(
                                colors: [
                                  Colors.transparent,
                                  Colors.transparent,
                                ],
                              ),
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(
                          color: isSelected
                              ? Colors.transparent
                              : Colors.transparent,
                          width: 2,
                        ),
                        boxShadow: isSelected
                            ? [
                                BoxShadow(
                                  color: Color.fromARGB(255, 255, 119, 0),
                                ),
                              ]
                            : [],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            width: 90,
                            height: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: isSelected
                                    ? Color.fromARGB(255, 255, 165, 0)
                                    : Colors.transparent,
                                width: 2,
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                imageMap[option]!,
                                width: 85,
                                height: 85,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            option,
                            style: GoogleFonts.azeretMono(
                              fontSize: 12,
                              shadows: [
                                Shadow(
                                  blurRadius: 5,
                                  color: Colors.grey,
                                ),
                              ],
                            ).copyWith(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 12),
          ],
        ));
  }
}
