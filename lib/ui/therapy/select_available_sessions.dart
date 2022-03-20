import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/widgets/appBar.dart';
import 'package:talk2me/widgets/range.dart';

class SelectAvailableSessions extends StatefulWidget {
  const SelectAvailableSessions({Key? key}) : super(key: key);

  @override
  State<SelectAvailableSessions> createState() =>
      _SelectAvailableSessionsState();
}

class _SelectAvailableSessionsState extends State<SelectAvailableSessions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.lightBackground,
        appBar: AppBarNav(
          iconColor: AppColors.textColorLightBg,
          onPressed: () {},
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProgressIndicatorBar(
                totalSteps: 4,
                currentStep: 4,
              )
            ],
          ),
        ));
  }
}
