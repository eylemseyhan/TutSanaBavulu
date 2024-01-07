import 'package:flutter/material.dart';
import 'main.dart';
import 'package:lottie/lottie.dart';

class AnimationPage extends StatefulWidget {
  AnimationPage({Key? key}) : super(key: key);

  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );

    Future.delayed(Duration(seconds: 1), () async {
      await _controller.forward();

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => HomePage()),
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  bool bookmarked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(0, 0, 0, 1),
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (bookmarked == false) {
              bookmarked = true;
              _controller.forward();
            } else {
              bookmarked = false;
              _controller.reverse();
            }
          },
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color.fromARGB(255, 23, 34, 237), Color.fromARGB(255, 255, 119, 0)
                 
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                stops: [
                  0.0,
                  1.0
                ],
              ),
            ),
            child: LottieBuilder.asset(
              'assets/animasyon/ucak.json',
              controller: _controller,
              width: 100000.0,
              height: 1000.0,
            ),
          ),
        ),),);}
}