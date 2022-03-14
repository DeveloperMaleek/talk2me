import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';

class GradientBg extends StatelessWidget {
<<<<<<< HEAD
 
=======
  const GradientBg({Key? key}) : super(key: key);
>>>>>>> 70237add6af623d0e7a22920a509c173ce75fb2d

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
