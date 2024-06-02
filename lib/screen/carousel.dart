import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:user_app/screen/onboarding1.dart';
import 'package:user_app/screen/onboarding2.dart';

class carouselview extends StatefulWidget {
  const carouselview({super.key});

  @override
  State<carouselview> createState() => _carouselviewState();
}

class _carouselviewState extends State<carouselview> {
  final _controller=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            child: PageView(
              controller: _controller,
              children: [
                Onboarding1(),
                onboarding2(),
              ],
            ),
          ),
          SmoothPageIndicator(controller: _controller, count: 2)
        ],
      )
    );
  }
}