import 'package:flutter/material.dart';

class SmallUIScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24.0),
      ),
      backgroundColor: Colors.transparent,
      child: Container(
        width: 334,
        height: 377,
        padding: EdgeInsets.fromLTRB(12, 23, 12, 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius:BorderRadius.circular(24),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              spreadRadius: 4,
              blurRadius: 15.6,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Add your small UI screen contents here
          Container(
            margin: EdgeInsets.only(left: 50),
            width: 177,
            height: 17,
           
            child: const Text(
              "Create new Project",
              style: TextStyle(
                fontFamily: 'Nunito',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                height: 1.0, // line-height equivalent
               // textAlign: TextAlign.left,
                color: Color(0xFF000000),
              ),
              textAlign: TextAlign.center,
            
            ),
          ),
           SizedBox(height: 13), // Adding some space between the two containers
            Container(
              width: 310,
              padding: EdgeInsets.fromLTRB(10, 17, 10, 17),
            
              decoration: BoxDecoration(
                color: Color(0xFFECF0F5),
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                  color: Color(0xFF8C99AA),
                  width: 1,
                  style: BorderStyle.solid,
                ),
              ),
              child: Center(
                child: Text(
                  "Pick Image From Gallery",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
               SizedBox(height: 13), 
              Container(
              width: 310,
              height: 69, // Fixed height
               padding: EdgeInsets.symmetric(horizontal: 10.0,), 
             //  margin: EdgeInsets.only(left: 2),

          //    padding: EdgeInsets.fromLTRB(40, 26, 40, 26),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                    color: Color(0xFF8C99AA),
                    width: 1,
                    style: BorderStyle.solid,
                )
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Project Name',
                   contentPadding: EdgeInsets.only(left: 43.0),
                  
                ),
                 style: TextStyle(
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.left,
              ),
            ),
            // Add more content/
              SizedBox(height: 13), // Space between the text and the new container
            Container(
              width: 310,
              height: 69, // Fixed height
               padding: EdgeInsets.symmetric(horizontal: 10.0,), 
             //  margin: EdgeInsets.only(left: 2),

          //    padding: EdgeInsets.fromLTRB(40, 26, 40, 26),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24),
                border: Border.all(
                    color: Color(0xFF8C99AA),
                    width: 1,
                    style: BorderStyle.solid,
                )
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Project Description',
                   contentPadding: EdgeInsets.only(left: 43.0),
                  
                ),
                 style: TextStyle(
                    fontSize: 16.0,
                  ),
                  textAlign: TextAlign.left,
              ),
            ),
            SizedBox(height: 13), // Space between the text field and the new container
            Container(
              width: 310,
              height: 62,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to Home
                        Navigator.popAndPushNamed(context, '/home');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF3C62EB),
                        padding: EdgeInsets.symmetric(vertical: 11),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(16),
                          ),
                        ),
                      ),
                      child: Text(
                        "Create",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigate to Home
                        Navigator.popAndPushNamed(context, '/home');
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFECF0F5),
                        padding: EdgeInsets.symmetric(vertical: 11),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(16),
                          ),
                        ),
                      ),
                      child: Text(
                        "Cancel",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Add more content/wi
            // Add more content/widgets here
          ],
        ),
      ),
    );
  }
}
