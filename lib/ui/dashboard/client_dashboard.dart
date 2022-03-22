import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/text_styles.dart' as text_content;
import 'package:talk2me/routes.dart' as route;
import 'package:talk2me/widgets/buttons.dart';
import 'package:talk2me/widgets/dashboard_widget.dart' as dashboard;

class ClientDashboard extends StatefulWidget {
  const ClientDashboard({Key? key}) : super(key: key);

  @override
  State<ClientDashboard> createState() => _ClientDashboardState();
}

class _ClientDashboardState extends State<ClientDashboard>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 5, vsync: this);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                padding: const EdgeInsets.fromLTRB(16, 64, 16, 24),
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.zero,
                        topRight: Radius.zero,
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    // color: AppColors.darkBackground,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: const NetworkImage(
                            "https://res.cloudinary.com/michelletakuro/image/upload/v1647271307/talk2me-assets/img/profile-background-12.jpg"),
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.6), BlendMode.darken))),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4.5,
                // color: AppColors.darkBackground,
                child: Column(
                  children: [
                    text_content.HeadingFive(
                        text: "Good " + greetingMessage() + ", Amma",
                        textColor: AppColors.subtitleTextDarkBg),
                    const SizedBox(
                      height: 8,
                    ),
                    const text_content.SubtitleOne(
                        text: "We are with you in every step of the journey.",
                        textColor: AppColors.textColorDarkBg)
                  ],
                )),

            //Feelings Question Section
            Container(
                margin: const EdgeInsets.fromLTRB(16, 24, 16, 12),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: AppColors.outlineColor,
                        width: 3,
                        style: BorderStyle.solid)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    text_content.HeadingSix(
                        text: "How are you feeling this " +
                            greetingMessage() +
                            "?",
                        textColor: AppColors.textColorLightBg),
                    const SizedBox(height: 4),
                    dashboard.FeelingsQuestionsTabBar(
                        tabController: _tabController),
                    Visibility(
                      visible: false,
                      maintainState: true,
                      child: dashboard.FeelingsResponseTabContent(
                          tabController: _tabController),
                    )
                  ],
                )),

            // Upcoming session section
            Container(
                margin: const EdgeInsets.fromLTRB(16, 12, 16, 12),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: AppColors.outlineColor,
                        width: 3,
                        style: BorderStyle.solid)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const text_content.HeadingSix(
                        text: "Upcoming Session",
                        textColor: AppColors.textColorLightBg),
                    const SizedBox(height: 16),
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: AppColors.greenBackground),
                      child: Column(
                        children: [
                          const text_content.BodyTextOne(
                            text:
                                "You do not have any upcoming therapy session.",
                            textColor: AppColors.textColorLightBg,
                            textAlignment: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 32,
                          ),
                          FilledButton(
                              buttonText: "Book a session now",
                              onPressed: () {
                                Navigator.pushNamed(
                                    context, route.selectAvailableSessions);
                              })
                        ],
                      ),
                    )
                  ],
                )),

            // Anonymous profile section
            Container(
                width: MediaQuery.of(context).size.width,
                height: 120,
                margin: const EdgeInsets.fromLTRB(16, 12, 16, 24),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    // color: AppColors.darkBackground,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: const NetworkImage(
                            "https://res.cloudinary.com/michelletakuro/image/upload/v1647700862/talk2me-assets/img/anonymous-profile-bg.jpg"),
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.8), BlendMode.darken))),
                // color: AppColors.darkBackground,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          text_content.HeadingSix(
                              text: "Set anonymous profile",
                              textColor: AppColors.primaryColor),
                          SizedBox(
                            height: 8,
                          ),
                          text_content.SubtitleTwo(
                              text:
                                  "Talk to therapist without revealing who you are.",
                              textColor: AppColors.textColorDarkBg)
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Image.network(
                      "https://res.cloudinary.com/michelletakuro/image/upload/v1647700861/talk2me-assets/img/Anonymous.png",
                      width: 100,
                      height: 100,
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }

  String greetingMessage() {
    var timeNow = DateTime.now().hour;

    if (timeNow <= 12) {
      return 'morning';
    } else if ((timeNow > 12) && (timeNow <= 16)) {
      return 'afternoon';
    } else if ((timeNow > 16) && (timeNow < 20)) {
      return 'evening';
    } else {
      return 'night';
    }
  }
}
