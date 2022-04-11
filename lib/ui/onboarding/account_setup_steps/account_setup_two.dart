import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/text_styles.dart';

List responseTextState = [
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
  false,
];

class AccountSetupTwo extends StatefulWidget {
  const AccountSetupTwo({Key? key}) : super(key: key);

  @override
  State<AccountSetupTwo> createState() => _AccountSetupTwoState();
}

class _AccountSetupTwoState extends State<AccountSetupTwo> {
  void selectItem(int position) {
    setState(() {
      responseTextState[position] = !responseTextState[position];
    });
  }

  @override
  Widget build(BuildContext context) {
    return (Container(
        child: Column(
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
                        text:
                            "What do you consider always influence\nyour “okay” days?",
                        textColor: AppColors.textColorLightBg),
                    Padding(
                        padding: EdgeInsets.only(top: 8),
                        child: SubtitleTwo(
                            text: "Select as many as appropriate",
                            textColor: AppColors.subtitleTextLightBg)),
                  ],
                ),
              ),
            )
          ],
        ),
        Padding(
            padding: const EdgeInsets.only(top: 36),
            child: Column(children: [
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  responseContainer(0, "Work"),
                  responseContainer(1, "Family Time"),
                  responseContainer(2, "Partner"),
                  responseContainer(3, "Outing"),
                  responseContainer(4, "Less Nagging Boss"),
                  responseContainer(5, "Being Productive"),
                  responseContainer(6, "Reading"),
                  responseContainer(7, "Not Overthinking"),
                  responseContainer(8, "Cooking"),
                  responseContainer(9, "Sex"),
                  responseContainer(10, "Work"),
                  responseContainer(11, "Family Time"),
                  responseContainer(12, "Partner"),
                  responseContainer(13, "Outing"),
                  responseContainer(14, "Cooking"),
                  responseContainer(15, "Less Nagging Boss"),
                  responseContainer(16, "Being Productive"),
                  responseContainer(17, "Reading"),
                  responseContainer(18, "Not Overthinking"),
                  responseContainer(19, "Sex"),
                ],
              )
            ]))
      ],
    )));
  }

  GestureDetector responseContainer(int index, String responseText) {
    return GestureDetector(
      onTap: () {
        selectItem(index);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: responseTextState[index] ? AppColors.primaryColor25 : null,
            border: responseTextState[index]
                ? Border.all(color: AppColors.primaryColor, width: 1)
                : Border.all(color: AppColors.subtitleTextLightBg, width: 1),
            borderRadius: BorderRadius.circular(15)),
        child: BodyTextTwo(
            text: responseText, textColor: AppColors.textColorLightBg),
      ),
    );
  }
}
