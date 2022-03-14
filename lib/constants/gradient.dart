import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';

class GradientBg extends StatelessWidget {
  const GradientBg({Key? key}) : super(key: key);

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
