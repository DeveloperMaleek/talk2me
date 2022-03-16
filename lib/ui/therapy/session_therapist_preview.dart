import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/dimens.dart';
import 'package:talk2me/constants/font_family.dart';
import 'package:talk2me/widgets/buttons.dart' as button;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
          padding: EdgeInsets.fromLTRB(16, 16, 16, 24),
          decoration:
              BoxDecoration(color: AppColors.greenBackground, boxShadow: const [
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
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.zero,
                              topRight: Radius.zero,
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          // color: AppColors.darkBackground,
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                  "https://res.cloudinary.com/michelletakuro/image/upload/v1647271307/talk2me-assets/img/profile-background-12.jpg"),
                              colorFilter: ColorFilter.mode(
                                  Colors.black.withOpacity(0.6),
                                  BlendMode.darken))),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 4.5,
                      // color: AppColors.darkBackground,
                      child: AppBar(
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        leading: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.keyboard_arrow_left)),
                      )),
                  Positioned(
                      left: 16,
                      top: MediaQuery.of(context).size.height / 5.8,
                      child: Column(
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
                                child: Image.network(
                                  "https://res.cloudinary.com/michelletakuro/image/upload/v1647271296/talk2me-assets/img/profile-background-4.jpg",
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
                                    Text(
                                      "Asamoah Gyan",
                                      style: TextStyle(
                                          color: AppColors.textColorLightBg,
                                          fontSize: Dimens.textSizeHeading6,
                                          fontFamily: FontFamily.josefinSans),
                                    ),
                                    Text(
                                      "Available",
                                      style: TextStyle(
                                          color: AppColors.successColor,
                                          fontSize: Dimens.textSizeBody2,
                                          fontFamily: FontFamily.josefinSans),
                                    )
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Ratings",
                                      style: TextStyle(
                                          color: AppColors.subtitleTextLightBg,
                                          fontSize: Dimens.textSizeBody2,
                                          fontFamily: FontFamily.josefinSans),
                                    ),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          size: 18,
                                          color: AppColors.successColor,
                                        ),
                                        Text(
                                          "4.5",
                                          style: TextStyle(
                                              color: AppColors.successColor,
                                              fontSize:
                                                  Dimens.textSizeSubtitle1,
                                              fontFamily:
                                                  FontFamily.josefinSans),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              ),

              // Overview and Review Tabs are here
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Container(
                width: double.maxFinite,
                child: TabBar(
                    indicator: UnderlineTabIndicator(
                        borderSide: BorderSide(
                            color: AppColors.textColorLightBg,
                            width: 4,
                            style: BorderStyle.solid)),
                    labelPadding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    indicatorSize: TabBarIndicatorSize.label,
                    labelStyle: TextStyle(
                        fontFamily: FontFamily.josefinSans,
                        fontSize: Dimens.textSizeHeading6),
                    labelColor: AppColors.textColorLightBg,
                    unselectedLabelColor: AppColors.subtitleTextLightBg,
                    isScrollable: true,
                    controller: _tabController,
                    tabs: [
                      Tab(
                        text: "Overview",
                      ),
                      Tab(
                        text: "Reviews",
                      )
                    ]),
              ),

              Container(
                margin: EdgeInsets.all(16),
                width: MediaQuery.of(context).size.height,
                height: 500,
                child: TabBarView(
                    controller: _tabController,
                    children: [_overView(), Text("Reviews tab is here")]),
              )
            ],
          ),

          // Profile Section is here
        ));
  }

  Widget _overView() {
    SizedBox spacing = SizedBox(
      height: 16,
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed morbi habitant imperdiet volutpat nunc eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed morbi habitant imperdiet volutpat nunc eget.",
          style: TextStyle(
              color: AppColors.textColorLightBg,
              fontFamily: FontFamily.josefinSans,
              fontSize: Dimens.textSizeBody1),
        ),
        spacing,
        Row(
          children: [
            IconButton(
              onPressed: () {},
              alignment: Alignment.centerLeft,
              color: AppColors.darkBackground,
              splashColor: AppColors.primaryColor,
              padding: EdgeInsets.all(0),
              icon: FaIcon(FontAwesomeIcons.facebookSquare),
              iconSize: 30,
            ),
            IconButton(
              color: AppColors.darkBackground,
              splashColor: AppColors.primaryColor,
              onPressed: () {},
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(0),
              icon: FaIcon(FontAwesomeIcons.twitterSquare),
              iconSize: 30,
            ),
            IconButton(
              color: AppColors.darkBackground,
              splashColor: AppColors.primaryColor,
              onPressed: () {},
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(0),
              icon: FaIcon(FontAwesomeIcons.linkedin),
              iconSize: 30,
            ),
          ],
        ),
        spacing,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Expertise",
              style: TextStyle(
                  color: AppColors.textColorLightBg,
                  fontSize: Dimens.textSizeBody1),
            )
          ],
        )
      ],
    );
  }
}
