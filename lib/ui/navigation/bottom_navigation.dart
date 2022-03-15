import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/dimens.dart';
import 'package:talk2me/constants/font_family.dart';

class FloatingBottomAppBar extends StatefulWidget {
  const FloatingBottomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  _FloatingBottomAppBarState createState() => _FloatingBottomAppBarState();
}

class _FloatingBottomAppBarState extends State<FloatingBottomAppBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: Container(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_roundedAppBar()],
            )));
  }

  Widget _roundedAppBar() {
    return Container(
      width: 312,
      height: 64,
      decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(30, 0, 0, 0),
              blurRadius: 25.0, // soften the shadow
              offset: Offset(
                2.0, // Move to right 10  horizontally
                10.0, // Move to bottom 10 Vertically
              ),
            )
          ],
          borderRadius: BorderRadius.circular(15),
          color: AppColors.greenBackground),
      child: GNav(
        textStyle: TextStyle(
            fontFamily: FontFamily.josefinSans, fontSize: Dimens.textSizeBody2),
        tabBackgroundColor: AppColors.primaryColor,
        gap: 8,
        tabMargin: const EdgeInsets.fromLTRB(12, 0, 12, 0),
        activeColor: AppColors.textColorLightBg,
        iconSize: 24,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        duration: const Duration(milliseconds: 400),
        // tabBackgroundColor: Colors.grey[100]!,
        color: AppColors.subtitleTextLightBg,
        tabs: const [
          GButton(
            icon: Icons.dashboard,
            text: 'Home',
          ),
          GButton(
            icon: Icons.workspaces,
            text: 'Safe spaces',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          ),
          // GButton(
          //   icon: Icons.person,
          //   // iconColor: color.AppColor.primaryTextColor,
          //   text: 'PROFILE',
          // ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
