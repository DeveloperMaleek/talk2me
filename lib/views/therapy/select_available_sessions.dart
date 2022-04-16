import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/text_styles.dart' as text_content;
import 'package:talk2me/routes.dart' as route;
import 'package:talk2me/widgets/appBar.dart' as app_bar;
import 'package:talk2me/widgets/buttons.dart' as button;
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
        bottomSheet: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
          decoration:
              const BoxDecoration(color: AppColors.greenBackground, boxShadow: [
            BoxShadow(
              color: Color.fromARGB(30, 0, 0, 0),
              blurRadius: 10.0, // soften the shadow
              offset: Offset(
                0.0, // Move to right 10  horizontally
                -10.0, // Move to bottom 10 Vertically
              ),
            )
          ]),
          child: button.FilledButton(
            buttonText: "Confirm Booking",
            onPressed: () {
              Navigator.pushNamed(context, route.bookedSessionSuccessful);
            },
          ),
        ),
        appBar: app_bar.AppBarNavWithBackButton(
          iconColor: AppColors.textColorLightBg,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProgressIndicatorBar(
                totalSteps: 4,
                currentStep: 4,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.all(16),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    border: Border.all(color: AppColors.outlineColor),
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Available sessions section
                    text_content.HeadingSix(
                      text: "Available sessions",
                      textColor: AppColors.textColorLightBg,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    text_content.SubtitleTwo(
                      text: "Date you select here will be your session days",
                      textColor: AppColors.subtitleTextLightBg,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Wrap(
                      spacing: 16,
                      runSpacing: 16,
                      children: [
                        _availableDate("Wed", "9 Mar", "2 slot"),
                        _availableDate("Wed", "9 Mar", "2 slot"),
                        _availableDate("Wed", "9 Mar", "2 slot"),
                        _availableDate("Wed", "9 Mar", "2 slot"),
                        _availableDate("Wed", "9 Mar", "2 slot"),
                      ],
                    ),
                    Divider(
                        height: 40,
                        thickness: 2,
                        color: AppColors.outlineColor),

                    // Select interval section

                    text_content.HeadingSix(
                      text: "Select interval",
                      textColor: AppColors.textColorLightBg,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    text_content.SubtitleTwo(
                      text: "How do you want your sessions to come on?",
                      textColor: AppColors.subtitleTextLightBg,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Wrap(
                      spacing: 16,
                      runSpacing: 16,
                      children: [
                        _containerBox("Weekly", AppColors.subtitleTextDarkBg),
                        _containerBox("Bi-Weekly", AppColors.primaryColor),
                        _containerBox("Monthly", AppColors.subtitleTextDarkBg),
                      ],
                    ),
                    Divider(
                        height: 40,
                        thickness: 2,
                        color: AppColors.outlineColor),
                    text_content.HeadingSix(
                      text: "Available time slot",
                      textColor: AppColors.textColorLightBg,
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    text_content.SubtitleTwo(
                      text:
                          "What time do you want to always have your sessions?",
                      textColor: AppColors.subtitleTextLightBg,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Wrap(
                      spacing: 16,
                      runSpacing: 16,
                      children: [
                        _containerBox("07:00 PM", AppColors.subtitleTextDarkBg),
                        _containerBox("04:00 PM", AppColors.primaryColor),
                        _containerBox("11:15 PM", AppColors.subtitleTextDarkBg),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget _containerBox(String interval, Color outlineColor) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
              color: outlineColor, width: 1, style: BorderStyle.solid)),
      child: text_content.BodyTextOne(
        text: interval,
        textColor: AppColors.textColorLightBg,
      ),
    );
  }

  Widget _availableDate(String day, String date, String slot) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.subtitleTextLightBg,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          text_content.SubtitleTwo(
              text: day, textColor: AppColors.textColorLightBg),
          SizedBox(
            height: 10,
          ),
          text_content.SubtitleOne(
              text: date, textColor: AppColors.textColorLightBg),
          SizedBox(
            height: 10,
          ),
          text_content.CaptionText(
              text: slot, textColor: AppColors.subtitleTextLightBg)
        ],
      ),
    );
  }
}
