import 'package:flutter/material.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

List expertise = [
  "Clinical therapy",
  "Counselling",
  "Teen Talk",
  "Psychotherapy"
];

List language = ["English", "Twi", "French", "Ashanti", "Igbo", "Yoruba"];

class OverviewComp extends StatelessWidget {
  OverviewComp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BodyTextOne(
          text:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed morbi habitant imperdiet volutpat nunc eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed morbi habitant imperdiet volutpat nunc eget.",
          textColor: AppColors.textColorLightBg,
        ),
        spacing,
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SubtitleOne(
                text: "Expertise",
                textColor: AppColors.textColorLightBg,
              ),
              spacing,
              Wrap(
                runSpacing: 10,
                spacing: 10,
                children: [
                  for (int i = 0; i < expertise.length; i++)
                    containerBox(expertise[i])
                ],
              )
            ],
          ),
        ),
        spacing,
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SubtitleOne(
                text: "Fluent in",
                textColor: AppColors.textColorLightBg,
              ),
              spacing,
              Wrap(
                runSpacing: 10,
                spacing: 10,
                children: [
                  for (int i = 0; i < language.length; i++)
                    containerBox(language[i]),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }

  final SizedBox spacing = const SizedBox(
    height: 16,
  );

  Widget containerBox(String skillName) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
              color: AppColors.primaryColor,
              width: 1,
              style: BorderStyle.solid)),
      child: BodyTextTwo(
        text: skillName,
        textColor: AppColors.textColorLightBg,
      ),
    );
  }
}
