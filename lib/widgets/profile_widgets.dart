import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/widgets/buttons.dart' as button;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:talk2me/constants/text_styles.dart' as text_content;
import 'package:multi_select_flutter/multi_select_flutter.dart';

// This widget contains the profile tab headings for therapists profile

class TabHeadings extends StatelessWidget {
  const TabHeadings({
    Key? key,
    required this.tabController,
    required this.tabHeadingOne,
    required this.tabHeadingTwo,
  }) : super(key: key);

  final TabController tabController;
  final String tabHeadingOne;
  final String tabHeadingTwo;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          controller: tabController,
          tabs: [
            Tab(
                child: text_content.HeadingSix(
              text: tabHeadingOne,
              textColor: AppColors.textColorLightBg,
            )),
            Tab(
                child: text_content.HeadingSix(
              text: tabHeadingTwo,
              textColor: AppColors.textColorLightBg,
            ))
          ]),
    );
  }
}

// This Widget contains the Profile tab contents for therapists profile.

class TabContent extends StatelessWidget {
  const TabContent({Key? key, required this.tabController}) : super(key: key);
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 8),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height -
          (MediaQuery.of(context).size.height / 4.5),
      child: TabBarView(controller: tabController, children: [
        _overView(context),
        _review(),
      ]),
    );
  }

// This is the overview tab

  Widget _overView(BuildContext context) {
    containerBox(String skillName) {
      return Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            border: Border.all(
                color: AppColors.primaryColor,
                width: 1,
                style: BorderStyle.solid)),
        child: text_content.BodyTextOne(
          text: skillName,
          textColor: AppColors.textColorLightBg,
        ),
      );
    }

    SizedBox spacing = const SizedBox(
      height: 16,
    );
    return Column(
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
        Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text_content.HeadingSix(
                text: "Expertise",
                textColor: AppColors.textColorLightBg,
              ),
              spacing,
              Wrap(
                runSpacing: 10,
                spacing: 10,
                children: [
                  containerBox("Counselling"),
                  containerBox("Teen Talk"),
                  containerBox("Psychotherapy"),
                  containerBox("Clinical Therapy")
                ],
              )
            ],
          ),
        ),
        spacing,
        Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text_content.HeadingSix(
                text: "Fluent in",
                textColor: AppColors.textColorLightBg,
              ),
              spacing,
              Wrap(
                runSpacing: 10,
                spacing: 10,
                children: [
                  containerBox("English"),
                  containerBox("French"),
                  containerBox("Ashanti"),
                  containerBox("Twi"),
                  containerBox("Swahili"),
                  containerBox("Yoruba"),
                  containerBox("Igbo"),
                ],
              )
            ],
          ),
        ),
        spacing,
        Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              text_content.HeadingSix(
                text: "Interests",
                textColor: AppColors.textColorLightBg,
              ),
              spacing,
              Wrap(
                runSpacing: 10,
                spacing: 10,
                children: [
                  containerBox("Gender"),
                  containerBox("Mental Health"),
                  containerBox("Football"),
                  containerBox("Organization Psychology"),
                  containerBox("Human Evolution"),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

// This is the review tab

  Widget _review() {
    // A function to pass the review text from the client
    reviewBox(String reviewText, String imageLink, String userName) {
      return Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            text_content.BodyTextOne(
                text: reviewText, textColor: AppColors.textColorLightBg),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                          color: AppColors.primaryColor,
                          width: 2,
                          style: BorderStyle.solid)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          imageLink,
                          height: 30,
                          width: 30,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      text_content.BodyTextTwo(
                        text: userName,
                        textColor: AppColors.textColorLightBg,
                      )
                    ],
                  ),
                ),
                text_content.BodyTextTwo(
                  text: "24/03/2020",
                  textColor: AppColors.textColorLightBg,
                )
              ],
            )
          ],
        ),
      );
    }

    return Container(
      padding: EdgeInsets.only(bottom: 100),
      child: ListView(
        children: [
          reviewBox(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed morbi habitant imperdiet volutpat nunc eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed morbi habitant imperdiet volutpat nunc eget.",
            "assets/images/avatar-four.png",
            "Humane-Air",
          ),
          Divider(
            height: 24,
            color: AppColors.subtitleTextDarkBg,
          ),
          reviewBox(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed morbi habitant imperdiet volutpat nunc eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed morbi habitant imperdiet volutpat nunc eget.",
            "assets/images/avatar-three.png",
            "Jelly Bean",
          ),
          Divider(
            height: 24,
            color: AppColors.subtitleTextDarkBg,
          ),
          reviewBox(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed morbi habitant imperdiet volutpat nunc eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed morbi habitant imperdiet volutpat nunc eget.",
            "assets/images/avatar-five.png",
            "Sane madman",
          ),
          Divider(
            height: 24,
            color: AppColors.subtitleTextDarkBg,
          ),
          reviewBox(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed morbi habitant imperdiet volutpat nunc eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed morbi habitant imperdiet volutpat nunc eget.",
            "assets/images/avatar-five.png",
            "Olakunle",
          ),
          Divider(
            height: 24,
            color: AppColors.subtitleTextDarkBg,
          ),
          reviewBox(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed morbi habitant imperdiet volutpat nunc eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed morbi habitant imperdiet volutpat nunc eget.",
            "assets/images/avatar-five.png",
            "Mitchelle",
          ),
          Divider(
            height: 24,
            color: AppColors.subtitleTextDarkBg,
          ),
          reviewBox(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed morbi habitant imperdiet volutpat nunc eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed morbi habitant imperdiet volutpat nunc eget.",
            "assets/images/avatar-five.png",
            "Tecghie",
          ),
        ],
      ),
    );
  }
}

