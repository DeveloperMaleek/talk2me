import 'package:flutter/material.dart';
import 'package:talk2me/src/components/profile_widgets.dart';
import 'package:talk2me/theme/colors.dart';

class ClientProfile extends StatefulWidget {
  const ClientProfile({Key? key}) : super(key: key);

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
              planOrStatusColor: AppColors.successColor,
              ratingOrStatusText: "Status",
              ratingOrStatusResponseText: "Public",
              ratingsOrStatusColor: AppColors.successColor,
              buttonText: "Change Status",
              statusButtonVisible: true,
            ),
          ],
        ),
      ),
    );
  }
}
