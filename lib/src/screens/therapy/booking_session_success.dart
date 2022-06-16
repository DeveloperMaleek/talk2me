import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import 'package:talk2me/routes.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';
import 'dart:core';
import 'package:get/get.dart';

import 'package:talk2me/src/components/buttons.dart' as button;

class SessionSuccessPage extends StatelessWidget {
  const SessionSuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      body: Container(
          margin: EdgeInsets.all(16),
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/success.png",
                height: 200,
                width: 300,
              ),
              SizedBox(
                height: 24,
              ),
              SubtitleOne(
                text:
                    "Congratulations! You have successfully booked therapy sessions with Dr. Asamoah Gyan. \n\n Your first session is on 09 Mar at 07:00 PM",
                textColor: AppColors.textColorLightBg,
                textAlignment: TextAlign.center,
              ),
              SizedBox(
                height: 48,
              ),
              button.OutlineButton(
                  buttonText: "view upcoming sessions 👌🏽",
                  buttonTextColor: AppColors.textColorLightBg,
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, clientNavigation, (route) => false);

                    // Provider.of<booloi>(context, listen: false).toggle();
                    // Navigator.pushNamedAndRemoveUntil(
                    //     context, clientTherapy, (route) => false);
                  },
                  outlineColor: AppColors.textColorLightBg)
            ],
          )),
    );
  }
}
