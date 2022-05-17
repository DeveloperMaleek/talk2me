import 'package:flutter/material.dart';
import 'package:talk2me/routes.dart';
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
  initState() {
    greetingMessage();
    greetingImageUrl();
    super.initState();
  }

  String greetings = "";
  String imageUrl = "";
  @override
  Widget build(BuildContext context) {
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
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(imageUrl),
                        colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(0.6), BlendMode.darken))),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 4.5,
                child: Column(
                  children: [
                    HeadingFive(
                        text: "Good " + greetings + ", Amma",
                        textColor: AppColors.subtitleTextDarkBg),
                    const SizedBox(
                      height: 8,
                    ),
                    const SubtitleOne(
                        text: "We are with you in every step of the journey.",
                        textColor: AppColors.textColorDarkBg)
                  ],
                )),

            //Feelings Question Section
            Container(
                margin: const EdgeInsets.fromLTRB(16, 24, 16, 12),
                // padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                        color: AppColors.outlineColor,
                        width: 3,
                        style: BorderStyle.solid)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
                      child: HeadingSix(
                          text: "How are you feeling this " + greetings + "?",
                          textColor: AppColors.textColorLightBg),
                    ),
                    FeelingsQuestionsTabBar(),
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
                    const HeadingSix(
                        text: "Upcoming Session",
                        textColor: AppColors.textColorLightBg),
                    haveSession(context)
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
                        image: const AssetImage(
                            "assets/images/anonymous-profile-bg.jpg"),
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
                      width: 100,
                      height: 100,
                    )
                  ],
                )),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
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
            height: 32,
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
