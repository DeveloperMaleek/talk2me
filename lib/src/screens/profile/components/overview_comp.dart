import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

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
        Row(
          children: [
            IconButton(
              onPressed: () {},
              alignment: Alignment.centerLeft,
              color: AppColors.darkBackground,
              splashColor: AppColors.primaryColor,
              padding: const EdgeInsets.all(0),
              icon: const FaIcon(FontAwesomeIcons.facebookSquare),
              iconSize: 30,
            ),
            IconButton(
              color: AppColors.darkBackground,
              splashColor: AppColors.primaryColor,
              onPressed: () {},
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(0),
              icon: const FaIcon(FontAwesomeIcons.twitterSquare),
              iconSize: 30,
            ),
            IconButton(
              color: AppColors.darkBackground,
              splashColor: AppColors.primaryColor,
              onPressed: () {},
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(0),
              icon: const FaIcon(FontAwesomeIcons.linkedin),
              iconSize: 30,
            ),
          ],
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
                  containerBox("Counselling"),
                  containerBox("Teen Talk"),
                  containerBox("Psychotherapy"),
                  containerBox("Clinical Therapy")
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
                  containerBox("English"),
                  containerBox("French"),
                  containerBox("Ashanti"),
                  containerBox("Twi"),
                  containerBox("Swahili"),
                  containerBox("Yoruba"),
                  containerBox("Igbo"),
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
                text: "Interests",
                textColor: AppColors.textColorLightBg,
              ),
              spacing,
              Wrap(
                runSpacing: 10,
                spacing: 10,
                children: [
                  containerBox("Gender"),
                  containerBox("Mental Health"),
                  containerBox("Football"),
                  containerBox("Organization Psychology"),
                  containerBox("Human Evolution"),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  SizedBox spacing = const SizedBox(
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
