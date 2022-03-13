import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';

class gradientBg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
          child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
            AppColors.gradientFirstColor,
            AppColors.gradientSecondColor
          ])))),
    ));
  }
}
