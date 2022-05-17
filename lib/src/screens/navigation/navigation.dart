import 'package:flutter/material.dart';
import 'package:talk2me/views/dashboard/client_dashboard.dart';
import 'package:talk2me/views/navigation/bottom_navigation.dart';
import 'package:talk2me/views/profile/client_profile.dart';
import 'package:talk2me/views/safe_space/client_safe_space.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/views/therapy/client_therapy.dart';

class ClientNavigation extends StatefulWidget {
  const ClientNavigation({Key? key}) : super(key: key);

  @override
  State<ClientNavigation> createState() => _ClientNavigationsState();
}

class _ClientNavigationsState extends State<ClientNavigation> {
  final PageController _pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBody: true,
        backgroundColor: AppColors.lightBackground,
        body: _body(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingBottomAppBar(
          pageController: _pageController,
        ));
    // bottomNavigationBar: FloatingBottomAppBar());
  }

  Widget _body() {
    return PageView(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      scrollDirection: Axis.horizontal,
      children: const [
        ClientDashboard(),
        ClientTherapy(),
        ClientSafeSpace(),
        ClientProfile()
      ],
    );
  }
}
