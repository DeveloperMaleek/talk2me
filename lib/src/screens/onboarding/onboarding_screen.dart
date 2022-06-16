// import 'package:agora_rtc_engine/rtc_engine.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:talk2me/routes.dart';
import 'package:talk2me/src/components/buttons.dart' as button;
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

List onBoardingContent = [
  //  Content one
  OnboardingContents(
    imageUrl: "assets/images/image-bg-1.png",
    copyTextOne: "Get access to professional \ntherapists in minutes.",
    copyTextTwo: 'We are here to help you',
  ),
  OnboardingContents(
    imageUrl: "assets/images/image-bg-2.png",
    copyTextOne: "Get access to professional \ntherapists in minutes.",
    copyTextTwo: 'We are here to help you',
  ),
  OnboardingContents(
    imageUrl: "assets/images/image-bg-3.png",
    copyTextOne: "Your home for \nSelf-Expression.",
    copyTextTwo: 'When the day is just there!',
  ),
];

class OnboardingContents extends StatelessWidget {
  const OnboardingContents({
    Key? key,
    required this.imageUrl,
    required this.copyTextOne,
    required this.copyTextTwo,
  }) : super(key: key);

  final String imageUrl;
  final String copyTextOne;
  final String copyTextTwo;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(
          imageUrl,
          width: MediaQuery.of(context).size.width * 0.61,
          height: MediaQuery.of(context).size.height * 0.28,
        ),
        SizedBox(height: 24.0),
        HeadingSix(
          text: copyTextOne,
          textAlignment: TextAlign.center,
          textColor: AppColors.textColorLightBg,
        ),
        SizedBox(height: 16.0),
        SubtitleOne(
          text: copyTextTwo,
          textColor: AppColors.primaryColor,
        ),
      ],
    );
  }
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int pagePosition = 0;
  // PageController _pageController = PageController(initialPage: 0);

  // @override
  // void initState() {
  //   startTime();
  //   super.initState();
  // }

  // startTime() async {
  //   var duration = Duration(milliseconds: 500);
  //   return Timer(duration, startDelay);
  // }

  // startDelay() async {
  //   Future.delayed(Duration(milliseconds: 1500), () {
  //     setState(() {
  //       pagePosition;
  //     });
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      body: SingleChildScrollView(
          // padding: EdgeInsets.only(left: 20, right: 20),
          child: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                matchTextDirection: true,
                repeat: ImageRepeat.repeat,
                opacity: 0.05,
                image: AssetImage("assets/images/bg_icon.png"))),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.46,
                child: PageView.builder(
                  itemCount: onBoardingContent.length,
                  itemBuilder: (context, index) {
                    return onBoardingContent[index];
                  },
                  // controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      pagePosition = index;
                    });
                    // print(index);
                  },
                ),
              ),
              SizedBox(height: 24.0),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: pagePosition == 0
                          ? AppColors.primaryColor
                          : AppColors.subtitleTextLightBg,
                      width: 50,
                      height: 4,
                    ),
                    Container(
                      color: pagePosition == 1
                          ? AppColors.primaryColor
                          : AppColors.subtitleTextLightBg,
                      width: 50,
                      height: 4,
                    ),
                    Container(
                      color: pagePosition == 2
                          ? AppColors.primaryColor
                          : AppColors.subtitleTextLightBg,
                      width: 50,
                      height: 4,
                    )
                  ],
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Padding(
                padding: EdgeInsets.only(bottom: 56),
                child: Column(
                  children: [
                    button.FilledButton(
                        buttonText: 'create an account',
                        onPressed: onCreateAccount),
                    SizedBox(height: 16.0),
                    button.OutlineButton(
                      buttonText: 'log in',
                      onPressed: onLogin,
                      outlineColor: AppColors.primaryColor,
                      buttonTextColor: AppColors.primaryColor,
                    ),
                  ],
                ),
              ),
            ]),
      )),
    );
  }

  onCreateAccount() {
    Navigator.pushNamed(context, joinWithOrg);
  }

  onLogin() {
    Navigator.pushNamed(context, loginPage);
  }
}
