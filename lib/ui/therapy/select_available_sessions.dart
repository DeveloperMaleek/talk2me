import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/text_styles.dart' as text_content;
import 'package:talk2me/widgets/appBar.dart' as app_bar;
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
        appBar: app_bar.AppBarNavWithBackButton(
          iconColor: AppColors.textColorLightBg,
          onPressed: () {},
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ProgressIndicatorBar(
                totalSteps: 4,
                currentStep: 4,
              ),
              Container(
                child: Column(
                  children: [Wrap()],
                ),
              )
            ],
          ),
        ));
  }

  Widget _availableDate(String day, String date, String slot) {
    return Container(
      child: Column(
        children: [
          text_content.SubtitleTwo(
              text: date, textColor: AppColors.textColorLightBg),
          Spacer(),
          text_content.SubtitleOne(
              text: date, textColor: AppColors.textColorLightBg),
          text_content.CaptionText(
              text: date, textColor: AppColors.subtitleTextLightBg)
        ],
      ),
    );
  }
}
