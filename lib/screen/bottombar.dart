import 'package:flutter/material.dart';
import 'package:user_app/screen/createnewproject.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  BottomNavBar({required this.selectedIndex, required this.onItemTapped});
   void _openAddProjectPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SmallUIScreen();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 26, top: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 257,
            height: 65,
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            margin: EdgeInsets.only(bottom: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.black,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => onItemTapped(0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.home,
                        size: 30,
                        color: selectedIndex == 0 ? Color(0xFF3C63EB) : Colors.grey,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => onItemTapped(1),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.insert_drive_file,
                        size: 30,
                        color: selectedIndex == 1 ? Color(0xFF3C63EB) : Colors.white,
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => onItemTapped(2),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.settings,
                        size: 30,
                        color: selectedIndex == 2 ? Color(0xFF3C63EB) : Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
           onTap: () => _openAddProjectPopup(context),
            child: Container(
              width: 78,
              height: 65,
              margin: EdgeInsets.only(bottom: 10, right: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(19),
                color: Colors.black,
              ),
              child: Center(
                child: Text(
                  '+',
                  style: TextStyle(
                    fontFamily: 'IBM Plex Sans',
                    fontSize: 32,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
