import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/text_styles.dart' as text_content;
import 'package:talk2me/routes.dart';

class TherapistListContainer extends StatelessWidget {
  const TherapistListContainer(
      {Key? key,
      required this.therapistImage,
      required this.therapistName,
      required this.status,
      required this.statusColor,
      required this.starRating,
      required this.starRatingColor,
      required this.ratingNumber,
      required this.ratingColor,
      required this.availabilityStatus})
      : super(key: key);

  final String therapistImage;
  final String therapistName;
  final String status;
  final Color statusColor;
  final IconData starRating;
  final Color starRatingColor;
  final String ratingNumber;
  final Color ratingColor;
  final bool availabilityStatus;

  @override
  Widget build(BuildContext context) {
    bool availability = false;
    return ListTile(
        onTap: () {
          Navigator.pushNamed(context, sessionTherapistPreview);
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        tileColor: availability == availabilityStatus
            ? AppColors.greenBackground
            : AppColors.orangeBackground,
        style: ListTileStyle.list,
        leading: Image(image: AssetImage(therapistImage)),
        title: text_content.BodyTextOne(
            text: therapistName, textColor: AppColors.textColorLightBg),
        subtitle: text_content.CaptionText(
          text: status,
          textColor: statusColor,
        ),
        trailing: Wrap(
            crossAxisAlignment: WrapCrossAlignment.end,
            spacing: 4,
            children: [
              Icon(starRating, size: 16, color: ratingColor),
              text_content.BodyTextTwo(
                text: ratingNumber,
                textColor: ratingColor,
              ),
            ]));
  }
}
