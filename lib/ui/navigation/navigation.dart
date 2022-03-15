import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:talk2me/ui/dashboard/client_dashboard.dart';
import 'package:talk2me/ui/navigation/bottom_navigation.dart';
import 'package:talk2me/ui/profile/client_profile.dart';
import 'package:talk2me/ui/safe_space/client_safe_space.dart';
import 'package:talk2me/constants/colors.dart';

class ClientNavigation extends StatefulWidget {
  const ClientNavigation({Key? key}) : super(key: key);

  @override
  State<ClientNavigation> createState() => Client_NavigationsState();
}

class Client_NavigationsState extends State<ClientNavigation> {
  // int _selectedIndex = 0;
  // static const List<Widget> _clientPages = <Widget>[
  //   ClientDashboard(),
  //   ClientSafeSpace(),
  //   ClientProfile(),
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.lightBackground,
        body: Center(
          child: Text("Malik Kolade"),
        ),
        // _clientPages.elementAt(_selectedIndex)
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingBottomAppBar());
    // bottomNavigationBar: FloatingBottomAppBar());
  }
}
