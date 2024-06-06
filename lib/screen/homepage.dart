import 'package:flutter/material.dart';
import 'package:user_app/screen/Docs.dart';
import 'package:user_app/screen/bottombar.dart';
import 'package:user_app/screen/setting.dart';
import 'package:user_app/screen/succussful_payment.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
 
 int _selectedIndex = 0;

  void _onItemTapped(int index) {
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Docspage()),
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SettingPage()),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFFECF0F5).withOpacity(1.0),
          appBar: PreferredSize(
        preferredSize: Size(392, 97),
        
        child: Opacity(
          opacity: 1.0,
          child: AppBar(
           backgroundColor: Color(0xFFECF0F5).withOpacity(1.0),
          // backgroundColor: Colors.amber,
            title: Container(
              width: 392,
              height: 97,
              padding: EdgeInsets.fromLTRB(16, 31, 16, 31),
             margin: EdgeInsets.only(top: 15, left: 25),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Container(
                        width: 236,
                        height: 23,
                        decoration: BoxDecoration(
                         // color: Colors.transparent.withOpacity(1.0),
                        ),
                        child: Row(
                        //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             Text(
                              "Hello,",
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                height: 23.48 / 20, // Line height ratio
                                textBaseline: TextBaseline.alphabetic,
                                color: Color(0xFF555E67),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Text(
                              "Jacob",
                              style: TextStyle(
                                fontFamily: 'Raleway',
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                height: 23.48 / 20, // Line height ratio
                                textBaseline: TextBaseline.alphabetic,
                                color: Color(0xFF1E2125),
                              ),
                            ),
                          
                            // Add more widgets here if needed
                          ],
                        ),
                      ),
                     
                     
                    ],
                            ),
                            SizedBox(height: 5), 
                              Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 260,
                        height: 35,
                       // padding: EdgeInsets.only(top: ),
                        decoration: BoxDecoration(
                          // color: Colors.transparent.withOpacity(0.0),
                        ),
                        child: Text(
                          "Manage all users of your application at one place",
                          style: TextStyle(
                            fontFamily: 'IBM Plex Sans',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            height: 18.2 / 14, // Line height ratio
                          //  textBaseline: TextBaseline.alphabetic,
                            color: Color(0xFF8C99AA),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
        ),
      ),
        ),
      ),
         body: Container(
          width: 393,
          height: 1051,
          
       //   margin: EdgeInsets.only(top: 156,left: -1),
          padding: EdgeInsets.fromLTRB(1, 25, 10, 25,),
        
           child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                Container(
                // color: Color(0xFFECF0F5).withOpacity(1.0),
                // color: Colors.black12,
              
            width: 330,
            height: 137,
          // padding: EdgeInsets.fromLTRB(32, 22, 32, 22),
                   //  margin: EdgeInsets.all(10), // Add margin as per your layout
           
             child: Row(
               children: [
                 Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Container(
                    
                          width: 109,
                          height: 102,
                          margin: EdgeInsets.only(top: 20),
                        
                      //    margin: EdgeInsets.only( left:0),
                          decoration: BoxDecoration(
                            color: Color(0xFF3C63EB),
                            borderRadius: BorderRadius.circular(19),
                          ),
                          
                        
                         child: Stack(
                                children: [
                                  Positioned(
                                     top: 10.39,
                                     left: 28.09,
                                    child: Container(
                                      width: 42.7,
                                      height: 39.15,
                                       child: Image.asset(
                                        'assets/images/Users.png', // Replace with your image asset path
                                        fit: BoxFit.contain,
                                      ),
                                     // color: Colors.transparent,
                                    ),
                                  ),
                                
                                  Positioned(
                                    top: 52.58,
                                    left: 10.49,
                                    child: Container(
                                      width: 91.02,
                                      height: 17.52,
                                      child: Center(
                                        child: Text(
                                          '13,86,258',
                                          style: TextStyle(
                                            fontFamily: 'IBM Plex Sans',
                                            fontSize: 13,
                                            fontWeight: FontWeight.w700,
                                         //   lineHeight: 1.3, // equivalent to 16.9px with 13px font size
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 3,),
                                  Positioned(
                                    top: 65.15,
                                    left: 10.49,
                                    bottom: 10,
                                   
                                    child: Container(
                                      width: 91.02,
                                      height: 12.36,
                                    
                                      child: Center(
                                        child: Text(
                                          'Total Users Count',
                                          style: TextStyle(
                                            fontFamily: 'IBM Plex Sans',
                                            fontSize: 9,
                                            fontWeight: FontWeight.w600,
                                           // lineHeight: 1.3, // equivalent to 11.7px with 9px font size
                                            color: Colors.white,
                                          ),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                         ),
                     ),
                ],
              ),
              SizedBox(width: 15,),
                 Container(
                          width: 206,
                          height: 137,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:BorderRadius.circular(19),
                          ),
                       
                           child: Stack(
                            children: [
                              Positioned(
                                // top: 10,
                                // left: 170.5,
                                child: Container(
                                  width: 169,
                                  height: 116,
                                 margin: EdgeInsets.only(top: 10,left: 15),
                                  decoration: BoxDecoration(
                                    color: Color(0xA9BAF61F),
                                    borderRadius:BorderRadius.circular(19),
                                  ),
                                ),
                              ),
                            ],
                           ),
                 
                        ),
             
               ],
            ),
               
                   ),
                     SizedBox(height: 15), // Gap between the containers
                            Container(
                              width: 338,
                              height: 23,
                              // color: Colors.orange, 
                               child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Your ',
                                          style: TextStyle(
                                            fontFamily: 'Raleway',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                         //   lineHeight: 1.174, // equivalent to 23.48px with 20px font size
                                            color: Color(0xFF555E67),
                                         //   textAlign: TextAlign.left,
                                          ),
                                        ),
                                       
                                        TextSpan(
                                          text: 'Products',
                                          style: TextStyle(
                                            fontFamily: 'Raleway',
                                            fontSize: 20,
                                            fontWeight: FontWeight.w800,
                                        //    lineHeight: 1.174, // equivalent to 23.48px with 20px font size
                                            color: Color(0xFF1E2125),
                                        //    textAlign: TextAlign.left,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    'View all',
                                    style: TextStyle(
                                      fontFamily: 'IBM Plex Sans',
                                      fontSize: 11,
                                      fontWeight: FontWeight.w500,
                                    //  lineHeight: 1.3, // equivalent to 14.3px with 11px font size
                                      color: Color(0xFF3C63EB),
                                   //   textAlign: TextAlign.left,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                              SizedBox(height: 15),
                  Container(
                    width: 340,
                    height: 237,
                    padding: EdgeInsets.fromLTRB(19, 15, 19, 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFE2E5F3),
                          offset: Offset(0, 4),
                          blurRadius: 8.9,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Finance App',
                          style: TextStyle(
                            fontFamily: 'IBM Plex Sans',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF1E2125),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Take control of your finances with our intuitive app – where managing money is as easy as a swipe and a tap.',
                          style: TextStyle(
                            fontFamily: 'IBM Plex Sans',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF555E67),
                          ),
                        ),
                        
                        Container(
                          width: 302,
                          height: 45,
                          color: Colors.orange,
                          child: Row(
                            children: [
                                Positioned(
                          // top: 185,
                          // left: 19,
                          child: Container(
                            width: 112.55,
                            height: 37,
                           margin: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                              color: Color(0xFF1E2125),
                              borderRadius: BorderRadius.circular(10), // Assuming Rectangle 3 means a rectangle with small radius
                            ),
                          ),
                        ),
                            ],
                          ),
                        
                          // Add content here if needed
                        ),
                      ],
                    ),
                  ),
                               SizedBox(height: 15),
                  Container(
                    width: 340,
                    height: 220,
                    padding: EdgeInsets.fromLTRB(15, 19, 15, 19),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFE2E5F3),
                          offset: Offset(0, 4),
                          blurRadius: 8.9,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Finance App',
                          style: TextStyle(
                            fontFamily: 'IBM Plex Sans',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF1E2125),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Take control of your finances with our intuitive app – where managing money is as easy as a swipe and a tap.',
                          style: TextStyle(
                            fontFamily: 'IBM Plex Sans',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF555E67),
                          ),
                        ),
                        
                        Container(
                          width: 302,
                          height: 45,
                          color: Colors.orange,
                          child: Row(
                            children: [
                                Positioned(
                          // top: 185,
                          // left: 19,
                          child: Container(
                            width: 112.55,
                            height: 37,
                           margin: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                              color: Color(0xFF1E2125),
                              borderRadius: BorderRadius.circular(10), // Assuming Rectangle 3 means a rectangle with small radius
                            ),
                          ),
                        ),
                            ],
                          ),
                        
                          // Add content here if needed
                        ),
                      ],
                    ),
                  ),
                               SizedBox(height: 15),
                  Container(
                    width: 340,
                    height: 237,
                    padding: EdgeInsets.fromLTRB(15, 19, 15, 19),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFE2E5F3),
                          offset: Offset(0, 4),
                          blurRadius: 8.9,
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Finance App',
                          style: TextStyle(
                            fontFamily: 'IBM Plex Sans',
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF1E2125),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Take control of your finances with our intuitive app – where managing money is as easy as a swipe and a tap.',
                          style: TextStyle(
                            fontFamily: 'IBM Plex Sans',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF555E67),
                          ),
                        ),
                        
                        Container(
                          width: 302,
                          height: 45,
                          color: Colors.orange,
                          child: Row(
                            children: [
                                Positioned(
                          // top: 185,
                          // left: 19,
                          child: Container(
                            width: 112.55,
                            height: 37,
                           margin: EdgeInsets.only(left: 5),
                            decoration: BoxDecoration(
                              color: Color(0xFF1E2125),
                              borderRadius: BorderRadius.circular(10), // Assuming Rectangle 3 means a rectangle with small radius
                            ),
                          ),
                        ),
                            ],
                          ),
                        
                          // Add content here if needed
                        ),
                      ],
                    ),
                  ),
                  
                  
                  
                ],
              
                
                
                 
                 ),
            ),
               ),
         ),
      bottomNavigationBar: BottomNavBar(
          selectedIndex: _selectedIndex,
          onItemTapped: (index) {
            setState(() {
              _selectedIndex = index;
            });
            _onItemTapped(index);
          },
        ),
      ),

      
    );
  }
}