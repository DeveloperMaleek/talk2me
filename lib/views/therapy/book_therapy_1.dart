import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/progressIndicator.dart';
import 'package:talk2me/routes.dart' as route;
import 'package:talk2me/widgets/buttons.dart' as button;
import 'package:talk2me/constants/text_styles.dart' as text_content;
import 'package:talk2me/widgets/appBar.dart';
import 'package:talk2me/widgets/range.dart';

class BookTherapy1 extends StatefulWidget {
  const BookTherapy1({Key? key}) : super(key: key);

  @override
  State<BookTherapy1> createState() => _BookTherapy1State();
}

class _BookTherapy1State extends State<BookTherapy1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarNavWithBackButton(
        iconColor: AppColors.textColorLightBg,
      ),
      body: SingleChildScrollView(
        // padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ProgressIndicatorBar(totalSteps: 5, currentStep: 1),
            ),
            const SizedBox(
              height: 200,
              child: Align(
                alignment: Alignment.center,
                child: text_content.HeadingSix(
                  text:
                      'What do you want help with by\nbooking this therapy session?',
                  textColor: AppColors.textColorLightBg,
                  textAlignment: TextAlign.center,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height - 280,
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
                      buttonText: 'Anxiety',
                      buttonTextColor: AppColors.textColorLightBg,
                      onPressed: () {
                        Navigator.pushNamed(context, route.therapyBookSession2);
                      },
                      outlineColor: AppColors.primaryColor),
                  const SizedBox(
                    height: 16,
                  ),
                  button.OutlineButton(
                      buttonText: 'Tackling stress',
                      buttonTextColor: AppColors.textColorLightBg,
                      onPressed: () {
                        Navigator.pushNamed(context, route.therapyBookSession2);
                      },
                      outlineColor: AppColors.primaryColor),
                  const SizedBox(
                    height: 16,
                  ),
                  button.OutlineButton(
                      buttonText: 'Managing Anger',
                      buttonTextColor: AppColors.textColorLightBg,
                      onPressed: () {
                        Navigator.pushNamed(context, route.therapyBookSession2);
                      },
                      outlineColor: AppColors.primaryColor),
                  const SizedBox(
                    height: 16,
                  ),
                  button.OutlineButton(
                      buttonText: 'Depression',
                      buttonTextColor: AppColors.textColorLightBg,
                      onPressed: () {
                        Navigator.pushNamed(context, route.therapyBookSession2);
                      },
                      outlineColor: AppColors.primaryColor),
                  const SizedBox(
                    height: 16,
                  ),
                  button.OutlineButton(
                      buttonText: 'Eating disorder',
                      buttonTextColor: AppColors.textColorLightBg,
                      onPressed: () {
                        Navigator.pushNamed(context, route.therapyBookSession2);
                      },
                      outlineColor: AppColors.primaryColor),
                  const SizedBox(
                    height: 16,
                  ),
                  button.OutlineButton(
                      buttonText: 'HeartBreak',
                      buttonTextColor: AppColors.textColorLightBg,
                      onPressed: () {
                        Navigator.pushNamed(context, route.therapyBookSession2);
                      },
                      outlineColor: AppColors.primaryColor),
                  const SizedBox(
                    height: 16,
                  ),
                  button.OutlineButton(
                      buttonText: 'Addiction',
                      buttonTextColor: AppColors.textColorLightBg,
                      onPressed: () {
                        Navigator.pushNamed(context, route.therapyBookSession2);
                      },
                      outlineColor: AppColors.primaryColor),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
