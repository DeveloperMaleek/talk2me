import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/widgets/buttons.dart' as button;
import 'package:talk2me/constants/text_styles.dart' as text_content;
import 'package:talk2me/widgets/appBar.dart' as app_bar_btn;
import 'package:talk2me/widgets/range.dart';
import 'package:talk2me/routes.dart' as route;

class BookTherapy2 extends StatefulWidget {
  const BookTherapy2({Key? key}) : super(key: key);

  @override
  State<BookTherapy2> createState() => _BookTherapy1State();
}

class _BookTherapy1State extends State<BookTherapy2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.lightBackground,
        appBar: app_bar_btn.AppBarNavWithBackButton(
          iconColor: AppColors.textColorLightBg,
        ),
        body: CustomScrollView(slivers: [
          SliverFillRemaining(
              child: Column(children: [
            const ProgressIndicatorBar(
              totalSteps: 4,
              currentStep: 2,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Expanded(
              child: const text_content.HeadingSix(
                text:
                    'Would you like to take a quick\nsurvey to let us know how to\nhelp you better?',
                textColor: AppColors.textColorLightBg,
                textAlignment: TextAlign.center,
              ),
            ),
            Container(
              width: double.infinity,
              // height: MediaQuery.of(context).size.height * 0.65,
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 24, bottom: 48),
              decoration: const BoxDecoration(
                color: AppColors.greenBackground,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Column(
                children: [
                  button.OutlineButton(
                      buttonText: 'Yes',
                      buttonTextColor: AppColors.textColorLightBg,
                      onPressed: () {},
                      outlineColor: AppColors.primaryColor),
                  const SizedBox(
                    height: 16,
                  ),
                  button.OutlineButton(
                      buttonText: 'No',
                      buttonTextColor: AppColors.textColorLightBg,
                      onPressed: () {
                        Navigator.pushNamed(context, route.therapySelection);
                      },
                      outlineColor: AppColors.primaryColor),
                ],
              ),
            )
          ]))
        ]));
  }
}
