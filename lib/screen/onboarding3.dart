import 'package:flutter/material.dart';
import 'package:user_app/screen/onboarding2.dart';
import 'package:user_app/screen/onboarding4.dart';


class onboarding3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Padding(
                 padding: EdgeInsets.only(top: 0.0,right: 270.0),
                  child: Container(
                    width: 343,
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 10.0), 
                    
                   
                    child: ElevatedButton(
                      
                      onPressed: (){ Navigator.of(context).pushReplacement(
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => onboarding2(),
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
                          );}, child: 
                    Center(child: Icon(Icons.arrow_back, color: Colors.white)),
                                style: ElevatedButton.styleFrom(
                                
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(0),
                                  backgroundColor: Color(0xFF3C63EB), // Button color
                                  foregroundColor: Colors.white, // Splash color
                                )
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                          
            Container(
              width: 344,
              height: 335,
              child: Opacity(
                opacity: 1.0, // Set opacity to 1.0 to make the image visible
                child: Image.asset('assets/images/Onboarding3img.png'),
              ),
            ),
           SizedBox(height: 10),
             Container(
              width: 274, // Width of the text container
              height: 42, // Height of the text container
             // Background color
              alignment: Alignment.center, // Center the text within the container
              child: Text(
                'Hassle-Free Setup',
                style: TextStyle(
                  fontFamily: 'IBM Plex Sans',
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                  height: 1.3, // Line height
                  color: Color(0xFF3C63EB), // Text color
                ),
                textAlign: TextAlign.center, // Center align the text
              ),
            ), 
             SizedBox(height: 10),
              Container(
              width: 343,
              height: 40,
              alignment: Alignment.center,
              // Background color
              child: Text(
                'Setting up your account is quick and easy. Follow the simple steps to get started.',
                style: TextStyle(
                  fontFamily: 'IBM Plex Sans',
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  height: 1.3, // Line height
                 color: Color(0xFF7B7B7B), // Text color
                ),
                textAlign: TextAlign.center, // Center align the text
              ),
            ),// Gap of 10px // Gap of 10px
            SizedBox(height: 20),

             
              Container(
              width: 53, // Width of the image container
              height: 8, // Height of the image container
              child: Opacity(
                opacity: 1.0, // Set opacity to 0 to make the image initially invisible
                child: Image.asset('assets/images/Pagination.png'),
              ),
            ),
           SizedBox(height: 10,),
            Padding(
                 padding: EdgeInsets.only(top: 50.0,left: 270.0),
                  child: Container(
                    width: 343,
                    height: 53,
                    padding: EdgeInsets.symmetric(horizontal: 10.0), 
                    child: ElevatedButton(
  onPressed: () {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => onboarding4(),
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
  style: ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(10),
    backgroundColor: Color(0xFF3C63EB), // Button color
    foregroundColor: Colors.white, // Splash color
  ),
  child: Row(
    mainAxisSize: MainAxisSize.min,
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
     // Icon(Icons.arrow_back, color: Colors.white),
     Transform.rotate(
        angle: 3.14159, // π radians or 180 degrees
        child: Icon(Icons.arrow_back, color: Colors.white),
      ),
    ],
  ),
),

                    
                   
                  
                  ),
                ),
                

            
          ],
        ),
      ),
    );
  }
}