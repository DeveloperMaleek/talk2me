import 'package:flutter/material.dart';
import 'package:talk2me/routes.dart';
import 'package:talk2me/src/screens/profile/components/client_profile_comp.dart';
import 'package:talk2me/src/screens/profile/components/overview_comp.dart';
import 'package:talk2me/src/screens/profile/settings.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

class TherapistProfile extends StatefulWidget {
  const TherapistProfile({Key? key}) : super(key: key);

  @override
  State<TherapistProfile> createState() => _TherapistProfileState();
}

class _TherapistProfileState extends State<TherapistProfile> {
  bool isAvailable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 96),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UserTopSection(
              profileName: "Asamoah Gyan",
              coverImage: selectedCoverImage,
              profileImage: "assets/images/avatar-three.png",
              planOrStatus: "4.5 Rating",
              planOrStatusColor: AppColors.successColor,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            // ClientProfileTab()
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, profileSettings);
                  },
                  child: Container(
                      margin: EdgeInsets.only(right: 20),
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: AppColors.outlineColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: SubtitleOne(
                          text: "Settings",
                          textColor: AppColors.textColorLightBg)),
                ),
                Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppColors.greenBackground,
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          BodyTextOne(
                              text: "Set availability to Away",
                              textColor: AppColors.textColorLightBg),
                          Switch(
                              value: isAvailable,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.padded,
                              inactiveThumbColor: AppColors.subtitleTextLightBg,
                              activeTrackColor: AppColors.primaryColor,
                              activeColor: AppColors.primaryColor,
                              onChanged: (bool value) {
                                setState(() {
                                  isAvailable = value;
                                  // ClientProfile().isAnonymous = value;
                                });
                              })
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    width: MediaQuery.of(context).size.width,
                    child: OverviewComp()),
                spacing,
              ],
            ),
            GestureDetector(
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: SubtitleOne(
                      text: "Log out", textColor: AppColors.errorColor)),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox spacing = const SizedBox(
    height: 16,
  );

  Widget containerBox(String skillName) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
              color: AppColors.primaryColor,
              width: 1,
              style: BorderStyle.solid)),
      child: BodyTextTwo(
        text: skillName,
        textColor: AppColors.textColorLightBg,
      ),
    );
  }
}
