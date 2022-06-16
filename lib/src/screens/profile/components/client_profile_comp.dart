import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk2me/routes.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

// This section is for the top container of the profile page. It can be used for both the therapists and the clients. It must contain the following information: Profile Name, Cover Image, Profile Image, Plan or Status Text. It can contain either of the followings: Button text, Ratings Icon for therapists or Status text for clients.

class UserTopSection extends StatelessWidget {
  const UserTopSection(
      {Key? key,
      required this.profileName,
      required this.coverImage,
      required this.profileImage,
      required this.planOrStatus,
      required this.planOrStatusColor,
      this.onPressed})
      : super(key: key);

  final String profileName;
  final String coverImage;
  final String profileImage;
  final String planOrStatus; // Use this for texts under the profile name
  final Color planOrStatusColor;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Stack(clipBehavior: Clip.none, children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.zero,
                  topRight: Radius.zero,
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15)),
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(coverImage),
                  colorFilter: ColorFilter.mode(
                      Colors.black.withOpacity(0.6), BlendMode.darken))),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 4.5,
        ),
        Positioned(
          left: 20,
          top: MediaQuery.of(context).size.height / 6,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // Profile picture
            SizedBox(
              width: MediaQuery.of(context).size.width - 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        child: Image.asset(
                          profileImage,
                          height: MediaQuery.of(context).size.width * 0.2,
                          width: MediaQuery.of(context).size.width * 0.2,
                          fit: BoxFit.fill,
                        )),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              width: MediaQuery.of(context).size.width - 40,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeadingSix(
                          text: profileName,
                          textColor: AppColors.textColorLightBg,
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        SubtitleTwo(
                          text: planOrStatus,
                          textColor: planOrStatusColor,
                        )
                      ],
                    ),
                  ]),
            )
          ]),
        )
      ])
    ]);
  }
}
