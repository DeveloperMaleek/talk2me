import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/routes.dart' as route;
import 'package:talk2me/widgets/buttons.dart' as button;
import 'package:talk2me/widgets/profile_widgets.dart';

int tab = 0;

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
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 24),
        decoration:
            const BoxDecoration(color: AppColors.greenBackground, boxShadow: [
          BoxShadow(
            color: Color.fromARGB(30, 0, 0, 0),
            blurRadius: 10.0, // soften the shadow
            offset: Offset(
              0.0, // Move to right 10  horizontally
              -10.0, // Move to bottom 10 Vertically
            ),
          )
        ]),
        child: button.FilledButton(
          buttonText: "Proceed to book session",
          onPressed: () {
            Navigator.pushNamed(context, route.selectAvailableSessions);
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(bottom: 96),
        child: Column(
          children: [
            const TopSection(
                profileName: "Asamoah Gyan",
                coverImage: "assets/images/profile-background-8.jpg",
                profileImage: "assets/images/profile-background-9.jpg",
                planOrStatus: "Available",
                planOrStatusColor: AppColors.successColor,
                ratingOrStatusText: "Rating",
                ratingOrStatusResponseText: "4.5",
                ratingsIcon: Icons.star,
                ratingsOrStatusColor: AppColors.successColor),

            // Overview and Review Tabs are here
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            ProfileTab(),
          ],
        ),
      ),
    );
  }
}
