import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/strings.dart';
import 'package:talk2me/constants/text_styles.dart';
import 'package:talk2me/utils/device_utils.dart';
import 'package:talk2me/constants/dimens.dart';
import 'package:talk2me/constants/font_family.dart';

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
    return Container(
        child: Column(
      children: [
        Column(
          children: [
            const HeadingSix(
              text: "Good evening, Malik",
              textColor: AppColors.textColorLightBg,
            ),
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
          child: Column(
            children: [
              Row(
                children: [
                  _feelingsResponse(
                    context,
                    "Hopeful",
                    "https://res.cloudinary.com/michelletakuro/image/upload/v1647271304/talk2me-assets/img/profile-background-1.jpg",
                    () {
                      _selectItem(0);
                    },
                    0,
                  ),
                  _rowSpacing(),
                  _feelingsResponse(
                    context,
                    "Excited",
                    "https://res.cloudinary.com/michelletakuro/image/upload/v1647271293/talk2me-assets/img/profile-background-2.jpg",
                    () {
                      _selectItem(1);
                    },
                    1,
                  ),
                ],
              ),
              _columnSpacing(),
              Row(
                children: [
                  _feelingsResponse(
                    context,
                    "Sad",
                    "https://res.cloudinary.com/michelletakuro/image/upload/v1647271292/talk2me-assets/img/profile-background-3.jpg",
                    () {
                      _selectItem(2);
                    },
                    2,
                  ),
                  _rowSpacing(),
                  _feelingsResponse(
                    context,
                    "Anxious",
                    "https://res.cloudinary.com/michelletakuro/image/upload/v1647271296/talk2me-assets/img/profile-background-4.jpg",
                    () {
                      _selectItem(3);
                    },
                    3,
                  ),
                ],
              ),
              _columnSpacing(),
              Row(
                children: [
                  _feelingsResponse(
                    context,
                    "Frustrated",
                    "https://res.cloudinary.com/michelletakuro/image/upload/v1647271292/talk2me-assets/img/profile-background-5.jpg",
                    () {
                      _selectItem(4);
                    },
                    4,
                  ),
                  _rowSpacing(),
                  _feelingsResponse(
                    context,
                    "Withdrawn",
                    "https://res.cloudinary.com/michelletakuro/image/upload/v1647271292/talk2me-assets/img/profile-background-6.jpg",
                    () {
                      _selectItem(5);
                    },
                    5,
                  ),
                ],
              ),
              _columnSpacing(),
              Row(
                children: [
                  _feelingsResponse(
                    context,
                    "Stressed",
                    "https://res.cloudinary.com/michelletakuro/image/upload/v1647271296/talk2me-assets/img/profile-background-7.jpg",
                    () {
                      _selectItem(6);
                    },
                    6,
                  ),
                  _rowSpacing(),
                  _feelingsResponse(
                    context,
                    "Scared",
                    "https://res.cloudinary.com/michelletakuro/image/upload/v1647271296/talk2me-assets/img/profile-background-8.jpg",
                    () {
                      _selectItem(7);
                    },
                    7,
                  ),
                ],
              ),
              _columnSpacing(),
              Row(
                children: [
                  _feelingsResponse(
                    context,
                    "Lonely",
                    "https://res.cloudinary.com/michelletakuro/image/upload/v1647271297/talk2me-assets/img/profile-background-9.jpg",
                    () {
                      _selectItem(8);
                    },
                    8,
                  ),
                  _rowSpacing(),
                  _feelingsResponse(
                    context,
                    "Happy",
                    "https://res.cloudinary.com/michelletakuro/image/upload/v1647271293/talk2me-assets/img/profile-background-10.jpg",
                    () {
                      _selectItem(9);
                    },
                    9,
                  ),
                ],
              ),
              _columnSpacing(),
              Row(
                children: [
                  _feelingsResponse(
                    context,
                    "Indifferent",
                    "https://res.cloudinary.com/michelletakuro/image/upload/v1647271306/talk2me-assets/img/profile-background-11.jpg",
                    () {
                      _selectItem(10);
                    },
                    10,
                  ),
                  _rowSpacing(),
                  _feelingsResponse(
                    context,
                    "Angry",
                    "https://res.cloudinary.com/michelletakuro/image/upload/v1647271307/talk2me-assets/img/profile-background-12.jpg",
                    () {
                      _selectItem(11);
                    },
                    11,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    )

        //12 feeling response goes here

        );
  }

  Widget _columnSpacing() {
    return const SizedBox(height: 16);
  }

  Widget _rowSpacing() {
    return const SizedBox(width: 16);
  }

  Widget _feelingsResponse(BuildContext context, String responseText,
      String responseBg, Function onPress, int index) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        decoration: BoxDecoration(
          border: feelingsItem[index]
              ? Border.all(
                  width: 2,
                  color: AppColors.primaryColor,
                )
              : Border.all(width: 2, color: Colors.transparent),
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
              fit: BoxFit.fill, image: NetworkImage(responseBg)),
        ),
        child: Opacity(
            opacity: 0.7,
            child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(15)),
                width: (MediaQuery.of(context).size.width - 56) / 2,
                height: 100,
                child: SubtitleOne(
                  text: responseText,
                  textColor: AppColors.textColorDarkBg,
                ))),
      ),
    );
  }
}
