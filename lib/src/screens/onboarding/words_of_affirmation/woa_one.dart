import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:talk2me/src/static/shapes.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

class WordsOfAffirmationOne extends StatefulWidget {
  const WordsOfAffirmationOne({Key? key}) : super(key: key);

  @override
  State<WordsOfAffirmationOne> createState() => _WordsOfAffirmationOneState();
}

class _WordsOfAffirmationOneState extends State<WordsOfAffirmationOne> {
  bool popupAffirmation = false;

  @override
  void initState() {
    startTime();
    super.initState();
  }

  startTime() async {
    var duration = Duration(milliseconds: 500);
    return Timer(duration, startDelay);
  }

  startDelay() async {
    Future.delayed(Duration(milliseconds: 1500), () {
      setState(() {
        popupAffirmation = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(top: 64),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: SvgPicture.asset("assets/images/sleep_analysis.svg",
                  width: 300, height: 200),
            ),
            const SizedBox(
              height: 24,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HeadingFour(
                    text: "Sleeping Better",
                    textColor: AppColors.textColorLightBg),
                const SizedBox(
                  height: 10,
                ),
                const SubtitleOne(
                    text: 'Tell yourself this:',
                    textColor: AppColors.textColorLightBg),
                const SizedBox(
                  height: 6,
                ),
                const SubtitleOne(
                    text:
                        'I am going to ensure that I sleep better henceforth.',
                    textColor: AppColors.textColorLightBg),
                Visibility(
                  visible: popupAffirmation,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      CustomPaint(
                        size: Size(328, (328 * 0.3125).toDouble()),
                        painter: ChatRPSCustomPainter(),
                      ),
                      Container(
                          width: 350,
                          margin: const EdgeInsets.only(top: 16),
                          padding: const EdgeInsets.only(left: 16, right: 32),
                          child: const BodyTextTwo(
                              text:
                                  "Say these words of affirmation loudly or in your mind. What is important is that you say them to yourself.",
                              textColor: AppColors.textColorLightBg))
                    ],
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
