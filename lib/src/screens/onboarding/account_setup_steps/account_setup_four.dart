import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

List responseState = [
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
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 36),
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
      Align(
        alignment: Alignment.center,
        child: Wrap(
          spacing: 16,
          runSpacing: 16,
          runAlignment: WrapAlignment.center,
          alignment: WrapAlignment.spaceBetween,
          children: [
            responseContainer(
                "Sleeping Better", "assets/images/sleep_analysis.svg", 0),
            responseContainer("Managing Anger", "assets/images/anger.svg", 1),
            responseContainer("Living Happier", "assets/images/happier.svg", 2),
            responseContainer("Tackling Stress", "assets/images/stress.svg", 3),
          ],
        ),
      )
    ]);
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
        width: 150,
        height: 150,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: responseState[index] ? AppColors.greenBackground : null,
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
