import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/text_styles.dart' as text_content;

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
      required this.ratingColor})
      : super(key: key);

  final String therapistImage;
  final String therapistName;
  final String status;
  final Color statusColor;
  final IconData starRating;
  final Color starRatingColor;
  final String ratingNumber;
  final Color ratingColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: AppColors.lightBackground,
      padding: EdgeInsets.all(8),
      child: Row(
        children: [
          Image(image: AssetImage(therapistImage)),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                text_content.BodyTextOne(
                    text: therapistName, textColor: AppColors.textColorLightBg),
                SizedBox(height: 4),
                text_content.CaptionText(
                  text: status,
                  textColor: statusColor,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Icon(starRating, size: 16, color: ratingColor),
              SizedBox(height: 5),
              text_content.BodyTextTwo(
                text: ratingNumber,
                textColor: ratingColor,
              )
            ],
          )
        ],
      ),
    );
  }
}
