import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/gradient.dart';
import 'package:talk2me/constants/strings.dart';
import 'package:talk2me/utils/device_utils.dart';
import 'package:talk2me/constants/dimens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = DeviceUtils.getScaledWidth(context, 1);
    final screenHeight = DeviceUtils.getScaledHeight(context, 1);

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          GradientBg(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text(
                Strings.appName,
                style: TextStyle(
                    color: AppColors.textColorLightBg,
                    fontSize: Dimens.textSizeHeading1),
              ),
              Text(
                'This is a safe space',
                style: TextStyle(
                    color: AppColors.subtitleTextDarkBg,
                    fontSize: Dimens.textSizeSubtitle1),
              )
            ],
          ),
        ],
      ),
    );
  }
}
