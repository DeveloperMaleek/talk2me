import 'package:flutter/material.dart';
import 'package:talk2me/src/static/gradient.dart';
import 'package:talk2me/src/utils/device_utils.dart';
import 'package:talk2me/theme/colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

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
              Image.asset(
                "assets/images/Logo.png",
                // height: MediaQuery.of(context).size.height * 0.6,
                // width: double.infinity,
                //fit: BoxFit.cover,
              ),
              Text(
                'This is a safe space',
                style: TextStyle(
                  color: AppColors.subtitleTextLightBg,
                  // fontSize: Dimens.textSizeSubtitle1,
                  // fontFamily: FontFamily.josefinSans
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
