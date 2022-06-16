import 'package:flutter/material.dart';
import 'package:talk2me/routes.dart';
import 'package:talk2me/src/components/buttons.dart' as button;
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

class DiagnosticTestResult extends StatefulWidget {
  const DiagnosticTestResult({Key? key}) : super(key: key);

  @override
  State<DiagnosticTestResult> createState() => _DiagnosticTestResultState();
}

class _DiagnosticTestResultState extends State<DiagnosticTestResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        // height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.only(bottom: 64),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              margin: EdgeInsets.only(bottom: 24),
              padding: EdgeInsets.all(20),
              color: AppColors.greenBackground,
              child: Center(
                child: HeadingSix(
                  text: "Your test score Indicate a tone of\n Anxiety",
                  textAlignment: TextAlign.center,
                  textColor: AppColors.textColorLightBg,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SubtitleOne(
                      text: "What this means:",
                      textColor: AppColors.textColorLightBg),
                  SizedBox(
                    height: 10,
                  ),
                  BodyTextOne(
                      text:
                          "Ipsum dolor sit amet, consectetur adipiscing elit. Interdum ante fusce fames vel aenean molestie augue dignissim. Habitant mattis pretium cras erat mattis sed in.",
                      textColor: AppColors.textColorLightBg),
                  SizedBox(
                    height: 44,
                  ),
                  button.FilledButton(
                      buttonText: "Proceed to book therapy",
                      onPressed: () {
                        Navigator.pushNamed(context, therapySelection);
                      }),
                  SizedBox(
                    height: 16,
                  ),
                  button.OutlineButton(
                      buttonText: "Back to home",
                      outlineColor: AppColors.primaryColor,
                      buttonTextColor: AppColors.primaryColor,
                      onPressed: () {}),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: CaptionText(
                text:
                    "The DASS-21 should not be used to replace a face to face clinical interview. If you are experiencing significant emotional difficulties you should contact your GP for a referral to a qualified professional.\n\nThe Depression, Anxiety and Stress Scale - 21 Items (DASS-21) is a set of three self-report scales designed to measure the emotional states of depression, anxiety and stress. ",
                textColor: AppColors.textColorLightBg,
              ),
            )
          ],
        ),
      )),
    );
  }
}
