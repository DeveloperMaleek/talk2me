import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/text_styles.dart' as text_center;
import 'package:talk2me/routes.dart' as route;
import 'package:talk2me/widgets/appBar.dart' as app_bar_btn;
import 'package:talk2me/widgets/range.dart';
import 'package:talk2me/widgets/therapy_lists.dart';

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
      appBar: app_bar_btn.AppBarNavWithBackButton(
        iconColor: AppColors.textColorLightBg,
      ),
      body: ListView(
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const ProgressIndicatorBar(
                  totalSteps: 4,
                  currentStep: 3,
                ),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.1,
                // ),

                SizedBox(
                  height: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16, left: 16),
                  child: text_center.HeadingFive(
                      text: "Select your therapist",
                      textColor: AppColors.textColorLightBg),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 16),
                      text_center.HeadingSix(
                          text: "Previous therapist",
                          textColor: AppColors.textColorLightBg),
                      SizedBox(height: 16),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: AppColors.greenBackground,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            TherapistListContainer(
                                therapistImage: 'assets/images/dp.png',
                                therapistName: "Dr. Asamoah Jessie",
                                status: 'Away',
                                statusColor: AppColors.warningColor,
                                starRating: Icons.star,
                                starRatingColor: AppColors.successColor,
                                ratingNumber: "4.5",
                                ratingColor: AppColors.successColor),
                            SizedBox(height: 8),
                            TherapistListContainer(
                                therapistImage: 'assets/images/dp.png',
                                therapistName: "Dr. Asamoah Jessie",
                                status: 'Away',
                                statusColor: AppColors.warningColor,
                                starRating: Icons.star,
                                starRatingColor: AppColors.warningColor,
                                ratingNumber: "3.0",
                                ratingColor: AppColors.warningColor),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 16),
                      text_center.HeadingSix(
                          text: "Suggested therapists",
                          textColor: AppColors.textColorLightBg),
                      SizedBox(height: 16),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: AppColors.greenBackground,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            GestureDetector(
                              onTap: (() {
                                Navigator.pushNamed(
                                    context, route.sessionTherapistPreview);
                              }),
                              child: TherapistListContainer(
                                  therapistImage: 'assets/images/dp.png',
                                  therapistName: "Dr. Asamoah Jessie",
                                  status: 'Available',
                                  statusColor: AppColors.successColor,
                                  starRating: Icons.star,
                                  starRatingColor: AppColors.successColor,
                                  ratingNumber: "4.5",
                                  ratingColor: AppColors.successColor),
                            ),
                            SizedBox(height: 8),
                            TherapistListContainer(
                                therapistImage: 'assets/images/dp.png',
                                therapistName: "Dr. Asamoah Jessie",
                                status: 'Away',
                                statusColor: AppColors.warningColor,
                                starRating: Icons.star,
                                starRatingColor: AppColors.errorColor,
                                ratingNumber: "1.0",
                                ratingColor: AppColors.errorColor),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 16),
                      text_center.HeadingSix(
                          text: "Also recommended for you",
                          textColor: AppColors.textColorLightBg),
                      SizedBox(height: 16),
                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                            color: AppColors.greenBackground,
                            borderRadius: BorderRadius.circular(15)),
                        child: Column(
                          children: [
                            TherapistListContainer(
                                therapistImage: 'assets/images/dp.png',
                                therapistName: "Dr. Asamoah Jessie",
                                status: 'Available',
                                statusColor: AppColors.successColor,
                                starRating: Icons.star,
                                starRatingColor: AppColors.successColor,
                                ratingNumber: "4.5",
                                ratingColor: AppColors.successColor),
                            SizedBox(height: 8),
                            TherapistListContainer(
                                therapistImage: 'assets/images/dp.png',
                                therapistName: "Dr. Asamoah Jessie",
                                status: 'Away',
                                statusColor: AppColors.warningColor,
                                starRating: Icons.star,
                                starRatingColor: AppColors.warningColor,
                                ratingNumber: "3.0",
                                ratingColor: AppColors.warningColor),
                            SizedBox(height: 8),
                            TherapistListContainer(
                                therapistImage: 'assets/images/dp.png',
                                therapistName: "Dr. Asamoah Jessie",
                                status: 'Available',
                                statusColor: AppColors.successColor,
                                starRating: Icons.star,
                                starRatingColor: AppColors.successColor,
                                ratingNumber: "4.5",
                                ratingColor: AppColors.successColor),
                            SizedBox(height: 8),
                            TherapistListContainer(
                                therapistImage: 'assets/images/dp.png',
                                therapistName: "Dr. Asamoah Jessie",
                                status: 'Available',
                                statusColor: AppColors.successColor,
                                starRating: Icons.star,
                                starRatingColor: AppColors.successColor,
                                ratingNumber: "4.5",
                                ratingColor: AppColors.successColor),
                            SizedBox(height: 8),
                            TherapistListContainer(
                                therapistImage: 'assets/images/dp.png',
                                therapistName: "Dr. Asamoah Jessie",
                                status: 'Available',
                                statusColor: AppColors.successColor,
                                starRating: Icons.star,
                                starRatingColor: AppColors.successColor,
                                ratingNumber: "4.5",
                                ratingColor: AppColors.successColor),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
        ],
      ),
    );
  }
}
