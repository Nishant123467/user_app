import 'package:flutter/material.dart';
import 'package:user_app/screen/succussful_payment.dart';

class selectplanscreen extends StatefulWidget {
  const selectplanscreen({super.key});

  @override
  State<selectplanscreen> createState() => _selectplanscreenState();
}

class _selectplanscreenState extends State<selectplanscreen> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
       home: Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(343, 52),
        
        child: Opacity(
          opacity: 1.0,
          child: AppBar(
            backgroundColor: Colors.white,
            title: Container(
              width: 350,
              height: 52,
              margin: EdgeInsets.only(top: 15, left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Back button with specified properties
                  Container(
                    width: 31,
                    height: 34.86,
                    child: Opacity(
                      opacity: 1.0,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                  // Text container with specified properties
                  Container(
                    width: 103,
                    height: 26,
                    margin: EdgeInsets.only(left: 10), // Adjust as needed
                    child: Opacity(
                      opacity: 1.0,
                      child: Text(
                        'Select Plan',
                        style: TextStyle(
                          fontFamily: 'IBM Plex Sans',
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          height: 1.3,
                          color: Color(0xFF1C1C1C),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  // New container with specified properties
                  Container(
                    width: 133,
                    height: 37,
                    decoration: BoxDecoration(
                      color: Color(0xFFF3F7F5),
                      borderRadius: BorderRadius.circular(12),
                      border: Border(
                        top: BorderSide(color: Color(0xFF3C62EB), width: 1.0),
                        left: BorderSide(color: Color(0xFF3C62EB), width: 1.0),
                        right: BorderSide(color: Color(0xFF3C62EB), width: 1.0),
                        bottom: BorderSide(color: Color(0xFF3C62EB), width: 1.0),
                      ),
                    ),
                    child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                     Container(
                         width: 66,
                         height: 25,
                         margin: EdgeInsets.only(top: 2, left: 6,bottom: 3),
                         decoration: BoxDecoration(
                           color: Color(0xFF3C63EB),
                          borderRadius: BorderRadius.circular(9),
                           border: Border(
                             top: BorderSide(color: Color(0xFF3C62EB), width: 1.0),
                             left: BorderSide(color: Color(0xFF3C62EB), width: 1.0),
                             right: BorderSide(color: Color(0xFF3C62EB), width: 1.0),
                             bottom: BorderSide(color: Color(0xFF3C62EB), width: 1.0),
                           ),
                         ),
                         child:  Container(
                           width: 41,
                           height: 14,
                           margin: EdgeInsets.only(top: 5, left: 13,bottom: 5),
                           decoration: BoxDecoration(
                          //   color: Color(0xFFECF0F5),
                            // border: Border.all(color: Color(0xFFECF0F5), width: 0),
                           ),
                           child: Opacity(
                             opacity: 1,
                             child: Text(
                               'Monthly',
                               style: TextStyle(
                                 fontFamily: 'IBM Plex Sans',
                                 fontSize: 11,
                                 fontWeight: FontWeight.w500,
                                 height: 1.3,
                                 color: Color(0xFFECF0F5),
                               ),
                               textAlign: TextAlign.left,
                             )
                           ),
                         ),
                     ),
                    // SizedBox(width: 2,),
                      Container(
                           width: 45,
                           height: 14,
                           margin: EdgeInsets.only(top: 5, left: 5,right: 5,bottom: 3),
                           decoration: BoxDecoration(
                          //   color: Color(0xFFECF0F5),
                            // border: Border.all(color: Color(0xFFECF0F5), width: 0),
                           ),
                           child: Opacity(
                             opacity: 1,
                             child: Center(
                               child: Text(
                                 'Yearly',
                                 style: TextStyle(
                                   fontFamily: 'IBM Plex Sans',
                                   fontSize: 11,
                                   fontWeight: FontWeight.w500,
                                   height: 1.3,
                                    color: Color(0xFF1C1C1C),
                                 ),
                                 textAlign: TextAlign.center,
                               ),
                             )
                           ),
                         ),
                       
                ],
              ),
            ),
                ],
          ),
        ),
      ),
        ),
      ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              
              Container(
          width: 340,
          height: 243,
          padding: EdgeInsets.fromLTRB(32, 22, 32, 22),
          margin: EdgeInsets.all(10), // Add margin as per your layout
          decoration: BoxDecoration(
            color: Color(0xFFFFFFFF),
           
           
            borderRadius: BorderRadius.circular(24),
            border: Border(
              top: BorderSide(color: Color(0xFF6D8DFF4A), width: 1.0),
              left: BorderSide(color: Color(0xFF6D8DFF4A), width: 1.0),
              right: BorderSide(color: Color(0xFF6D8DFF4A), width: 1.0),
              bottom: BorderSide(color: Color(0xFF6D8DFF4A), width: 1.0),
            ),
          ),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
        width: 276,
        height: 17,
        margin: EdgeInsets.only(top: 0), // Adjust margin as needed
        decoration: BoxDecoration(
          // Apply your properties here
          color: Colors.transparent,
          border: Border.all(color: Colors.transparent), // Remove border
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Free',
              style: TextStyle(
                fontFamily: 'Barlow',
                fontSize: 14,
                fontWeight: FontWeight.w500,
              //  lineHeight: 16.8,
                color: Color(0xFF000000),
              ),
            ),
            Text(
              'MONTHLY',
              style: TextStyle(
                fontFamily: 'Barlow',
                fontSize: 11,
                fontWeight: FontWeight.w500,
              //  lineHeight: 13.2,
                color: Color(0xFFA8A8A8),
              ),
            ),
          ],
        ),
              ),
               SizedBox(height: 10), // Add gap between elements
              Container(
        width: 40.03,
        height: 38,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.transparent),
        ),
        child: Text(
          '\$0',
          style: TextStyle(
            fontFamily: 'Barlow',
            fontSize: 32,
            fontWeight: FontWeight.w500,
            height: 1.2, // lineHeight: 38.4 / 32
            color: Color(0xFF000000),
          ),
        ),
              ),
        SizedBox(height: 10), // Add gap between elements
              Container(
        width: 270.49,
        height: 34,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.transparent),
        ),
        child: Text(
          'Best for testing all the basic features of the application.',
          style: TextStyle(
            fontFamily: 'Barlow',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 1.2, // lineHeight: 16.8 / 14
            color: Color(0xFF606060),
          ),
        ),
              ),
        SizedBox(height: 10), // Add gap between elements
              Container(
        width: 210.98,
        height: 16,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.transparent),
        ),
        child: Row(
          children: [
            Text(
              '✔️',
              style: TextStyle(
                fontFamily: 'IBM Plex Sans',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 1.3, // lineHeight: 15.6 / 12
                color: Color(0xFF000000),
              ),
            ),
            SizedBox(width: 7), // Add a small gap between the checkmark and text
            Text(
              '1000 API Requests per month',
              style: TextStyle(
                fontFamily: 'IBM Plex Sans',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 1.3, // lineHeight: 15.6 / 12
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
              ),
        SizedBox(height: 10), // Add gap between elements
              Container(
        width: 185.02,
        height: 16,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.transparent),
        ),
        child: Row(
          children: [
            Text(
              '✔️',
              style: TextStyle(
                fontFamily: 'IBM Plex Sans',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 1.3, // lineHeight: 15.6 / 12
                color: Color(0xFF000000),
              ),
            ),
            SizedBox(width: 7), // Add a small gap between the checkmark and text
            Text(
              'Total Products created - 1',
              style: TextStyle(
                fontFamily: 'IBM Plex Sans',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 1.3, // lineHeight: 15.6 / 12
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
              ),
          SizedBox(height: 10), // Add gap between elements
              Container(
        width: 213.15,
        height: 16,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.transparent),
        ),
        child: Row(
          children: [
            Text(
              ' X ',
              style: TextStyle(
                fontFamily: 'IBM Plex Sans',
                fontSize: 15,
                fontWeight: FontWeight.w500,
                height: 1.3, // lineHeight: 15.6 / 12
                color: Color(0xFF000000),
              ),
            ),
            SizedBox(width: 7), // Add a small gap between the checkmark and text
            Text(
              'Customize the level of security',
              style: TextStyle(
                fontFamily: 'IBM Plex Sans',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 1.3, // lineHeight: 15.6 / 12
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
              ),
            ],
           ),
         
        ),
        SizedBox(height: 2,),
               Container(
          width: 340,
          height: 243,
          padding: EdgeInsets.fromLTRB(32, 22, 32, 22),
          margin: EdgeInsets.all(10), // Add margin as per your layout
          decoration: BoxDecoration(
           // color: Color(0xFFFFFFFF),
           color: Color(0xFF1D1F21),
            borderRadius: BorderRadius.circular(24),
            border: Border(
              top: BorderSide(color: Color(0xFF6D8DFF4A), width: 1.0),
              left: BorderSide(color: Color(0xFF6D8DFF4A), width: 1.0),
              right: BorderSide(color: Color(0xFF6D8DFF4A), width: 1.0),
              bottom: BorderSide(color: Color(0xFF6D8DFF4A), width: 1.0),
            ),
          ),
         child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
        width: 276,
        height: 17,
        margin: EdgeInsets.only(top: 0), // Adjust margin as needed
        decoration: BoxDecoration(
          // Apply your properties here
          color: Colors.transparent,
          border: Border.all(color: Colors.transparent), // Remove border
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Premium',
              style: TextStyle(
                fontFamily: 'Barlow',
                fontSize: 14,
                fontWeight: FontWeight.w500,
              //  lineHeight: 16.8,
               color: Color(0xFF6D8DFF),
              ),
            ),
            Text(
              'MONTHLY',
              style: TextStyle(
                fontFamily: 'Barlow',
                fontSize: 11,
                fontWeight: FontWeight.w500,
              //  lineHeight: 13.2,
                color: Color(0xFFA8A8A8),
              ),
            ),
          ],
        ),
              ),
               SizedBox(height: 10), // Add gap between elements
              Container(
        width: 76.66,
        height: 38,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.transparent),
        ),
        child: Text(
          '\$999',
          style: TextStyle(
            fontFamily: 'Barlow',
            fontSize: 32,
            fontWeight: FontWeight.w500,
            height: 1.2, // lineHeight: 38.4 / 32
            color:Color(0xFFFFFFFF),
          ),
        ),
              ),
        SizedBox(height: 10), // Add gap between elements
              Container(
        width: 270.49,
        height: 34,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.transparent),
        ),
        child: Text(
          'Best for testing all the basic features of the application.',
          style: TextStyle(
            fontFamily: 'Barlow',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 1.2, // lineHeight: 16.8 / 14
            color: Color(0xFFC6C6C6), 
          ),
        ),
              ),
        SizedBox(height: 10), // Add gap between elements
              Container(
        width: 210.98,
        height: 16,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.transparent),
        ),
        child: Row(
          children: [
            Text(
              '✔️',
              style: TextStyle(
                fontFamily: 'IBM Plex Sans',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 1.3, // lineHeight: 15.6 / 12
                color: Color(0xFFECF0F5),
              ),
            ),
            SizedBox(width: 7), // Add a small gap between the checkmark and text
            Text(
              '1000 API Requests per month',
              style: TextStyle(
                fontFamily: 'IBM Plex Sans',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 1.3, // lineHeight: 15.6 / 12
               color: Color(0xFFECF0F5),
              ),
            ),
          ],
        ),
              ),
        SizedBox(height: 10), // Add gap between elements
              Container(
        width: 185.02,
        height: 16,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.transparent),
        ),
        child: Row(
          children: [
            Text(
              '✔️',
              style: TextStyle(
                fontFamily: 'IBM Plex Sans',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 1.3, // lineHeight: 15.6 / 12
                color: Color(0xFFECF0F5),
              ),
            ),
            SizedBox(width: 7), // Add a small gap between the checkmark and text
            Text(
              'Total Products created - 5',
              style: TextStyle(
                fontFamily: 'IBM Plex Sans',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 1.3, // lineHeight: 15.6 / 12
                color: Color(0xFFECF0F5),
              ),
            ),
          ],
        ),
              ),
          SizedBox(height: 10), // Add gap between elements
              Container(
        width: 213.15,
        height: 16,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.transparent),
        ),
        child: Row(
          children: [
            Text(
              '✔️',
              style: TextStyle(
                fontFamily: 'IBM Plex Sans',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 1.3, // lineHeight: 15.6 / 12
               color: Color(0xFFECF0F5),
              ),
            ),
            SizedBox(width: 7), // Add a small gap between the checkmark and text
            Text(
              'Customize the level of security',
              style: TextStyle(
                fontFamily: 'IBM Plex Sans',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 1.3, // lineHeight: 15.6 / 12
               color: Color(0xFFECF0F5),
              ),
            ),
          ],
        ),
              ),
            ],
           ),
         
        ),
        SizedBox(height: 2,),
          Container(
          width: 340,
          height: 243,
          padding: EdgeInsets.fromLTRB(32, 22, 32, 22),
          margin: EdgeInsets.all(10), // Add margin as per your layout
          decoration: BoxDecoration(
           // color: Color(0xFFFFFFFF),
            color: Color(0xFFFFFFFF),
           
            borderRadius: BorderRadius.circular(24),
            border: Border(
              top: BorderSide(color: Color(0xFF6D8DFF4A), width: 1.0),
              left: BorderSide(color: Color(0xFF6D8DFF4A), width: 1.0),
              right: BorderSide(color: Color(0xFF6D8DFF4A), width: 1.0),
              bottom: BorderSide(color: Color(0xFF6D8DFF4A), width: 1.0),
            ),
          ),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
        width: 276,
        height: 17,
        margin: EdgeInsets.only(top: 0), // Adjust margin as needed
        decoration: BoxDecoration(
          // Apply your properties here
          color: Colors.transparent,
          border: Border.all(color: Colors.transparent), // Remove border
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Commercial',
              style: TextStyle(
                fontFamily: 'Barlow',
                fontSize: 14,
                fontWeight: FontWeight.w500,
              //  lineHeight: 16.8,
                color: Color(0xFF000000),
              ),
            ),
            Text(
              'MONTHLY',
              style: TextStyle(
                fontFamily: 'Barlow',
                fontSize: 11,
                fontWeight: FontWeight.w500,
              //  lineHeight: 13.2,
                color: Color(0xFFA8A8A8),
              ),
            ),
          ],
        ),
              ),
               SizedBox(height: 10), // Add gap between elements
              Container(
        width: 94,
        height: 38,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.transparent),
        ),
        child: Text(
          '\$3000',
          style: TextStyle(
            fontFamily: 'Barlow',
            fontSize: 32,
            fontWeight: FontWeight.w500,
            height: 1.2, // lineHeight: 38.4 / 32
            color: Color(0xFF000000),
          ),
        ),
              ),
        SizedBox(height: 10), // Add gap between elements
              Container(
        width: 270.49,
        height: 34,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.transparent),
        ),
        child: Text(
          'Best for testing all the basic features of the application.',
          style: TextStyle(
            fontFamily: 'Barlow',
            fontSize: 14,
            fontWeight: FontWeight.w500,
            height: 1.2, // lineHeight: 16.8 / 14
            color: Color(0xFF606060),
          ),
        ),
              ),
        SizedBox(height: 10), // Add gap between elements
              Container(
        width: 215.98,
        height: 16,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.transparent),
        ),
        child: Row(
          children: [
            Text(
              '✔️',
              style: TextStyle(
                fontFamily: 'IBM Plex Sans',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 1.3, // lineHeight: 15.6 / 12
                color: Color(0xFF000000),
              ),
            ),
            SizedBox(width: 7), // Add a small gap between the checkmark and text
            Text(
              'Unlimited API Requests per month',
              style: TextStyle(
                fontFamily: 'IBM Plex Sans',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 1.3, // lineHeight: 15.6 / 12
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
              ),
        SizedBox(height: 10), // Add gap between elements
              Container(
        width: 210.02,
        height: 16,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.transparent),
        ),
        child: Row(
          children: [
            Text(
              '✔️',
              style: TextStyle(
                fontFamily: 'IBM Plex Sans',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 1.3, // lineHeight: 15.6 / 12
                color: Color(0xFF000000),
              ),
            ),
            SizedBox(width: 7), // Add a small gap between the checkmark and text
            Text(
              'Total Products created unlimited',
              style: TextStyle(
                fontFamily: 'IBM Plex Sans',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 1.3, // lineHeight: 15.6 / 12
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
              ),
          SizedBox(height: 10), // Add gap between elements
              Container(
        width: 213.15,
        height: 16,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.transparent),
        ),
        child: Row(
          children: [
            Text(
             '✔️',
              style: TextStyle(
                fontFamily: 'IBM Plex Sans',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 1.3, // lineHeight: 15.6 / 12
                color: Color(0xFF000000),
              ),
            ),
            SizedBox(width: 7), // Add a small gap between the checkmark and text
            Text(
              'Customize the level of security',
              style: TextStyle(
                fontFamily: 'IBM Plex Sans',
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 1.3, // lineHeight: 15.6 / 12
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
              ),
            ],
           ),
        ),
        SizedBox(height: 2,),
        Padding(
          padding: EdgeInsets.fromLTRB(20, 11, 0, 20),
          child: ElevatedButton(
            onPressed: () {
         Navigator.of(context).push(
                        PageRouteBuilder(
                          pageBuilder: (context, animation, secondaryAnimation) => successful_payment(),
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
              // Add navigation logic here
              // Example: Navigator.pushNamed(context, '/successful_payment');
            },
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF3C63EB),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(17),
              ),
            ),
            child: SizedBox(
              width: 340,
              height: 40,
              child: Center(
        child: Text(
          'Proceed to Payment',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
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