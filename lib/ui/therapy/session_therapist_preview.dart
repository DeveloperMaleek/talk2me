import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talk2me/constants/colors.dart';
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
    List tabListHeading = ["Heading One", "Heading Two", "Heading Three"];
    TabController _tabController =
        TabController(length: tabListHeading.length, vsync: this);

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
            onPressed: () {},
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
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
                tabHeadingTwo: "Is this working?",
                tabHeadingThree: Text("data"),
              ),

              profile.TabContent(tabController: _tabController),

              Container(
                width: double.maxFinite,
                child: TabBar(
                    indicator: const UnderlineTabIndicator(
                        borderSide: BorderSide(
                            color: AppColors.textColorLightBg,
                            width: 4,
                            style: BorderStyle.solid)),
                    labelPadding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    indicatorSize: TabBarIndicatorSize.label,
                    labelStyle: GoogleFonts.josefinSans(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 0.15,
                    ),
                    labelColor: AppColors.textColorLightBg,
                    unselectedLabelColor: AppColors.subtitleTextLightBg,
                    isScrollable: true,
                    controller: _tabController,
                    tabs: const [
                      Tab(
                        text: "Overview",
                      ),
                      Tab(
                        text: "Reviews",
                      )
                    ]),
              ),

              Container(
                margin: const EdgeInsets.all(16),
                width: MediaQuery.of(context).size.height,
                height: 500,
                child: TabBarView(
                    controller: _tabController,
                    children: [_overView(), const Text("Reviews tab is here")]),
              )
            ],
          ),

          // Profile Section is here
        ));
  }

  Widget _overView() {
    SizedBox spacing = const SizedBox(
      height: 16,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const text_content.BodyTextOne(
          text:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed morbi habitant imperdiet volutpat nunc eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed morbi habitant imperdiet volutpat nunc eget.",
          textColor: AppColors.textColorLightBg,
        ),
        spacing,
        Row(
          children: [
            IconButton(
              onPressed: () {},
              alignment: Alignment.centerLeft,
              color: AppColors.darkBackground,
              splashColor: AppColors.primaryColor,
              padding: const EdgeInsets.all(0),
              icon: const FaIcon(FontAwesomeIcons.facebookSquare),
              iconSize: 30,
            ),
            IconButton(
              color: AppColors.darkBackground,
              splashColor: AppColors.primaryColor,
              onPressed: () {},
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(0),
              icon: const FaIcon(FontAwesomeIcons.twitterSquare),
              iconSize: 30,
            ),
            IconButton(
              color: AppColors.darkBackground,
              splashColor: AppColors.primaryColor,
              onPressed: () {},
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.all(0),
              icon: const FaIcon(FontAwesomeIcons.linkedin),
              iconSize: 30,
            ),
          ],
        ),
        spacing,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text_content.HeadingSix(
              text: "Expertise",
              textColor: AppColors.textColorLightBg,
            ),
            spacing,
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          color: AppColors.primaryColor,
                          width: 1,
                          style: BorderStyle.solid)),
                  child: text_content.BodyTextOne(
                    text: "Counselling",
                    textColor: AppColors.textColorLightBg,
                  ),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
