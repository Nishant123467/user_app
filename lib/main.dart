import 'package:flutter/material.dart';
import 'package:user_app/screen/Loginscreen.dart';
import 'package:user_app/screen/Ragisterscreen.dart';
import 'package:user_app/screen/homepage.dart';
import 'package:user_app/screen/onboarding1.dart';
import 'package:user_app/screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
       
       
        useMaterial3: true,
      ),
       home:const SplashScreen(),
      routes: {
        'onboarding-1': (context) => Onboarding1(),
        '/home': (context) => homepage(),
          '/register': (context) => ragisterscreen(),
           '/login': (context) => loginscreen(),
      },
    );
  }
}