// This section is for the top container of the profile page. It can be used for both the therapists and the clients. It must contain the following information: Profile Name, Cover Image, Profile Image, Plan or Status Text. It can contain either of the followings: Button text, Ratings Icon for therapists or Status text for clients.

class TopSection extends StatelessWidget {
  const TopSection({
    Key? key,
    required this.profileName,
    required this.coverImage,
    required this.profileImage,
    required this.planOrStatus,
    required this.planOrStatusColor,
    required this.onPressed,
    required this.ratingOrStatusText,
    required this.ratingOrStatusResponseText,
    required this.ratingsOrStatusColor,
    this.ratingsIcon,
    this.buttonText,
  }) : super(key: key);

  final String profileName;
  final String coverImage;
  final String profileImage;
  final String planOrStatus; // Use this for texts under the profile name
  final Color planOrStatusColor;
  final Function onPressed;
  final String ratingOrStatusText;
  final String ratingOrStatusResponseText;
  final Color ratingsOrStatusColor;
  final IconData? ratingsIcon;
  final String? buttonText;

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
                // color: AppColors.darkBackground,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(coverImage
                        // "https://res.cloudinary.com/michelletakuro/image/upload/v1647271307/talk2me-assets/img/profile-background-12.jpg"
                        ),
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.6), BlendMode.darken))),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4.5,
            // color: AppColors.darkBackground,
            child: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              leading: IconButton(
                onPressed: onPressed(),
                icon: const Icon(Icons.keyboard_arrow_left),
                color: AppColors.textColorDarkBg,
              ),
            )),
        Positioned(
          left: 16,
          top: MediaQuery.of(context).size.height / 5.8,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                    profileImage,
                    // "https://res.cloudinary.com/michelletakuro/image/upload/v1647271296/talk2me-assets/img/profile-background-4.jpg",
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
                        text_content.HeadingFive(
                          text: profileName,
                          textColor: AppColors.textColorLightBg,
                        ),
                        text_content.BodyTextTwo(
                          text: planOrStatus,
                          textColor: planOrStatusColor,
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        _ratingOrClientStatusText(ratingOrStatusText),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Icon(
                              ratingsIcon,
                              // Icons.star,
                              size: 18,
                              color: AppColors.successColor,
                            ),
                            _responseText(ratingOrStatusResponseText,
                                ratingsOrStatusColor)
                          ],
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

  //Use this function when calling either the Therapists Ratings or the Status of the CLient at the far right of the profile. You can refer to the design for better understanding
  Widget _ratingOrClientStatusText(String text) {
    return text_content.BodyTextTwo(
      text: text,
      textColor: AppColors.subtitleTextLightBg,
    );
  }

  Widget _responseText(String text, Color color) {
    return text_content.SubtitleOne(
      text: text,
      textColor: color,
    );
  }
}
