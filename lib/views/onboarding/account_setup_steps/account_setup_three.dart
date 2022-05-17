import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/strings.dart';
import 'package:talk2me/constants/text_styles.dart';
import 'package:talk2me/utils/device_utils.dart';
import 'package:talk2me/constants/dimens.dart';
import 'package:talk2me/constants/font_family.dart';


enum FeelingStates { down, justthere, normal, good, great }
String selectedFeeling = '';

class AccountSetupThree extends StatefulWidget {
  const AccountSetupThree({Key? key}) : super(key: key);

  @override
  State<AccountSetupThree> createState() => _AccountSetupThreeState();
}

class _AccountSetupThreeState extends State<AccountSetupThree> {
  @override
  Widget build(BuildContext context) {
    double gifSize = MediaQuery.of(context).size.width * 0.175;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                        text: "How are you feeling today?",
                        textColor: AppColors.textColorLightBg),
                    Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: SubtitleTwo(
                            text: "Select the best that applies to you",
                            textColor: AppColors.subtitleTextLightBg)),
                  ],
                ),
              ),
            )
          ],
        ),
        Center(
          child: Container(
              width: double.maxFinite,
              height: 400,
              padding: const EdgeInsets.only(top: 36),
              child: Stack(children: [
                Positioned.fill(
                    top: 0,
                    child: Align(
                        alignment: Alignment.topCenter,
                        child: _feelingsContainer(
                            0,
                            gifSize,
                            "Normal",
                            "https://res.cloudinary.com/michelletakuro/image/upload/v1647271298/talk2me-assets/gif/normal.gif",
                            FeelingStates.normal))),
                Positioned(
                    bottom: 140,
                    left: 30,
                    child: _feelingsContainer(
                        1,
                        gifSize,
                        "Good",
                        "https://res.cloudinary.com/michelletakuro/image/upload/v1647271300/talk2me-assets/gif/good.gif",
                        FeelingStates.good)),
                Positioned(
                    bottom: 140,
                    right: 30,
                    child: _feelingsContainer(
                        2,
                        gifSize,
                        "Down",
                        "https://res.cloudinary.com/michelletakuro/image/upload/v1647271301/talk2me-assets/gif/sad-look.gif",
                        FeelingStates.down)),
                Positioned(
                    bottom: 0,
                    right: 70,
                    child: _feelingsContainer(
                        3,
                        gifSize,
                        "Just there",
                        "https://res.cloudinary.com/michelletakuro/image/upload/v1647271299/talk2me-assets/gif/just-there.gif",
                        FeelingStates.justthere)),
                Positioned(
                    bottom: 0,
                    left: 70,
                    child: _feelingsContainer(
                        4,
                        gifSize,
                        "Great",
                        "https://res.cloudinary.com/michelletakuro/image/upload/v1647271298/talk2me-assets/gif/great.gif",
                        FeelingStates.great)),
              ])),
        ),
      ],
    );
  }

  GestureDetector _feelingsContainer(int index, double gifSize,
      String feelingsText, String imageUrl, var value) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedFeeling = value.toString();
        });
      },
      child: Container(
        padding: EdgeInsets.all(4),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: selectedFeeling == value.toString()
              ? Border.all(color: AppColors.primaryColor, width: 3)
              : Border.all(color: Colors.transparent, width: 3),
        ),
        child: SizedBox(
          height: 100,
          child: Column(
            children: [
              Image.network(
                imageUrl,
                height: gifSize,
                width: gifSize,
              ),
              const SizedBox(
                height: 6,
              ),
              BodyTextTwo(
                text: feelingsText,
                textColor: AppColors.textColorLightBg,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
