import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:talk2me/theme/colors.dart';

class FloatingBottomAppBar extends StatefulWidget {
  const FloatingBottomAppBar({
    Key? key,
    required this.selectedIndex,
    required this.onTabChanged,
    // required this.pageController
  }) : super(key: key);

//   final PageController pageController;
//   @override
//   _FloatingBottomAppBarState createState() => _FloatingBottomAppBarState();
// }

// class _FloatingBottomAppBarState extends State<FloatingBottomAppBar> {
  final int selectedIndex;
  final Function onTabChanged;

  @override
  State<FloatingBottomAppBar> createState() => _FloatingBottomAppBarState();
}

class _FloatingBottomAppBarState extends State<FloatingBottomAppBar> {
  bool isTherapist = false;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [_roundedAppBar(context)],
            )));
  }

  Widget _roundedAppBar(context) {
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
          textStyle: GoogleFonts.josefinSans(
              fontSize: MediaQuery.of(context).size.width * 0.032,
              fontWeight: FontWeight.w600),
          tabBackgroundColor: AppColors.primaryColor,
          gap: 4,
          tabMargin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * 0.0095),
          activeColor: AppColors.textColorLightBg,
          iconSize: MediaQuery.of(context).size.width * 0.046,
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
          duration: const Duration(milliseconds: 400),
          // tabBackgroundColor: Colors.grey[100]!,
          color: AppColors.subtitleTextLightBg,
          tabs: [
            GButton(
              icon: Icons.dashboard,
              text: 'Home',
            ),
            GButton(
              icon: Icons.spa,
              text: isTherapist == false ? 'Therapy' : 'Sessions',
            ),
            GButton(
              icon: isTherapist == false ? Icons.workspaces : Icons.widgets,
              text: isTherapist == false ? 'Safe spaces' : 'Summary',
            ),
            GButton(
              icon: Icons.person,
              text: 'Profile',
            ),
          ],
          selectedIndex: widget.selectedIndex,
          onTabChange: (index) {
            widget.onTabChanged(index);
          }),
    );
  }
}
