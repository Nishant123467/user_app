import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:user_app/screen/failed_payment.dart';
import 'package:user_app/screen/homepage.dart';
import 'package:user_app/screen/payment.dart';

class successful_payment extends StatefulWidget {
  const successful_payment({super.key});

  @override
  State<successful_payment> createState() => _successful_paymentState();
}

class _successful_paymentState extends State<successful_payment> {
   @override
  void initState() {
    super.initState();
    // Navigate to OnboardingScreen after a delay of 3000ms
    Future.delayed(const Duration(milliseconds: 10000), () {
      Navigator.of(context).pushReplacement(
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>payment_failed(),
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
          transitionDuration: const Duration(milliseconds: 3000),
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
       
           Positioned(
            top: 222,
            left: 79,
            child: SizedBox(
              width: 239,
              height: 239,
              child: Opacity(
                opacity: 1,
                child: Lottie.asset(
                  'animations/succussful.json',
                  
                ),
              ),
            ),
          ),
            Positioned(
            top: 471, // Adjust the position as needed
            left: 40, // Adjust the position as needed
            child: SizedBox(
              width: 303,
              height: 42,
              child: Center(
                child: Text(
                  'Payment Successful',
                  style: TextStyle(
                    fontFamily: 'IBM Plex Sans',
                    fontSize: 32,
                    fontWeight: FontWeight.w700,
                    height: 1.3, // lineHeight: 41.6 / 32
                    color: Color(0xFF000000),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
            
             Positioned(
            top: 520, // Adjust the position as needed
            left: 60, // Adjust the position as needed
            child: SizedBox(
              width: 250,
              height: 26,
              child: Center(
                child: Text(
                  'Redirecting to home.....',
                  style: TextStyle(
                    fontFamily: 'IBM Plex Sans',
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    height: 1.3, // lineHeight: 26 / 20
                    color: Color(0xFF5A6471),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
           
          
        ],
      ),
    );
  }
}