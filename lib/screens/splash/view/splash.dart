import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quran_shamel/screens/quran_images/view/quran_images_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  late BuildContext _context;
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 5), (() {
      Navigator.pushReplacement(
          // _context, MaterialPageRoute(builder: (context) => HomeView()));
      _context, MaterialPageRoute(builder: (context) => const QuranImagesScreen()));
    }));
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    return Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, 69, 24, 7),
                    Color.fromARGB(255, 154, 102, 106)
                  ]),
            ),
            child: Image.asset('assets/images/quran.png'),
          ),
        ),
        backgroundColor: Colors.brown[900]);
  }
}