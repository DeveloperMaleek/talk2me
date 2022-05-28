import 'package:flutter/material.dart';
import 'package:talk2me/routes.dart';
import 'package:talk2me/src/screens/profile/components/anonymous_comp.dart';
import 'package:talk2me/src/screens/profile/components/client_profile_comp.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

bool isAnonymous = false;

class ClientProfile extends StatefulWidget {
  ClientProfile({Key? key}) : super(key: key);

  @override
  State<ClientProfile> createState() => _ClientProfileState();
}

class _ClientProfileState extends State<ClientProfile> {
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
              coverImage: "assets/images/good-evening.jpg",
              profileImage: "assets/images/avatar-three.png",
              planOrStatus: isAnonymous == false ? "Public" : "Anonymous",
              planOrStatusColor: isAnonymous == false
                  ? AppColors.successColor
                  : AppColors.warningColor,
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
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SubtitleOne(
                        text: "Goals",
                        textColor: AppColors.textColorLightBg,
                      ),
                      spacing,
                      Wrap(
                        runSpacing: 10,
                        spacing: 10,
                        children: [
                          containerBox("Sleeping Better"),
                          containerBox("Managing Anger"),
                          containerBox("Tackling Stress"),
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
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
                              text: "Set profile to anonymous",
                              textColor: AppColors.textColorLightBg),
                          Switch(
                              value: isAnonymous,
                              materialTapTargetSize:
                                  MaterialTapTargetSize.padded,
                              inactiveThumbColor: AppColors.subtitleTextLightBg,
                              activeTrackColor: AppColors.primaryColor,
                              activeColor: AppColors.primaryColor,
                              onChanged: (bool value) {
                                setState(() {
                                  isAnonymous = value;
                                  print(isAnonymous);
                                  // ClientProfile().isAnonymous = value;
                                });
                              })
                        ],
                      ),
                    ),
                    AnonymousComp(),
                  ],
                ),
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
