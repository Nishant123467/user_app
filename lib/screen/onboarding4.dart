import 'package:flutter/material.dart';
import 'package:user_app/screen/Loginscreen.dart';
import 'package:user_app/screen/Ragisterscreen.dart';

import 'package:user_app/screen/onboarding3.dart';


class onboarding4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Padding(
                 padding: EdgeInsets.only(top: 30.0,right: 270.0),
                  child: Container(
                    width: 343,
                    height: 40,
                    padding: EdgeInsets.symmetric(horizontal: 10.0), 
                    
                   
                    child: ElevatedButton(
                      
                      onPressed: (){ Navigator.of(context).pushReplacement(
                            PageRouteBuilder(
                              pageBuilder: (context, animation, secondaryAnimation) => onboarding3(),
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
                SizedBox(height: 10,),
                          
            Container(
              width: 344,
              height: 280,
              child: Opacity(
                opacity: 1.0, // Set opacity to 1.0 to make the image visible
                child: Image.asset('assets/images/img4.png'),
              ),
            ),
           SizedBox(height: 10),
             Container(
              width: 274, // Width of the text container
              height: 42, // Height of the text container
             // Background color
              alignment: Alignment.center, // Center the text within the container
              child: Text(
                'Get Started',
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
          //   SizedBox(height: 10),
              Container(
              width: 343,
              height: 120,
              alignment: Alignment.center,
              // Background color
              child: Text(
                'Join us and experience next-level security. Our onboarding process is fortified with anti-fraud measures to ensure your peace of mind.',
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
           
             Padding(padding: 
             EdgeInsets.all(10),
             child: ElevatedButton(
  onPressed: () {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => loginscreen(),
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
    fixedSize: Size(330, 60),
    padding: EdgeInsets.only(top: 10),
    shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(17)
    ),
    primary: Color(0xFF3C63EB), // Background color
    onPrimary: Colors.white, // Text color
    shadowColor: Colors.transparent, // Remove button shadow
  ),
  child: Text(
    'Login',
    style: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
),

             ),

          
         
           SizedBox(height: 5,),
             Padding(padding: 
             EdgeInsets.all(10),
             child: ElevatedButton(
  onPressed: () {
    Navigator.of(context).push(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => ragisterscreen(),
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
    fixedSize: Size(330, 60),
    padding: EdgeInsets.only(top: 10),
    shape: RoundedRectangleBorder(
     borderRadius: BorderRadius.circular(17)
    
    ),
     side: BorderSide(
      color: Color(0xFF3C62EB),// Border color
        width: 2, // Border width
      ),
   // Background color
   primary:  Colors.white,
    onPrimary: Colors.white, // Text color
   // shadowColor: Colors.transparent, // Remove button shadow
    
  ),
  child: Text(
    'Register',
    style: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: Color(0xFF3C62EB),
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