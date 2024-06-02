import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:user_app/screen/onboarding1.dart';
import 'dart:async';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Navigate to OnboardingScreen after a delay of 3000ms
    Future.delayed(const Duration(milliseconds: 10000), () {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => Onboarding1(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(0.0, 1.0);
            const end = Offset.zero;
            const curve = Curves.easeOut;
            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
          transitionDuration: const Duration(milliseconds: 300),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Center Container
          Positioned(
            top: 206,
            left: 175,
            child: Container(
              width: 393,
              height: 852,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(28),
              ),
            ),
          ),
          // Text as App Logo
         Positioned(
            top: 405,
            left: 127,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'App ',
                    style: TextStyle(
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                      height: 1.3,
                     color: Color(0xFF3C62EB),
                    ),
                  ),
                  TextSpan(
                    text: 'Logo',
                    style: TextStyle(
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w700,
                      fontSize: 32,
                      height: 1.3,
                      color: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
           Positioned(
            top: 519,
            left: 121,
            child: SizedBox(
              width: 150,
              height: 150,
              child: Opacity(
                opacity: 1,
                child: Lottie.asset(
                  'animations/main_animation.json',
                  
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
