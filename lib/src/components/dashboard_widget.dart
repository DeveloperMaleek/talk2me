import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/text_styles.dart' as text_content;
import 'package:talk2me/widgets/buttons.dart';

int tabPosition = 0;

class FeelingsQuestionsTabBar extends StatefulWidget {
  const FeelingsQuestionsTabBar({
    Key? key,
  }) : super(key: key);

  @override
  State<FeelingsQuestionsTabBar> createState() =>
      _FeelingsQuestionsTabBarState();
}

class _FeelingsQuestionsTabBarState extends State<FeelingsQuestionsTabBar>
    with TickerProviderStateMixin {
  bool tabHeaderVisible = true;
  bool tabContentVisible = false;
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 5, vsync: this);
    double gifSize = MediaQuery.of(context).size.width * 0.175;
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Visibility(
            visible: tabHeaderVisible,
            child: PreferredSize(
              preferredSize: Size(MediaQuery.of(context).size.width, 100),
              child: TabBar(
                  onTap: (index) {
                    onTabTapped(index);
                  },
                  indicator: const UnderlineTabIndicator(
                      borderSide: BorderSide(
                          color: AppColors.textColorLightBg,
                          width: 0,
                          style: BorderStyle.none)),
                  labelPadding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: AppColors.textColorLightBg,
                  labelStyle: GoogleFonts.josefinSans(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.15,
                  ),
                  isScrollable: false,
                  controller: _tabController,
                  tabs: [
                    Container(
                      height: 100,
                      child: Tab(
                        child: Column(
                          children: [
                            Image.network(
                              "https://res.cloudinary.com/michelletakuro/image/upload/v1647271301/talk2me-assets/gif/sad-look.gif",
                              height: gifSize,
                              width: gifSize,
                            ),
                            _spacing(),
                            const text_content.BodyTextTwo(
                              text: "Down",
                              textColor: AppColors.textColorLightBg,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      child: Tab(
                        child: Column(
                          children: [
                            Image.network(
                              "https://res.cloudinary.com/michelletakuro/image/upload/v1647271299/talk2me-assets/gif/just-there.gif",
                              height: gifSize,
                              width: gifSize,
                            ),
                            _spacing(),
                            text_content.BodyTextTwo(
                              text: "Just there",
                              textColor: AppColors.textColorLightBg,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 100,
                      child: Tab(
                          child: Column(
                        children: [
                          Image.network(
                            "https://res.cloudinary.com/michelletakuro/image/upload/v1647271298/talk2me-assets/gif/normal.gif",
                            height: gifSize,
                            width: gifSize,
                          ),
                          _spacing(),
                          text_content.BodyTextTwo(
                            text: "Normal",
                            textColor: AppColors.textColorLightBg,
                          ),
                        ],
                      )),
                    ),
                    Container(
                      height: 100,
                      child: Tab(
                          child: Column(
                        children: [
                          Image.network(
                            "https://res.cloudinary.com/michelletakuro/image/upload/v1647271300/talk2me-assets/gif/good.gif",
                            height: gifSize,
                            width: gifSize,
                          ),
                          _spacing(),
                          text_content.BodyTextTwo(
                            text: "Good",
                            textColor: AppColors.textColorLightBg,
                          ),
                        ],
                      )),
                    ),
                    Container(
                      height: 100,
                      child: Tab(
                          child: Column(
                        children: [
                          Image.network(
                            "https://res.cloudinary.com/michelletakuro/image/upload/v1647271298/talk2me-assets/gif/great.gif",
                            height: gifSize,
                            width: gifSize,
                          ),
                          _spacing(),
                          text_content.BodyTextTwo(
                            text: "Great",
                            textColor: AppColors.textColorLightBg,
                          ),
                        ],
                      )),
                    ),
                  ]),
            ),
          ),
          Visibility(
            visible: tabContentVisible,
            child: Container(
              margin: const EdgeInsets.all(16),
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Visibility(
                    visible: tabPosition == 0,
                    child: _feelingDownResponse(
                        "Feeling down!",
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris proin in amet sagittis turpis diam rhoncus amet.",
                        FilledButton(
                            buttonText: "Talk to someone about it",
                            onPressed: () {})),
                  ),
                  Visibility(
                    visible: tabPosition == 1,
                    child: _feelingDownResponse(
                        "Feeling Just there!",
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris proin in amet sagittis turpis diam rhoncus amet.",
                        FilledButton(
                            buttonText: "Talk to someone about it",
                            onPressed: () {})),
                  ),
                  Visibility(
                    visible: tabPosition == 2,
                    child: _feelingUpResponse("Feeling Normal",
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris proin in amet sagittis turpis diam rhoncus amet."),
                  ),
                  Visibility(
                    visible: tabPosition == 3,
                    child: _feelingUpResponse("Feeling Good",
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris proin in amet sagittis turpis diam rhoncus amet."),
                  ),
                  Visibility(
                    visible: tabPosition == 4,
                    child: _feelingUpResponse("Feeling Great",
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris proin in amet sagittis turpis diam rhoncus amet."),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  onTabTapped(index) {
    setState(() {
      tabPosition = index;
      tabHeaderVisible = false;
      tabContentVisible = true;

      Function reset() {
        var timeNow = DateTime.now().hour;

        if (timeNow <= 11) {
          return () {
            tabHeaderVisible = true;
          };
        } else if ((timeNow > 12) && (timeNow <= 15)) {
          return () {
            tabHeaderVisible = true;
          };
          ;
        } else if ((timeNow > 15) && (timeNow < 19)) {
          return () {
            tabHeaderVisible = true;
          };
          ;
        } else {
          return () {
            tabHeaderVisible = true;
          };
          ;
        }
      }
    });
  }

  SizedBox _spacing() {
    return SizedBox(
      height: 4,
    );
  }

  Widget _feelingUpResponse(
    String heading,
    String content,
  ) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      text_content.SubtitleOne(
          text: heading, textColor: AppColors.textColorLightBg),
      SizedBox(
        height: 16,
      ),
      text_content.BodyTextTwo(
          text: content, textColor: AppColors.textColorLightBg),
    ]);
  }

  Widget _feelingDownResponse(
    String heading,
    String content,
    Widget? button,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.greenBackground),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        text_content.SubtitleOne(
            text: heading, textColor: AppColors.textColorLightBg),
        SizedBox(
          height: 16,
        ),
        text_content.BodyTextTwo(
            text: content, textColor: AppColors.textColorLightBg),
        SizedBox(
          height: 16,
        ),
        Container(child: button)
      ]),
    );
  }
}
