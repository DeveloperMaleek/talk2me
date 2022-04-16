import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/text_styles.dart';
import 'package:talk2me/routes.dart' as route;
import 'package:talk2me/widgets/appBar.dart' as app_bar_btn;
import 'package:talk2me/widgets/range.dart';
import 'package:talk2me/widgets/therapy_lists.dart';

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
        appBar: app_bar_btn.AppBarNavWithBackButton(
          iconColor: AppColors.textColorLightBg,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProgressIndicatorBar(
                totalSteps: 5,
                currentStep: 3,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: HeadingFive(
                    text: "Select your therapist",
                    textColor: AppColors.textColorLightBg),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SubtitleOne(
                      text: "Previous therapist",
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SubtitleOne(
                      text: "Suggested by your friends",
                      textColor: AppColors.textColorLightBg),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16),
                    height: 500,
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
        )

        // SingleChildScrollView(
        //   child: Column(

        //       children: [
        //         const ProgressIndicatorBar(
        //           totalSteps: 5,
        //           currentStep: 3,
        //         ),
        //         SizedBox(
        //           height: 16,
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.only(right: 16, left: 16),

        //         ),
        //         Padding(
        //           padding: const EdgeInsets.all(16.0),
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               SizedBox(height: 16),
        //               text_center.HeadingSix(
        //                   text: "Previous therapist",
        //                   textColor: AppColors.textColorLightBg),
        //               SizedBox(height: 16),
        //               ListView.builder(
        //                   itemCount: previousTherapist.length,
        //                   itemBuilder: ((context, index) {
        //                     return PreviousTherapist(
        //                       index: index,
        //                     );
        //                   })),
        //               TherapistListContainer(
        //                   availabilityStatus: false,
        //                   therapistImage: 'assets/images/dp.png',
        //                   therapistName: "Dr. Asamoah Jessie",
        //                   status: 'Away',
        //                   statusColor: AppColors.warningColor,
        //                   starRating: Icons.star,
        //                   starRatingColor: AppColors.successColor,
        //                   ratingNumber: "4.5",
        //                   ratingColor: AppColors.successColor),
        //             ],
        //           ),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.all(16.0),
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               SizedBox(height: 16),
        //               text_center.HeadingSix(
        //                   text: "Suggested therapists",
        //                   textColor: AppColors.textColorLightBg),
        //               SizedBox(height: 16),
        //               Container(
        //                 padding: EdgeInsets.all(12),
        //                 decoration: BoxDecoration(
        //                     color: AppColors.greenBackground,
        //                     borderRadius: BorderRadius.circular(15)),
        //                 child: Column(
        //                   children: [

        //                   ],
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //         Padding(
        //           padding: const EdgeInsets.all(16.0),
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               SizedBox(height: 16),
        //               text_center.HeadingSix(
        //                   text: "Also recommended for you",
        //                   textColor: AppColors.textColorLightBg),
        //               SizedBox(height: 16),
        //               Container(
        //                 padding: EdgeInsets.all(12),
        //                 decoration: BoxDecoration(
        //                     color: AppColors.greenBackground,
        //                     borderRadius: BorderRadius.circular(15)),
        //                 child: Column(
        //                   children: [],
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ]),
        // ),
        );
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
