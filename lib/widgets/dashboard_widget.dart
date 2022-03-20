import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/text_styles.dart' as text_content;
import 'package:talk2me/widgets/buttons.dart';

class FeelingsQuestionsTabBar extends StatelessWidget {
  const FeelingsQuestionsTabBar({Key? key, required this.tabController})
      : super(key: key);

  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    double gifSize = MediaQuery.of(context).size.width * 0.175;
    return Container(
      width: MediaQuery.of(context).size.width,
      child: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 100),
        child: TabBar(
            indicator: UnderlineTabIndicator(
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
            controller: tabController,
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
                      text_content.BodyTextTwo(
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
    );
  }

  SizedBox _spacing() {
    return SizedBox(
      height: 4,
    );
  }
}

class FeelingsResponseTabContent extends StatelessWidget {
  const FeelingsResponseTabContent({Key? key, required this.tabController})
      : super(key: key);

  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      width: MediaQuery.of(context).size.height,
      height: 150,
      child: TabBarView(controller: tabController, children: [
        _feelingDownResponse(
            "Feeling down!",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris proin in amet sagittis turpis diam rhoncus amet.",
            FilledButton(
                buttonText: "Talk to someone about it", onPressed: () {})),
        _feelingDownResponse(
            "Feeling Just there!",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris proin in amet sagittis turpis diam rhoncus amet.",
            FilledButton(
                buttonText: "Talk to someone about it", onPressed: () {})),
        _feelingUpResponse("Feeling Normal",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris proin in amet sagittis turpis diam rhoncus amet."),
        _feelingUpResponse("Feeling Good",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris proin in amet sagittis turpis diam rhoncus amet."),
        _feelingUpResponse("Feeling Great",
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris proin in amet sagittis turpis diam rhoncus amet."),
      ]),
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
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
    ]);
  }
}
