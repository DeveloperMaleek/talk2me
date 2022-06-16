import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talk2me/src/components/appBar.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

int tab = 0;

// This widget contains the profile tab headings for therapists profile

class ProfileTab extends StatefulWidget {
  const ProfileTab({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTab();
}

class _ProfileTab extends State<ProfileTab> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 2, vsync: this);
    return SizedBox(
        width: double.maxFinite,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          TabBar(
              padding: EdgeInsets.only(top: 15),
              controller: _tabController,
              onTap: (index) {
                setState(() {
                  tab = index;
                });
              },
              indicator:
                  const UnderlineTabIndicator(borderSide: BorderSide.none),
              labelPadding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: GoogleFonts.josefinSans(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.15,
              ),
              labelColor: AppColors.textColorLightBg,
              unselectedLabelColor: AppColors.subtitleTextLightBg,
              isScrollable: true,
              tabs: [
                Tab(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SubtitleOne(
                      text: "Overview",
                      textColor: AppColors.textColorLightBg,
                    ),
                    Visibility(
                      visible: tab == 0,
                      child: Container(
                        margin: EdgeInsets.only(top: 8),
                        width: 80,
                        height: 4,
                        color: AppColors.darkBackground,
                      ),
                    )
                  ],
                )),
                Tab(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SubtitleOne(
                      text: "Reviews",
                      textColor: AppColors.textColorLightBg,
                    ),
                    Visibility(
                      visible: tab == 1,
                      child: Container(
                        margin: EdgeInsets.only(top: 8),
                        width: 70,
                        height: 4,
                        color: AppColors.darkBackground,
                      ),
                    )
                  ],
                ))
              ]),
          Container(
            margin: const EdgeInsets.fromLTRB(16, 0, 16, 20),
            width: MediaQuery.of(context).size.width,
            // height: MediaQuery.of(context).size.height -
            //     (MediaQuery.of(context).size.height / 4.5),
            child: Column(children: [
              Visibility(visible: tab == 0, child: _overView(context)),
              Visibility(visible: tab == 1, child: _review()),
            ]),
          )
        ]));
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
        child: BodyTextOne(
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
        const BodyTextOne(
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
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SubtitleOne(
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
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SubtitleOne(
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
            BodyTextOne(
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
                      BodyTextTwo(
                        text: userName,
                        textColor: AppColors.textColorLightBg,
                      )
                    ],
                  ),
                ),
                BodyTextTwo(
                  text: "24/03/2020",
                  textColor: AppColors.textColorLightBg,
                )
              ],
            )
          ],
        ),
      );
    }

    return SizedBox(
      child: Column(
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

// This Widget contains the Profile tab contents for therapists profile.

// This section is for the top container of the profile page. It can be used for both the therapists and the clients. It must contain the following information: Profile Name, Cover Image, Profile Image, Plan or Status Text. It can contain either of the followings: Button text, Ratings Icon for therapists or Status text for clients.

class TopSection extends StatelessWidget {
  const TopSection(
      {Key? key,
      required this.profileName,
      required this.coverImage,
      required this.profileImage,
      required this.planOrStatus,
      required this.planOrStatusColor,
      required this.ratingOrStatusText,
      required this.ratingOrStatusResponseText,
      required this.ratingsOrStatusColor,
      this.ratingsIcon,
      this.buttonText,
      this.statusButtonVisible = false,
      this.onPressed})
      : super(key: key);

  final String profileName;
  final String coverImage;
  final String profileImage;
  final String planOrStatus; // Use this for texts under the profile name
  final Color planOrStatusColor;
  final String ratingOrStatusText;
  final String ratingOrStatusResponseText;
  final Color ratingsOrStatusColor;
  final IconData? ratingsIcon;
  final String? buttonText;
  final bool statusButtonVisible;
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
            child: AppBarNavWithBackButton(
              iconColor: AppColors.textColorDarkBg,
            )),
        Positioned(
          left: 16,
          top: MediaQuery.of(context).size.height / 6,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            // Profile picture
            SizedBox(
              width: MediaQuery.of(context).size.width - 32,
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
                  Visibility(
                    visible: statusButtonVisible,
                    child: ElevatedButton(
                      onPressed: onPressed,
                      style: ElevatedButton.styleFrom(
                        // fixedSize: Size(MediaQuery.of(context).size.width, 50),
                        elevation: 0,
                        padding: const EdgeInsets.all(10),
                        primary: AppColors.primaryColor,
                        enableFeedback: false,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                      ),
                      child: BodyTextTwo(
                          text: "Change Status",
                          textColor: AppColors.textColorPrimary),
                    ),
                  )
                ],
              ),
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
                        HeadingSix(
                          text: profileName,
                          textColor: AppColors.textColorLightBg,
                        ),
                        BodyTextTwo(
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
    return BodyTextTwo(
      text: text,
      textColor: AppColors.subtitleTextLightBg,
    );
  }

  Widget _responseText(String text, Color color) {
    return SubtitleOne(
      text: text,
      textColor: color,
    );
  }
}
