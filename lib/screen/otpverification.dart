import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:user_app/screen/Loginscreen.dart';
import 'package:user_app/screen/Ragisterscreen.dart';
import 'package:user_app/screen/homepage.dart';
import 'package:user_app/screen/onboarding4.dart';
import 'package:user_app/screen/otpverification.dart';
import 'package:user_app/screen/selectplan.dart';

class otpverificationpage extends StatefulWidget {
  const otpverificationpage({super.key});

  @override
  State<otpverificationpage> createState() => _otpverificationpageState();
}

class _otpverificationpageState extends State<otpverificationpage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 40.0,
                    right: screenWidth * 0.6,
                  ),
                  child: Container(
                    width: screenWidth * 0.2,
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          PageRouteBuilder(
                            pageBuilder: (context, animation, secondaryAnimation) => loginscreen(),
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
                      },
                      child: Center(child: Icon(Icons.arrow_back, color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(0),
                        backgroundColor: Color(0xFF3C63EB),
                        foregroundColor: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Container(
                  width: screenWidth * 0.6,
                  height: screenHeight * 0.3,
                  child: Opacity(
                    opacity: 1.0,
                    child: Image.asset('assets/images/registerimg.png'),
                  ),
                ),
                Container(
                  width: screenWidth * 0.35,
                  height: screenHeight * 0.04,
                  alignment: Alignment.center,
                  child: Text(
                    'Enter OTP',
                    style: TextStyle(
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      height: 1.3,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                 Container(
               //   width: screenSize.width * 0.6,
               width: screenWidth * 0.6,
                  height: 16,
                  alignment: Alignment.center,
                  child: Text(
                    'An OTP is been sent to your email',
                    style: TextStyle(
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      height: 1.3, // Line height
                      color: Color(0xFF7B7B7B), // Text color
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                   SizedBox(height: screenHeight * 0.02),
               
             Container(
  width: 331,
  height: 71.48,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      for (int i = 0; i < 4; i++)
        Container(
          width: 71.48,
          height: 71.48,
          decoration: BoxDecoration(
            color: Color(0xFFECF0F5),
            borderRadius: BorderRadius.circular(17),
          ),
          child: Center(
            child: TextFormField(
              decoration: InputDecoration(
                border: InputBorder.none,
                counterText: '', // To hide the counter (character count)
              ),
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              maxLength: 1, // Set the length of OTP to 1 character
              onChanged: (value) {
                // You can handle the OTP input here
              },
            ),
          ),
        ),
    ],
  ),
             ),
                SizedBox(height: screenHeight * 0.02),
                Padding(
                  padding: EdgeInsets.all(screenWidth * 0.03),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation)=>selectplanscreen(),
                          transitionsBuilder: (context, animation, secondaryAnimation, child) {
                            const curve = Curves.easeOut;
                            var tween = Tween(begin: Offset(0.0, 1.0), end: Offset.zero).chain(CurveTween(curve: curve));
                            return SlideTransition(
                              position: animation.drive(tween),
                              child: child,
                            );
                          },
                          transitionDuration: const Duration(milliseconds: 300),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: Size(screenWidth * 0.8, screenHeight * 0.08),
                      padding: EdgeInsets.only(top: screenHeight * 0.02),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      primary: Color(0xFF3C63EB),
                      onPrimary: Colors.white,
                      shadowColor: Colors.transparent,
                    ),
                    child: Center(
                      child: Text(
                        'Submit OTP',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.05,
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Not received OTP yet? ',
                        style: TextStyle(
                          fontFamily: 'IBM Plex Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.3,
                          color: Color(0xFF3B3B3B),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Resend OTP',
                            style: TextStyle(
                              fontFamily: 'IBM Plex Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF3C63EB),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                               // Navigator.pushNamed(context, '/login');
                              },
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

