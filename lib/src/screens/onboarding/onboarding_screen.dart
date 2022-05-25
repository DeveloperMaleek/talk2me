import 'package:flutter/material.dart';
import 'package:talk2me/routes.dart';
import 'package:talk2me/src/components/buttons.dart' as button;
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

List onBoardingContent = [
  //  Content one
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Image.asset(
        "assets/images/image-bg-1.jpg",
        width: 250,
        height: 250,
      ),
      SizedBox(height: 24.0),
      HeadingSix(
        text: 'Get access to professional \ntherapists in minutes.',
        textAlignment: TextAlign.center,
        textColor: AppColors.textColorLightBg,
      ),
      SizedBox(height: 16.0),
      SubtitleOne(
        text: 'We are here to help you',
        textColor: AppColors.primaryColor,
      ),
    ],
  ),

  //  Content two
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Image.asset(
        "assets/images/image-bg-2.jpg",
        width: 250,
        height: 250,
      ),
      SizedBox(height: 24.0),
      HeadingSix(
        text: 'Get access to professional \ntherapists in minutes.',
        textAlignment: TextAlign.center,
        textColor: AppColors.textColorLightBg,
      ),
      SizedBox(height: 16.0),
      SubtitleOne(
        text: 'We are here to help you',
        textColor: AppColors.primaryColor,
      ),
    ],
  ),

  //  Content three
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Image.asset(
        "assets/images/image-bg-3.jpg",
        width: 250,
        height: 250,
      ),
      SizedBox(height: 24.0),
      HeadingSix(
        text: 'Get access to professional \ntherapists in minutes.',
        textAlignment: TextAlign.center,
        textColor: AppColors.textColorLightBg,
      ),
      SizedBox(height: 16.0),
      SubtitleOne(
        text: 'We are here to help you',
        textColor: AppColors.primaryColor,
      ),
    ],
  ),
];

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int pagePosition = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      body: SingleChildScrollView(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 400,
                    child: PageView.builder(
                      itemCount: onBoardingContent.length,
                      itemBuilder: (context, index) {
                        return onBoardingContent[index];
                      },
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
                    padding: EdgeInsets.only(bottom: 48),
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
