import 'package:flutter/material.dart';
import 'package:talk2me/src/screens/dashboard/client_dashboard.dart';
import 'package:talk2me/src/screens/navigation/bottom_navigation.dart';
import 'package:talk2me/src/screens/profile/client_profile.dart';
import 'package:talk2me/src/screens/safe_space/client_safe_space.dart';
import 'package:talk2me/src/screens/therapy/client_therapy.dart';
import 'package:talk2me/theme/colors.dart';

class ClientNavigation extends StatefulWidget {
  const ClientNavigation({Key? key}) : super(key: key);

  @override
  State<ClientNavigation> createState() => _ClientNavigationsState();
}

class _ClientNavigationsState extends State<ClientNavigation> {
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: AppColors.lightBackground,
        body: IndexedStack(index: _currentIndex, children: [
          ClientDashboard(),
          ClientTherapy(),
          ClientSafeSpace(),
          ClientProfile()
        ]),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingBottomAppBar(
          selectedIndex: _currentIndex,
          onTabChanged: (index) {
            setState(() {
              _currentIndex = index;
              // widget.pageController.jumpToPage(_selectedIndex);
            });
          },
          // pageController: _pageController,
        ));
    // bottomNavigationBar: FloatingBottomAppBar());
  }

  // Widget _body() {
  //   return PageView(
  //     controller: _pageController,
  //     physics: const NeverScrollableScrollPhysics(),
  //     scrollDirection: Axis.horizontal,
  //     children: const [
  //       ClientDashboard(),
  //       ClientTherapy(),
  //       ClientSafeSpace(),
  //       ClientProfile()
  //     ],
  //   );
  // }
}
