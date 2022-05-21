import 'package:flutter/material.dart';
import 'package:talk2me/src/components/profile_widgets.dart';
import 'package:talk2me/src/screens/profile/components/anonymous_comp.dart';
import 'package:talk2me/src/screens/profile/components/client_profile_comp.dart';
import 'package:talk2me/theme/colors.dart';

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
          children: [
            TopSection(
              profileName: "Asamoah Gyan",
              coverImage: "assets/images/profile-background-8.jpg",
              profileImage: "assets/images/profile-background-9.jpg",
              planOrStatus: "EWS Plan",
              planOrStatusColor: AppColors.primaryColor,
              ratingOrStatusText: "Status",
              ratingOrStatusResponseText:
                  isAnonymous == false ? "Public" : "Anonymous",
              ratingsOrStatusColor: isAnonymous == false
                  ? AppColors.successColor
                  : AppColors.warningColor,
              buttonText: "Change Status",
              onPressed: () {
                setState(() {
                  isAnonymous = !isAnonymous;
                });
              },
              statusButtonVisible: true,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            ClientProfileTab()
          ],
        ),
      ),
    );
  }
}
