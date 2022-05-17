import 'package:flutter/material.dart';
import 'package:talk2me/routes.dart' as route;
import 'package:talk2me/src/components/buttons.dart' as button;
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';
import 'package:flutter_svg/flutter_svg.dart';

List onBoardingImages = [
  "assets/images/image-bg-1.jpg",
  "assets/images/image-bg-2.jpg",
  "assets/images/image-bg-3.jpg"
];

List onBoardingContent = [
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const <Widget>[
      HeadingFive(
        text: 'Get access to professional therapists in minutes.',
        textAlignment: TextAlign.center,
        textColor: AppColors.textColorDarkBg,
      ),
      SizedBox(height: 16.0),
      SubtitleOne(
        text: 'Subcopy Text specific to client',
        textColor: AppColors.primaryColor,
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const <Widget>[
      HeadingFive(
        text: 'Copy Text specific to users',
        textAlignment: TextAlign.center,
        textColor: AppColors.textColorDarkBg,
      ),
      SizedBox(height: 16.0),
      SubtitleOne(
        text: 'Subcopy Text specific to client',
        textColor: AppColors.textColorDarkBg,
      ),
    ],
  ),
  Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: const <Widget>[
      HeadingFive(
        text: 'Copy Text specific to users',
        textAlignment: TextAlign.center,
        textColor: AppColors.textColorDarkBg,
      ),
      SizedBox(height: 16.0),
      SubtitleOne(
        text: 'Subcopy Text specific to client',
        textColor: AppColors.textColorDarkBg,
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
      body: SingleChildScrollView(
          child: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: PageView.builder(
              itemCount: onBoardingContent.length,
              itemBuilder: (context, index) {
                return ScrollableBodyWidget(
                  index: index,
                );
              },
              onPageChanged: (index) {
                setState(() {
                  pagePosition = index;
                });
                // print(index);
              },
            ),
          ),
          Positioned(
            left: 0,
            top: 48,
            right: 0,
            bottom: 24,
            child: Container(
              height: MediaQuery.of(context).size.height,
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/images/talk2me_logo_white.svg",
                    width: 100,
                  ),
                  Column(
                    children: [
                      button.FilledButton(
                        buttonText: "Create an Account",
                        onPressed: () {
                          Navigator.pushNamed(context, route.personalSignUp);
                        },
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      button.OutlineButton(
                          buttonText: "Join with organization code",
                          buttonTextColor: AppColors.primaryColor,
                          outlineColor: AppColors.primaryColor,
                          onPressed: () {
                            Navigator.pushNamed(context, route.joinWithOrg);
                          }),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, route.loginPage);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            BodyTextOne(
                              text: "Already have an account? ",
                              textColor: AppColors.subtitleTextDarkBg,
                            ),
                            BodyTextOne(
                              text: "Login",
                              textColor: AppColors.primaryColor,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
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
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }

  // Widget ProgressScroll(int index) {
  //   return
  // }
}

class ScrollableBodyWidget extends StatelessWidget {
  const ScrollableBodyWidget({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            height: MediaQuery.of(context).size.height,
            child: Image.asset(onBoardingImages[index],
                colorBlendMode: BlendMode.darken,
                color: AppColors.darkBackground.withOpacity(0.8),
                alignment: Alignment.center,
                fit: BoxFit.fitHeight)),
        Positioned(
            child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: onBoardingContent[index],
          ),
        )),
      ],
    );
  }
}
