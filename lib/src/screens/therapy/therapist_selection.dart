import 'package:flutter/material.dart';
import 'package:talk2me/src/components/appBar.dart';
import 'package:talk2me/src/components/range.dart';
import 'package:talk2me/src/components/therapy_lists.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

List previousTherapist = [
  const TherapistListContainer(
      availabilityStatus: false,
      therapistImage: 'assets/images/dp.png',
      therapistName: "Dr. Asamoah Jessie",
      status: 'Away',
      statusColor: AppColors.warningColor,
      starRating: Icons.star,
      starRatingColor: AppColors.successColor,
      ratingNumber: "4.5",
      ratingColor: AppColors.successColor),
  const TherapistListContainer(
      availabilityStatus: true,
      therapistImage: 'assets/images/dp.png',
      therapistName: "Dr. Asamoah Jessie",
      status: 'Away',
      statusColor: AppColors.warningColor,
      starRating: Icons.star,
      starRatingColor: AppColors.successColor,
      ratingNumber: "4.5",
      ratingColor: AppColors.successColor),
];

class TherapistSelection extends StatefulWidget {
  const TherapistSelection({Key? key}) : super(key: key);

  @override
  State<TherapistSelection> createState() => _TherapistSelectionState();
}

class _TherapistSelectionState extends State<TherapistSelection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.lightBackground,
        appBar: AppBarNavWithBackButton(
          iconColor: AppColors.textColorLightBg,
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeadingFive(
                    text: "Select your therapist",
                    textColor: AppColors.textColorLightBg),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 24),
                    const SubtitleOne(
                        text: "Recommended for you",
                        textColor: AppColors.textColorLightBg),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 16),
                      height: 170,
                      child: ListView.builder(
                          itemCount: previousTherapist.length,
                          itemBuilder: ((context, index) {
                            return PreviousTherapist(index: index);
                          })),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}

class PreviousTherapist extends StatelessWidget {
  const PreviousTherapist({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: previousTherapist[index],
    );
  }
}
