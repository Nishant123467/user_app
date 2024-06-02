import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:user_app/screen/Loginscreen.dart';
import 'package:user_app/screen/Ragisterscreen.dart';
import 'package:user_app/screen/homepage.dart';
import 'package:user_app/screen/onboarding4.dart';
import 'package:user_app/screen/otpverification.dart';

class ragisterscreen extends StatefulWidget {
  const ragisterscreen({super.key});

  @override
  State<ragisterscreen> createState() => _ragisterscreenState();
}

class _ragisterscreenState extends State<ragisterscreen> {
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
                  width: screenWidth * 0.25,
                  height: screenHeight * 0.04,
                  alignment: Alignment.center,
                  child: Text(
                    'Register',
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
                  width: screenWidth * 0.6,
                  height: screenHeight * 0.02,
                  alignment: Alignment.center,
                  child: Text(
                    'Unlock the door to your digital world.',
                    style: TextStyle(
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      height: 1.3,
                      color: Color(0xFF7B7B7B),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.08,
                  decoration: BoxDecoration(
                    color: Color(0xFFECF0F5),
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(15),
                      right: Radius.circular(15),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02, horizontal: screenWidth * 0.06),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                    ),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF5A6471),
                    ),
                    keyboardType: TextInputType.name,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.08,
                  decoration: BoxDecoration(
                    color: Color(0xFFECF0F5),
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(15),
                      right: Radius.circular(15),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02, horizontal: screenWidth * 0.06),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Email',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                    ),
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF5A6471),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.08,
                  decoration: BoxDecoration(
                    color: Color(0xFFECF0F5),
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(15),
                      right: Radius.circular(15),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02, horizontal: screenWidth * 0.06),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                    ),
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF5A6471),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Container(
                  width: screenWidth * 0.9,
                  height: screenHeight * 0.08,
                  decoration: BoxDecoration(
                    color: Color(0xFFECF0F5),
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(15),
                      right: Radius.circular(15),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02, horizontal: screenWidth * 0.06),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Confirm Password',
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                    ),
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF5A6471),
                    ),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Padding(
                  padding: EdgeInsets.all(screenWidth * 0.03),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => otpverificationpage(),
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
                      fixedSize: Size(screenWidth * 0.9, screenHeight * 0.08),
                      padding: EdgeInsets.only(top: screenHeight * 0.02),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
                      ),
                      primary: Color(0xFF3C63EB),
                      onPrimary: Colors.white,
                      shadowColor: Colors.transparent,
                    ),
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Container(
                  width: screenWidth * 0.6,
                  height: screenHeight * 0.05,
                  child: RichText(
                    text: TextSpan(
                      text: 'Already had an account? ',
                      style: TextStyle(
                        fontFamily: 'IBM Plex Sans',
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 1.3,
                        color: Color(0xFF3B3B3B),
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'Login',
                          style: TextStyle(
                            fontFamily: 'IBM Plex Sans',
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF3C63EB),
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(context, '/login');
                            },
                        ),
                      ],
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

