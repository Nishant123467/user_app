import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:user_app/screen/Ragisterscreen.dart';
import 'package:user_app/screen/homepage.dart';
import 'package:user_app/screen/onboarding4.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final screenSize = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 50.0, right: screenSize.width * 0.6),
                  child: Container(
                    width: screenSize.width * 0.2,
                    height: 40,
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
                      child: Center(child: Icon(Icons.arrow_back, color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(0),
                        backgroundColor: Color(0xFF3C63EB), // Button color
                        foregroundColor: Colors.white, // Splash color
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: screenSize.width * 0.6,
                  height: screenSize.width * 0.6,
                  child: Opacity(
                    opacity: 1.0, // Set opacity to 1.0 to make the image visible
                    child: Image.asset('assets/images/loginimg.png'),
                  ),
                ),
                Container(
                  width: screenSize.width * 0.2,
                  height: 31,
                  alignment: Alignment.center,
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                      height: 1.3, // Line height
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  width: screenSize.width * 0.6,
                  height: 16,
                  alignment: Alignment.center,
                  child: Text(
                    'Unlock the door to your digital world.',
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
                SizedBox(height: 10),
                Container(
                  width: screenSize.width * 0.85,
                  height: 54,
                  decoration: BoxDecoration(
                    color: Color(0xFFECF0F5),
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(15),
                      right: Radius.circular(15),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
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
                SizedBox(height: 10),
                Container(
                  width: screenSize.width * 0.85,
                  height: 54,
                  decoration: BoxDecoration(
                    color: Color(0xFFECF0F5),
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(15),
                      right: Radius.circular(15),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
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
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => homepage(),
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
                      fixedSize: Size(screenSize.width * 0.85, 60),
                      padding: EdgeInsets.only(top: 10),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(17),
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
                Container(
                  width: 115,
                  height: 18,
                  alignment: Alignment.center,
                  child: Text(
                    'Or Continue with',
                    style: TextStyle(
                      fontFamily: 'IBM Plex Sans',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      height: 1.3, // Line height
                      color: Color(0xFF606A66),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => Navigator.pushReplacementNamed(context, '/home'),
                      child: Container(
                        width: 38,
                        height: 38,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/Google.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20), // Space between the buttons
                    GestureDetector(
                      onTap: () => Navigator.pushReplacementNamed(context, '/home'),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/Facebook.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  width: screenSize.width * 0.85,
                  height: 21,
                  child: Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Don’t have an account? ',
                        style: TextStyle(
                          fontFamily: 'IBM Plex Sans',
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          height: 1.3, // This is 20.8px in line height
                          color: Color(0xFF3B3B3B),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Register',
                            style: TextStyle(
                              fontFamily: 'IBM Plex Sans',
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF3C63EB),
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(context, '/register');
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




// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:user_app/screen/Ragisterscreen.dart';
// import 'package:user_app/screen/homepage.dart';
// import 'package:user_app/screen/onboarding4.dart';

// class loginscreen extends StatefulWidget {
//   const loginscreen({super.key});

//   @override
//   State<loginscreen> createState() => _loginscreenState();
// }

// class _loginscreenState extends State<loginscreen> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         backgroundColor: Colors.white,
//         body: SingleChildScrollView(
//           child: Center(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                   Padding(
//                      padding: EdgeInsets.only(top: 50.0,right: 270.0),
//                       child: Container(
//                         width: 343,
//                         height: 40,
//                         padding: EdgeInsets.symmetric(horizontal: 10.0), 
                        
                       
//                         child: ElevatedButton(
                          
//                           onPressed: (){ Navigator.of(context).pushReplacement(
//                                 PageRouteBuilder(
//                                   pageBuilder: (context, animation, secondaryAnimation) => onboarding4(),
//                                   transitionsBuilder: (context, animation, secondaryAnimation, child) {
//                                     const begin = Offset(0.0, 1.0);
//                                     const end = Offset.zero;
//                                     const curve = Curves.easeOut;
//                                     var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
//                                     return SlideTransition(
//                                       position: animation.drive(tween),
//                                       child: child,
//                                     );
//                                   },
//                                   transitionDuration: const Duration(milliseconds: 300),
//                                 ),
//                               );}, child: 
//                         Center(child: Icon(Icons.arrow_back, color: Colors.white)),
//                                     style: ElevatedButton.styleFrom(
                                    
//                                       shape: CircleBorder(),
//                                       padding: EdgeInsets.all(0),
//                                       backgroundColor: Color(0xFF3C63EB), // Button color
//                                       foregroundColor: Colors.white, // Splash color
//                                     )
//                         ),
//                       ),
//                     ),
                  
//                     SizedBox(height: 10,),          
//                 Container(
//                 //  padding: EdgeInsets.only(top: 77.07),
//                   width: 236,
//                   height: 236,
//                   child: Opacity(
//                     opacity: 1.0, // Set opacity to 1.0 to make the image visible
//                     child: Image.asset('assets/images/loginimg.png'),
//                   ),
//                 ),
//              //  SizedBox(height: 10),
//                  Container(
//                   width: 65, // Width of the text container
//                   height: 31, // Height of the text container
//                  // Background color
//                   alignment: Alignment.center, // Center the text within the container
//                   child: Text(
//                     'Login',
//                     style: TextStyle(
//                       fontFamily: 'IBM Plex Sans',
//                       fontWeight: FontWeight.w600,
//                       fontSize: 24,
//                       height: 1.3, // Line height
//                       color:Colors.black
//                     ),
//                     textAlign: TextAlign.center, // Center align the text
//                   ),
//                 ), 
//                SizedBox(height: 10),
//                   Container(
//                   width: 220,
//                   height: 16,
//                   alignment: Alignment.center,
//                   // Background color
//                   child: Text(
//                     'Unlock the door to your digital world.',
//                     style: TextStyle(
//                       fontFamily: 'IBM Plex Sans',
//                       fontWeight: FontWeight.w500,
//                       fontSize: 12,
//                       height: 1.3, // Line height
//                      color: Color(0xFF7B7B7B), // Text color
//                     ),
//                     textAlign: TextAlign.center, // Center align the text
//                   ),
//                 ),// Gap of 10px // Gap of 10px
//                 SizedBox(height: 10,),
               
//                Container(
//             width: 330,
//             height: 54,
//             decoration: BoxDecoration(
//               color: Color(0xFFECF0F5), 
//               borderRadius: BorderRadius.horizontal(
//           left: Radius.circular(15),
//           right: Radius.circular(15),
//               ),// Background color
              
//             ),
//             padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
//             child: TextFormField(
//               decoration: InputDecoration(
//           labelText: 'Email',
               
//            floatingLabelBehavior: FloatingLabelBehavior.never,
//           border: InputBorder.none, // No border line
//           contentPadding: EdgeInsets.zero, // Remove internal padding as it's set by the Container
//               ),
//               style: TextStyle(
//           fontSize: 16,
//           fontWeight: FontWeight.w500,
//                color: Color(0xFF5A6471),
          
//               ),
//               keyboardType: TextInputType.emailAddress,
//               //textAlign: TextAlign.center,
//             ),
//           ),
          
          
              
             
//                SizedBox(height: 10,),
//                 Container(
//             width: 330,
//             height: 54,
//             decoration: BoxDecoration(
//               color: Color(0xFFECF0F5), 
//               borderRadius: BorderRadius.horizontal(
//           left: Radius.circular(15),
//           right: Radius.circular(15),
//               ),// Background color
              
//             ),
//             padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
//             child: TextFormField(
//               decoration: InputDecoration(
//           labelText: 'Password',
               
//            floatingLabelBehavior: FloatingLabelBehavior.never,
//           border: InputBorder.none, // No border line
//           contentPadding: EdgeInsets.zero, // Remove internal padding as it's set by the Container
//               ),
//               style: TextStyle(
//           fontSize: 14,
//           fontWeight: FontWeight.w500,
//                color: Color(0xFF5A6471),
          
//               ),
//               keyboardType: TextInputType.visiblePassword,
//               //textAlign: TextAlign.center,
//             ),
//           ),
//           SizedBox(height: 5,),
//             Padding(padding: 
//                  EdgeInsets.all(10),
//                  child: ElevatedButton(
//             onPressed: () {
//               Navigator.of(context).push(
//           PageRouteBuilder(
//             pageBuilder: (context, animation, secondaryAnimation) => homepage(),
//             transitionsBuilder: (context, animation, secondaryAnimation, child) {
//               const curve = Curves.easeOut;
//               var tween = Tween(begin: Offset(0.0, 1.0), end: Offset.zero).chain(CurveTween(curve: curve));
//               return SlideTransition(
//                 position: animation.drive(tween),
//                 child: child,
//               );
//             },
//             transitionDuration: const Duration(milliseconds: 300),
//           ),
//               );
//             },
//             style: ElevatedButton.styleFrom(
//               fixedSize: Size(330, 60),
//               padding: EdgeInsets.only(top: 10),
//               shape: RoundedRectangleBorder(
//                borderRadius: BorderRadius.circular(17)
//               ),
//               primary: Color(0xFF3C63EB), // Background color
//               onPrimary: Colors.white, // Text color
//               shadowColor: Colors.transparent, // Remove button shadow
//             ),
//             child: Text(
//               'Login',
//               style: TextStyle(
//           fontSize: 18,
//           fontWeight: FontWeight.bold,
//               ),
//             ),
//           ),
          
//                  ),
//                     Container(
//                   width: 115, // Width of the text container
//                   height: 18, // Height of the text container
//                  // Background color
//                   alignment: Alignment.center, // Center the text within the container
//                   child: Text(
//                     'Or Continue with',
//                     style: TextStyle(
//                       fontFamily: 'IBM Plex Sans',
//                       fontWeight: FontWeight.w500,
//                       fontSize: 14,
//                       height: 1.3, // Line height
//                      color: Color(0xFF606A66),
//                     ),
//                     textAlign: TextAlign.center, // Center align the text
//                   ),
//                 ), 
//                 SizedBox(height: 10,),
//                Stack(
//             children: <Widget>[
            
//               Positioned(
//              //   top: 627,
//               //  left: MediaQuery.of(context).size.width / 2 - 38 - 20,
//                 child: AnimatedOpacity(
//                   opacity: 1.0,
//                   duration: Duration(milliseconds: 300),
//                   curve: Curves.easeOut,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       GestureDetector(
//                         onTap: () =>Navigator.pushReplacementNamed(context, '/home'),
//                         child: Container(
//                           width: 38,
//                           height: 38,
//                           decoration: BoxDecoration(
//                             image: DecorationImage(
//                               image: AssetImage('assets/images/Google.png'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       SizedBox(width: 20), // Space between the buttons
//                       GestureDetector(
//                         onTap: () =>  Navigator.pushReplacementNamed(context, '/home'),
//                         child: Container(
//                           width: 40,
//                           height: 40,
//                           decoration: BoxDecoration(
//                             image: DecorationImage(
//                               image: AssetImage('assets/images/Facebook.png'),
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           SizedBox(height: 10,),
//            Container(
//                   width: 237,
//                   height: 21,
//                   child: RichText(
//                     text: TextSpan(
//                       text: 'Don’t have an account? ',
//                       style: TextStyle(
//                         fontFamily: 'IBM Plex Sans',
//                         fontSize: 16,
//                         fontWeight: FontWeight.w500,
//                         height: 1.3, // This is 20.8px in line height
//                        color: Color(0xFF3B3B3B),
//                       ),
//                       children: <TextSpan>[
//                         TextSpan(
//                           text: 'Register',
//                           style: TextStyle(
//                             fontFamily: 'IBM Plex Sans',
//                             fontSize: 16,
//                             fontWeight: FontWeight.w600,
//                             color: Color(0xFF3C63EB),
//                           ),
//                           recognizer: TapGestureRecognizer()
//                             ..onTap = () {
//                               Navigator.pushNamed(context, '/register');
//                             },
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
          
          
          
              
                    
          
                
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
  