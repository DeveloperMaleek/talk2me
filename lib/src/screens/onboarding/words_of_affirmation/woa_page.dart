import 'dart:async';

import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/progressIndicator.dart';
import 'package:talk2me/constants/text_styles.dart';
import 'package:talk2me/routes.dart';
import 'package:talk2me/views/onboarding/words_of_affirmation/woa_one.dart';
import 'package:talk2me/views/onboarding/words_of_affirmation/woa_three.dart';
import 'package:talk2me/views/onboarding/words_of_affirmation/woa_two.dart';
import 'package:talk2me/widgets/buttons.dart';

List<Widget> bodyContent = [
  const WordsOfAffirmationOne(),
  const WordsOfAffirmationTwo(),
  const WordsOfAffirmationThree()
];

class WordsOfAffirmation extends StatefulWidget {
  const WordsOfAffirmation({Key? key}) : super(key: key);

  @override
  State<WordsOfAffirmation> createState() => _WordsOfAffirmationState();
}

class _WordsOfAffirmationState extends State<WordsOfAffirmation> {
  // @override
  // void initState() {
  //   startTime();
  //   super.initState();
  // }

  int pagePosition = 0;
  PageController _pageController = PageController();
  bool woaVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.lightBackground,
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 52, 16, 0),
          child: Column(
            children: [
              _progressIndicator(context),
              const SizedBox(
                height: 48,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height - 120,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: bodyContent.length,
                  itemBuilder: ((context, index) {
                    return BodyContent(
                      index: index,
                    );
                  }),
                  onPageChanged: (index) {
                    setState(() {
                      pagePosition = index;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: pagePosition != 2
            ? FloatingActionButtonLocation.endFloat
            : FloatingActionButtonLocation.centerFloat,
        floatingActionButton: pagePosition != 2
            ? Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Visibility(
                      visible: woaVisible,
                      child: const BodyTextTwo(
                          text: "Have you said these words to yourself?",
                          textColor: AppColors.textColorLightBg)),
                  const SizedBox(
                    width: 16,
                  ),
                  FloatingActionButton(
                      onPressed: () {
                        onFloatingButtonPressed();
                      },
                      elevation: 0,
                      backgroundColor: AppColors.primaryColor,
                      child: const Icon(Icons.keyboard_arrow_right,
                          color: AppColors.textColorPrimary)),
                ],
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: FilledButton(
                    buttonText: "proceed to home",
                    onPressed: () {
                      onProceedButton();
                    })));
  }

  Widget _progressIndicator(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleProgressIndicator(
            totalLength: 3,
            indicatorColor: pagePosition >= 0
                ? AppColors.primaryColor
                : AppColors.subtitleTextLightBg,
          ),
          SingleProgressIndicator(
            totalLength: 3,
            indicatorColor: pagePosition >= 1
                ? AppColors.primaryColor
                : AppColors.subtitleTextLightBg,
          ),
          SingleProgressIndicator(
            totalLength: 3,
            indicatorColor: pagePosition >= 2
                ? AppColors.primaryColor
                : AppColors.subtitleTextLightBg,
          ),
        ],
      ),
    );
  }

  // startTime() async {
  //   var duration = Duration(milliseconds: 0);
  //   return Timer(duration, onFloatingButtonPressed);
  // }

  void onFloatingButtonPressed() {
    setState(() {
      woaVisible = true;
    });
    Future.delayed(Duration(milliseconds: 3000), () {
      setState(() {
        _pageController.animateToPage(++pagePosition,
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeOutSine);

        woaVisible = false;
      });
    });
  }

  void onProceedButton() {
    Navigator.pushNamedAndRemoveUntil(
        context, clientNavigation, (route) => false);
  }
}

class BodyContent extends StatelessWidget {
  const BodyContent({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: bodyContent[index],
    );
  }
}
