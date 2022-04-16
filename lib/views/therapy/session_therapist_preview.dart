import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/routes.dart' as route;
import 'package:talk2me/widgets/buttons.dart' as button;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:talk2me/constants/text_styles.dart' as text_content;
import 'package:multi_select_flutter/multi_select_flutter.dart';
import 'package:talk2me/widgets/profile_widgets.dart' as profile;

class SessionTherapistPreview extends StatefulWidget {
  const SessionTherapistPreview({Key? key}) : super(key: key);

  @override
  State<SessionTherapistPreview> createState() =>
      _SessionTherapistPreviewState();
}

class _SessionTherapistPreviewState extends State<SessionTherapistPreview>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);

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
        body: CustomScrollView(slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              Column(
                children: [
                  profile.TopSection(
                      profileName: "Asamoah Gyan",
                      coverImage:
                          "https://res.cloudinary.com/michelletakuro/image/upload/v1647271307/talk2me-assets/img/profile-background-12.jpg",
                      profileImage:
                          "https://res.cloudinary.com/michelletakuro/image/upload/v1647271296/talk2me-assets/img/profile-background-4.jpg",
                      planOrStatus: "Available",
                      planOrStatusColor: AppColors.successColor,
                      onPressed: () {},
                      ratingOrStatusText: "Rating",
                      ratingOrStatusResponseText: "4.5",
                      ratingsIcon: Icons.star,
                      ratingsOrStatusColor: AppColors.successColor),

                  // Overview and Review Tabs are here
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  profile.TabHeadings(
                    tabController: _tabController,
                    tabHeadingOne: "Overview",
                    tabHeadingTwo: "Reviews",
                  ),
                  profile.TabContent(tabController: _tabController)
                ],
              ),
            ]),
          ),
        ]));
  }
}
