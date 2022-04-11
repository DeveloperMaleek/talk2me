import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/strings.dart';
import 'package:talk2me/constants/text_styles.dart';
import 'package:talk2me/utils/device_utils.dart';
import 'package:talk2me/constants/dimens.dart';
import 'package:talk2me/constants/font_family.dart';

List responseState = [
  false,
  false,
  false,
  false,
  false,
  false,
];

class AccountSetupFour extends StatefulWidget {
  const AccountSetupFour({Key? key}) : super(key: key);

  @override
  State<AccountSetupFour> createState() => _AccountSetupFourState();
}

class _AccountSetupFourState extends State<AccountSetupFour> {
  int maxSelectedItems = 3;

  void selectItem(int position) {
    setState(() {
      responseState[position] = !responseState[position];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Column(
        children: [
          const HeadingSix(
            text: "Good evening, Malik",
            textColor: AppColors.textColorLightBg,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                children: const [
                  HeadingSix(
                      textAlignment: TextAlign.center,
                      text:
                          "What do you aim to achieve with \nusing “Talk2me”?",
                      textColor: AppColors.textColorLightBg),
                  Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: SubtitleTwo(
                          text: "Select three that apply to you",
                          textColor: AppColors.subtitleTextLightBg)),
                ],
              ),
            ),
          )
        ],
      ),
      Padding(
        padding: EdgeInsets.only(top: 36),
        child: Column(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BodyTextOne(
                      text: "Personal", textColor: AppColors.textColorLightBg),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        responseContainer("Sleeping Better",
                            "assets/images/sleep_analysis.svg", 0),
                        SizedBox(
                          width: 10,
                        ),
                        responseContainer(
                            "Managing Anger", "assets/images/anger.svg", 1),
                        SizedBox(
                          width: 10,
                        ),
                        responseContainer(
                            "Living Happier", "assets/images/happier.svg", 2),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BodyTextOne(
                      text: "Work", textColor: AppColors.textColorLightBg),
                  SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        responseContainer(
                            "Tackling Stress", "assets/images/stress.svg", 3),
                        SizedBox(
                          width: 10,
                        ),
                        responseContainer(
                            "Communication", "assets/images/stress.svg", 4),
                        SizedBox(
                          width: 10,
                        ),
                        responseContainer(
                            "Make Friends", "assets/images/stress.svg", 5),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      )
    ]));
  }

  GestureDetector responseContainer(
      String responseText, String imageUrl, int index) {
    return GestureDetector(
      onTap: 2 == 3
          ? () {
              setState(() {
                // --index;
              });
            }
          : () {
              selectItem(index);
            },
      onTapCancel: () {},
      child: Container(
        width: 140,
        height: 160,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: responseState[index] ? AppColors.primaryColor25 : null,
            borderRadius: BorderRadius.circular(15),
            border: responseState[index]
                ? Border.all(color: AppColors.primaryColor, width: 2)
                : Border.all(color: Colors.transparent, width: 2)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(imageUrl, width: 100, height: 100),
            SizedBox(
              height: 8,
            ),
            BodyTextTwo(
                text: responseText, textColor: AppColors.textColorLightBg)
          ],
        ),
      ),
    );
  }
}
