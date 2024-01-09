import 'package:flutter/material.dart';

import 'italya.dart';
import 'amerika.dart';
import 'almanya.dart';
import 'finlandiya.dart';
import 'hindistan.dart';
import 'turkiye.dart';
import 'japonya.dart';
import 'ingiltere.dart';
import 'misir.dart';
import 'dart:math';



class DecisionHandler {
  static void handleDecision(BuildContext context, String selectedAgeGroup, String selectedBudget, String selectedSeason, String selectedMeaning, String selectedTransport, String selectedFood, String selectedSpor) {
    if (
      (selectedBudget == 'Çok bütçem var.' || selectedBudget == 'Bütçeyi düşünmüyorum. Para böyle yenir.' ||
          selectedBudget == 'Biraz bütçem var.') &&
      selectedMeaning == 'Eğlence' && (selectedFood != 'Sushi' && selectedFood != 'Pizza') && 
      (selectedSpor == 'basketbol' && selectedSpor != 'yoga')) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AmerikaPage()),
      );
    } else if (((selectedBudget == 'Çok bütçem var.' || selectedBudget == 'Bütçeyi düşünmüyorum. Para böyle yenir.' || selectedBudget == 'Biraz bütçem var.') && selectedAgeGroup == '50 üstü' && selectedMeaning == 'Sakinlik' && selectedSpor != 'yoga' && (selectedFood != 'Pizza' && selectedFood != 'Sushi') ) ||  selectedBudget == 'Biraz bütçem var.' && selectedMeaning == 'Sakinlik' && selectedSeason =='kış' && ( selectedSpor != 'yoga'  )  && (selectedFood != 'Pizza' && selectedFood != 'Sushi')) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AlmanyaPage()),
      );
    } else if (((selectedBudget == 'Çok bütçem var.' || selectedBudget == 'Bütçeyi düşünmüyorum. Para böyle yenir.' || selectedBudget == 'Biraz bütçem var.') &&
        selectedMeaning == 'Mimari' &&
        selectedFood == 'Pizza') || ((selectedBudget == 'Çok bütçem var.' || selectedBudget == 'Bütçeyi düşünmüyorum. Para böyle yenir.' || selectedBudget == 'Biraz bütçem var.') && selectedMeaning == 'Mimari' && selectedFood == 'Hamburger') || ((selectedBudget == 'Çok bütçem var.' || selectedBudget == 'Bütçeyi düşünmüyorum. Para böyle yenir.' || selectedBudget == 'Biraz bütçem var.') && selectedMeaning == 'Mimari' && selectedFood == 'Kebap') || ((selectedBudget == 'Çok bütçem var.' || selectedBudget == 'Bütçeyi düşünmüyorum. Para böyle yenir.' || selectedBudget == 'Biraz bütçem var.') && selectedFood == 'Pizza' && selectedMeaning == 'Tarih')) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ItalyApp()),
      );
    } else if ((selectedBudget == 'Çok bütçem var.' || selectedBudget == 'Bütçeyi düşünmüyorum. Para böyle yenir.' || selectedBudget == 'Biraz bütçem var.') &&
        selectedSpor == 'yoga') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HindistanPage()),
      );
    } else if (selectedBudget == 'Hiç bütçem yok.') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TurkiyePage()),
      );
    } else if (((selectedBudget == 'Çok bütçem var.' || selectedBudget == 'Bütçeyi düşünmüyorum. Para böyle yenir.') &&
        selectedMeaning == 'Eğlence' &&
        selectedTransport == 'Araba' &&
        selectedFood == 'Sushi') || ((selectedBudget == 'Çok bütçem var.' || selectedBudget == 'Bütçeyi düşünmüyorum. Para böyle yenir.') &&  selectedFood == 'Sushi')) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => JapanPage()),
      );
    } else if ((selectedBudget == 'Bütçeyi düşünmüyorum. Para böyle yenir.' || selectedBudget == 'Çok bütçem var.') &&
        selectedSpor == 'kayak' && selectedSeason != 'yaz' &&  (selectedFood != 'Pizza' && selectedFood != 'Sushi' ) && (selectedSpor != 'yoga' && selectedSpor != 'yüzme') || ((selectedBudget == 'Bütçeyi düşünmüyorum. Para böyle yenir.' || selectedBudget == 'Çok bütçem var.') &&  selectedSpor == 'kayak' && selectedSeason != 'kış'  && selectedMeaning == 'Sakinlik' && (selectedFood != 'Pizza' && selectedFood != 'Sushi') && (selectedSpor != 'yoga' && selectedSpor != 'yüzme'))) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => FinlandiyaPage()),
      );
    } else if ((selectedBudget == 'Bütçeyi düşünmüyorum. Para böyle yenir' || selectedBudget == 'Çok bütçem var.') &&
        selectedMeaning == 'Tarih' && (selectedSpor !='yüzme' && selectedSpor != 'yoga') && (selectedFood != 'Pizza' && selectedFood != 'Sushi')) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => IngilterePage()),
      );
    } else if ((selectedBudget == 'Biraz bütçem var.' && (selectedMeaning == 'Tarih' || selectedMeaning == 'Eğlence')&& (selectedFood != 'Pizza' && selectedFood != 'Sushi' ) && (selectedSpor != 'yoga' &&  selectedSpor != 'kayak')) || ( (selectedBudget == 'Biraz bütçem var.' || selectedBudget == 'Çok bütçem var.' ) && selectedMeaning == 'Tarih' && selectedSpor == 'yüzme') ){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MisirApp()),
      );
    } else {
      // Eğer hiçbir koşul sağlanmazsa, rastgele bir sayfaya yönlendir
      List<Widget Function()> pages = [
        () => AmerikaPage(),
        () => AlmanyaPage(),
        () => ItalyApp(),
        () => HindistanPage(),
      
        () => JapanPage(),
        () => FinlandiyaPage(),
        () => IngilterePage(),
        () => MisirApp(),
      ];

      Random random = Random();
      Widget Function() randomPage = pages[random.nextInt(pages.length)];

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => randomPage()),);}}
}