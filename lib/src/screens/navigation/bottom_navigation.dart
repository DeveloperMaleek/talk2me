import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:talk2me/theme/colors.dart';

class FloatingBottomAppBar extends StatefulWidget {
  const FloatingBottomAppBar({Key? key, required this.pageController})
      : super(key: key);

  final PageController pageController;
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
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_roundedAppBar()],
            )));
  }

  Widget _roundedAppBar() {
    return Container(
      width: MediaQuery.of(context).size.width - 48,
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
        textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
        tabBackgroundColor: AppColors.primaryColor,
        gap: 4,
        tabMargin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        activeColor: AppColors.textColorLightBg,
        iconSize: 20,
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
            icon: Icons.spa,
            text: 'Therapy',
          ),
          GButton(
            icon: Icons.workspaces,
            text: 'Safe spaces',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          ),
        ],
        selectedIndex: _selectedIndex,
        onTabChange: (index) {
          setState(() {
            _selectedIndex = index;
            widget.pageController.jumpToPage(_selectedIndex);
          });
        },
      ),
    );
  }
}
