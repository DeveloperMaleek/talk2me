import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/widgets/buttons.dart' as button;
import 'package:talk2me/constants/text_styles.dart' as text_content;
import 'package:talk2me/widgets/appBar.dart' as app_bar_btn;
import 'package:talk2me/widgets/range.dart';

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
        onPressed: () {
          // Navigator.pop(context);
        },
      ),
      body: Container(
        // height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const ProgressIndicatorBar(
              totalSteps: 2,
              currentStep: 2,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Expanded(
              child: ListView(children: <Widget>[
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      const text_content.BodyTextOne(
                        text:
                            'Would you like to take a quick\n survey to let us know how to\n help you better?',
                        textColor: AppColors.textColorLightBg,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.1,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            width: double.infinity,
                            height: MediaQuery.of(context).size.height * 0.65,
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            decoration: const BoxDecoration(
                              color: AppColors.greenBackground,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15),
                              ),
                            ),
                            child: ListView(
                              padding: const EdgeInsets.only(top: 0),
                              children: [
                                const SizedBox(
                                  height: 48,
                                ),
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
                                    onPressed: () {},
                                    outlineColor: AppColors.primaryColor),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ]),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
