import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/text_styles.dart';
import 'package:talk2me/constants/strings.dart';
import 'package:talk2me/routes.dart';
import 'package:talk2me/ui/navigation/navigation.dart';
import 'dart:core';

import 'package:talk2me/widgets/buttons.dart' as button;

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
              Image.network(
                  "https://res.cloudinary.com/michelletakuro/image/upload/v1647271299/talk2me-assets/gif/success-message.gif"),
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
                  buttonText: "view upcoming sessions",
                  buttonTextColor: AppColors.textColorLightBg,
                  onPressed: () {
                    Provider.of<booloi>(context, listen: false).toggle();
                    Navigator.pushNamed(context, clientTherapy);
                  },
                  outlineColor: Colors.transparent)
            ],
          )),
    );
  }
}
