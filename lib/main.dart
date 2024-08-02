import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:football_quiz/start_page.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const SplashScreen());
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash:
            LottieBuilder.asset('assets/lottie/Animation - 1711545313416.json'),
        nextScreen: const StartPage(),
        animationDuration: const Duration(seconds: 4),
        splashIconSize: 900,
        backgroundColor: const Color(0xFF58C2C5),
      ),
    );
  }
}
