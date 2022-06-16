import 'package:flutter/material.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

class AccountSetupOne extends StatefulWidget {
  const AccountSetupOne({Key? key}) : super(key: key);

  @override
  State<AccountSetupOne> createState() => _AccountSetupOneState();
}

class _AccountSetupOneState extends State<AccountSetupOne> {
  List feelingsItem = [
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
    false
  ];

  // Border borderFeeling = Border.all(
  // color: AppColors.primaryColor, width: 2, style: BorderStyle.none);

  void _selectItem(int position) {
    setState(() {
      feelingsItem[position] = !feelingsItem[position];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Column(
                children: const [
                  HeadingSix(
                      text: "How have you been feeling lately?",
                      textColor: AppColors.textColorLightBg),
                  Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: SubtitleTwo(
                          text: "Select as many as appropriate",
                          textColor: AppColors.subtitleTextLightBg)),
                ],
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 36),
          child: Wrap(
            spacing: 16,
            runSpacing: 16,
            children: [
              _feelingsResponse(
                context,
                "Hopeful",
                "assets/images/profile-background-1.png",
                () {
                  _selectItem(0);
                },
                0,
              ),
              _feelingsResponse(
                context,
                "Excited",
                "assets/images/profile-background-2.png",
                () {
                  _selectItem(1);
                },
                1,
              ),
              _feelingsResponse(
                context,
                "Sad",
                "assets/images/profile-background-3.png",
                () {
                  _selectItem(2);
                },
                2,
              ),
              _feelingsResponse(
                context,
                "Anxious",
                "assets/images/profile-background-4.png",
                () {
                  _selectItem(3);
                },
                3,
              ),
              _feelingsResponse(
                context,
                "Frustrated",
                "assets/images/profile-background-5.png",
                () {
                  _selectItem(4);
                },
                4,
              ),
              _feelingsResponse(
                context,
                "Withdrawn",
                "assets/images/profile-background-5.png",
                () {
                  _selectItem(5);
                },
                5,
              ),
              _feelingsResponse(
                context,
                "Stressed",
                "assets/images/profile-background-5.png",
                () {
                  _selectItem(6);
                },
                6,
              ),
              _feelingsResponse(
                context,
                "Scared",
                "assets/images/profile-background-8.png",
                () {
                  _selectItem(7);
                },
                7,
              ),
              _feelingsResponse(
                context,
                "Lonely",
                "assets/images/profile-background-9.png",
                () {
                  _selectItem(8);
                },
                8,
              ),
              _feelingsResponse(
                context,
                "Happy",
                "assets/images/profile-background-10.png",
                () {
                  _selectItem(9);
                },
                9,
              ),
              _feelingsResponse(
                context,
                "Indifferent",
                "assets/images/profile-background-11.png",
                () {
                  _selectItem(10);
                },
                10,
              ),
              _feelingsResponse(
                context,
                "Angry",
                "assets/images/profile-background-5.png",
                () {
                  _selectItem(11);
                },
                11,
              ),
            ],
          ),
        )
      ],
    )

        //12 feeling response goes here

        ;
  }

  Widget _feelingsResponse(BuildContext context, String responseText,
      String responseBg, Function onPress, int index) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.36,
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        decoration: BoxDecoration(
          color: feelingsItem[index]
              ? AppColors.greenBackground
              : AppColors.outlineColor,
          border: feelingsItem[index]
              ? Border.all(
                  width: 2,
                  color: AppColors.primaryColor,
                )
              : Border.all(width: 2, color: AppColors.outlineColor),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Image.asset(
              responseBg,
              width: MediaQuery.of(context).size.width * 0.24,
              height: MediaQuery.of(context).size.height * 0.078,
            ),
            SubtitleOne(
              text: responseText,
              textColor: AppColors.textColorLightBg,
            ),
          ],
        ),
      ),
    );
  }
}
