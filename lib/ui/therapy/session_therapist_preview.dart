import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/dimens.dart';
import 'package:talk2me/constants/font_family.dart';
import 'package:talk2me/widgets/buttons/buttons.dart' as button;

class SessionTherapistPreview extends StatefulWidget {
  const SessionTherapistPreview({Key? key}) : super(key: key);

  @override
  State<SessionTherapistPreview> createState() =>
      _SessionTherapistPreviewState();
}

class _SessionTherapistPreviewState extends State<SessionTherapistPreview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.lightBackground,
        bottomSheet: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: AppColors.greenBackground),
          child: button.FilledButton(
            buttonText: "Proceed to book session",
            onPressed: () {},
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.zero,
                              topRight: Radius.zero,
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          // color: AppColors.darkBackground,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://res.cloudinary.com/michelletakuro/image/upload/v1647271307/talk2me-assets/img/profile-background-12.jpg"),
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.6),
                                  BlendMode.darken))),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 4.5,
                      // color: AppColors.darkBackground,
                      child: AppBar(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        leading: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.keyboard_arrow_left)),
                      )),
                  Positioned(
                      left: 16,
                      top: MediaQuery.of(context).size.height / 5.8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                border: Border.all(
                                    color: AppColors.primaryColor,
                                    width: 2,
                                    style: BorderStyle.solid)),
                            child: ClipRRect(
                                clipBehavior: Clip.antiAlias,
                                borderRadius: BorderRadius.circular(100),
                                child: Image.network(
                                  "https://res.cloudinary.com/michelletakuro/image/upload/v1647271296/talk2me-assets/img/profile-background-4.jpg",
                                  height: 80,
                                  width: 80,
                                  fit: BoxFit.fill,
                                )),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 32,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Asamoah Gyan",
                                      style: TextStyle(
                                          color: AppColors.textColorLightBg,
                                          fontSize: Dimens.textSizeHeading6,
                                          fontFamily: FontFamily.josefinSans),
                                    ),
                                    Text(
                                      "Available",
                                      style: TextStyle(
                                          color: AppColors.successColor,
                                          fontSize: Dimens.textSizeBody2,
                                          fontFamily: FontFamily.josefinSans),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Ratings",
                                      style: TextStyle(
                                          color: AppColors.subtitleTextLightBg,
                                          fontSize: Dimens.textSizeBody2,
                                          fontFamily: FontFamily.josefinSans),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 18,
                                          color: AppColors.successColor,
                                        ),
                                        Text(
                                          "4.5",
                                          style: TextStyle(
                                              color: AppColors.successColor,
                                              fontSize:
                                                  Dimens.textSizeSubtitle1,
                                              fontFamily:
                                                  FontFamily.josefinSans),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              )
            ],
          ),

          // Profile Section is here
        ));
  }
}
