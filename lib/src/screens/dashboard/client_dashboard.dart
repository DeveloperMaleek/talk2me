import 'package:flutter/material.dart';
import 'package:talk2me/routes.dart';
import 'package:talk2me/src/animations/dashboard_animation.dart';
import 'package:talk2me/src/components/buttons.dart';
import 'package:talk2me/src/components/dashboard_widget.dart';
import 'package:talk2me/src/components/sessions_list.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

class ClientDashboard extends StatefulWidget {
  const ClientDashboard({Key? key}) : super(key: key);

  @override
  State<ClientDashboard> createState() => _ClientDashboardState();
}

class _ClientDashboardState extends State<ClientDashboard> {
  @override
  void initState() {
    greetingMessage();
    greetingImageUrl();
    super.initState();
  }

  List sessions = ["1", "2"];

  String greetings = "";
  String imageUrl = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.darkBackground,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            collapsedHeight: 300,
            backgroundColor: Colors.transparent,
            expandedHeight: 500,
            flexibleSpace: Stack(children: [
              Container(
                padding: const EdgeInsets.fromLTRB(20, 78, 20, 24),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.zero,
                        topRight: Radius.zero,
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(imageUrl),
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.2), BlendMode.darken))),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              Opacity(
                opacity: 1,
                child: Container(
                  padding: const EdgeInsets.fromLTRB(20, 78, 20, 24),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: const Alignment(0.1, 0.8),
                      colors: [
                        Color.fromARGB(0, 0, 0, 0),
                        AppColors.darkBackground,
                      ],
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadingSix(
                          text: "Good " + greetings + ", Amma",
                          textColor: AppColors.subtitleTextDarkBg),
                      const SizedBox(
                        height: 16,
                      ),
                      TypeWriterBox(),
                      // HeadingFour(
                      //     text: "We are with you in every step of the journey.",
                      //     textColor: AppColors.textColorDarkBg)
                    ],
                  ),
                ),
              )
            ]),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
                margin: const EdgeInsets.fromLTRB(20, 24, 20, 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingSix(
                        text: "How are you feeling this " + greetings + "?",
                        textColor: AppColors.textColorLightBg),
                    SizedBox(
                      height: 16,
                    ),
                    FeelingsQuestionsTabBar(),
                  ],
                )),

            // Upcoming session section
            Visibility(
              visible: sessions.length >= 1,
              child: Container(
                  margin: const EdgeInsets.fromLTRB(20, 12, 20, 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const HeadingSix(
                          text: "Upcoming Session",
                          textColor: AppColors.textColorLightBg),
                      haveSession(context)
                    ],
                  )),
            ),
            // // Online Assesment
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: AppColors.darkBackground,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        HeadingSix(
                            text: "Take an assessment",
                            textColor: AppColors.primaryColor),
                        SizedBox(
                          height: 8,
                        ),
                        SubtitleTwo(
                            text:
                                'Consider this a celebration of curiosity and openness. Go ahead, try it.',
                            textColor: AppColors.subtitleTextDarkBg)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "assets/images/assessment.png",
                    width: 80,
                    height: 80,
                  )
                ],
              ),
            ),

            // Anonymous profile section
            Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.fromLTRB(20, 12, 20, 24),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    // color: AppColors.darkBackground,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: const AssetImage(
                            "assets/images/anonymous-profile-bg.jpg"),
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.8), BlendMode.darken))),
                // color: AppColors.darkBackground,
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          HeadingSix(
                              text: "Set anonymous profile",
                              textColor: AppColors.primaryColor),
                          SizedBox(
                            height: 8,
                          ),
                          SubtitleTwo(
                              text:
                                  "Talk to therapist without revealing who you are.",
                              textColor: AppColors.textColorDarkBg)
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Image.asset(
                      "assets/images/Anonymous.png",
                      width: 80,
                      height: 80,
                    )
                  ],
                )),
            const SizedBox(
              height: 100,
            ),
          ]))

          //Feelings Question Section

          // Container(
          //     margin: const EdgeInsets.fromLTRB(20, 24, 20, 12),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         HeadingSix(
          //             text: "How are you feeling this " + greetings + "?",
          //             textColor: AppColors.textColorLightBg),
          //         SizedBox(
          //           height: 16,
          //         ),
          //         FeelingsQuestionsTabBar(),
          //       ],
          //     )),
          // Container(
          //     padding: const EdgeInsets.fromLTRB(20, 78, 20, 24),
          //     decoration: BoxDecoration(
          //         borderRadius: const BorderRadius.only(
          //             topLeft: Radius.zero,
          //             topRight: Radius.zero,
          //             bottomLeft: Radius.circular(15),
          //             bottomRight: Radius.circular(15)),
          //         image: DecorationImage(
          //             fit: BoxFit.cover,
          //             image: AssetImage(imageUrl),
          //             colorFilter: ColorFilter.mode(
          //                 Colors.black.withOpacity(0.6), BlendMode.darken))),
          //     width: MediaQuery.of(context).size.width,
          //     height: MediaQuery.of(context).size.height / 2,
          //     child: Column(
          //       children: [
          //         HeadingSix(
          //             text: "Good " + greetings + ", Amma",
          //             textColor: AppColors.subtitleTextDarkBg),
          //         const SizedBox(
          //           height: 8,
          //         ),
          //         const SubtitleTwo(
          //             text: "We are with you in every step of the journey.",
          //             textColor: AppColors.textColorDarkBg)
          //       ],
          //     )),

          // //Feelings Question Section
          // Container(
          //     margin: const EdgeInsets.fromLTRB(20, 24, 20, 12),
          //     child: Column(
          //       crossAxisAlignment: CrossAxisAlignment.start,
          //       children: [
          //         HeadingSix(
          //             text: "How are you feeling this " + greetings + "?",
          //             textColor: AppColors.textColorLightBg),
          //         SizedBox(
          //           height: 16,
          //         ),
          //         FeelingsQuestionsTabBar(),
          //       ],
          //     )),

          // // Upcoming session section
          // Visibility(
          //   visible: sessions.length >= 1,
          //   child: Container(
          //       margin: const EdgeInsets.fromLTRB(20, 12, 20, 12),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           const HeadingSix(
          //               text: "Upcoming Session",
          //               textColor: AppColors.textColorLightBg),
          //           haveSession(context)
          //         ],
          //       )),
          // ),

          // // Online Assesment
          // Container(
          //   margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          //   width: MediaQuery.of(context).size.width,
          //   padding: EdgeInsets.all(16),
          //   decoration: BoxDecoration(
          //       color: AppColors.darkBackground,
          //       borderRadius: BorderRadius.circular(15)),
          //   child: Row(
          //     children: [
          //       Expanded(
          //         child: Column(
          //           crossAxisAlignment: CrossAxisAlignment.start,
          //           children: [
          //             HeadingSix(
          //                 text: "Take an assessment",
          //                 textColor: AppColors.primaryColor),
          //             SizedBox(
          //               height: 8,
          //             ),
          //             SubtitleTwo(
          //                 text:
          //                     'Consider this a celebration of curiosity and openness. Go ahead, try it.',
          //                 textColor: AppColors.subtitleTextDarkBg)
          //           ],
          //         ),
          //       ),
          //       SizedBox(
          //         width: 10,
          //       ),
          //       Image.asset(
          //         "assets/images/assessment.png",
          //         width: 80,
          //         height: 80,
          //       )
          //     ],
          //   ),
          // ),

          // // Anonymous profile section
          // Container(
          //     width: MediaQuery.of(context).size.width,
          //     margin: const EdgeInsets.fromLTRB(20, 12, 20, 24),
          //     padding: const EdgeInsets.all(16),
          //     decoration: BoxDecoration(
          //         borderRadius: BorderRadius.circular(15),
          //         // color: AppColors.darkBackground,
          //         image: DecorationImage(
          //             fit: BoxFit.cover,
          //             image: const AssetImage(
          //                 "assets/images/anonymous-profile-bg.jpg"),
          //             colorFilter: ColorFilter.mode(
          //                 Colors.black.withOpacity(0.8), BlendMode.darken))),
          //     // color: AppColors.darkBackground,
          //     child: Row(
          //       children: [
          //         Expanded(
          //           child: Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: const [
          //               HeadingSix(
          //                   text: "Set anonymous profile",
          //                   textColor: AppColors.primaryColor),
          //               SizedBox(
          //                 height: 8,
          //               ),
          //               SubtitleTwo(
          //                   text:
          //                       "Talk to therapist without revealing who you are.",
          //                   textColor: AppColors.textColorDarkBg)
          //             ],
          //           ),
          //         ),
          //         const SizedBox(
          //           width: 16,
          //         ),
          //         Image.asset(
          //           "assets/images/Anonymous.png",
          //           width: 80,
          //           height: 80,
          //         )
          //       ],
          //     )),
          // const SizedBox(
          //   height: 100,
          // ),
        ],
      ),
    );
  }

  Container haveSession(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.greenBackground),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.asset("assets/images/dp.png"),
              ),
              SizedBox(
                width: 8,
              ),
              SubtitleOne(
                  text: "Asamoah Jessie", textColor: AppColors.textColorLightBg)
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const OtherUpcomingSessions(
              borderColor: Colors.transparent,
              containerPadding: EdgeInsets.all(0)),
        ],
      ),
    );
  }

  Container noSession(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: AppColors.greenBackground),
      child: Column(
        children: [
          const BodyTextOne(
            text: "You do not have any upcoming therapy session.",
            textColor: AppColors.textColorLightBg,
            textAlignment: TextAlign.center,
          ),
          const SizedBox(
            height: 32,
          ),
          FilledButton(
              buttonText: "Book a session now",
              onPressed: () {
                Navigator.pushNamed(context, therapyBookSession);
              })
        ],
      ),
    );
  }

  void greetingMessage() {
    var timeNow = DateTime.now().hour;
    String innerMessage = "";

    if (timeNow <= 11) {
      innerMessage = 'morning';
    } else if ((timeNow >= 12) && (timeNow <= 15)) {
      innerMessage = 'afternoon';
    } else if ((timeNow > 15) && (timeNow < 19)) {
      innerMessage = 'evening';
    } else {
      innerMessage = 'night';
    }

    setState(() {
      greetings = innerMessage;
    });
  }

  void greetingImageUrl() {
    var timeNow = DateTime.now().hour;

    String innerImageUrl = "";

    if (timeNow <= 11) {
      innerImageUrl = 'assets/images/good-morning.jpg';
    } else if ((timeNow >= 12) && (timeNow <= 15)) {
      innerImageUrl = 'assets/images/good-afternoon.jpg';
    } else if ((timeNow > 15) && (timeNow < 19)) {
      innerImageUrl = 'assets/images/good-evening.jpg';
    } else {
      innerImageUrl = 'assets/images/good-evening.jpg';
    }

    setState(() {
      imageUrl = innerImageUrl;
    });
  }
}
