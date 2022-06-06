import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:talk2me/src/components/appBar.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';
import 'package:talk2me/src/components/buttons.dart' as button;

class BookTherapy1 extends StatefulWidget {
  const BookTherapy1({Key? key}) : super(key: key);

  @override
  State<BookTherapy1> createState() => _BookTherapy1State();
}

class _BookTherapy1State extends State<BookTherapy1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.greenBackground,
      body: SingleChildScrollView(
        // padding: EdgeInsets.all(16),
        child: Stack(
          children: [
            Container(
                padding: EdgeInsets.only(top: 64),
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: SvgPicture.asset(
                  "assets/images/test.svg",
                  alignment: Alignment.topCenter,
                )),
            Positioned(
              child: AppBarNavWithBackButton(
                iconColor: AppColors.textColorLightBg,
              ),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                    height: 410,
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.only(
                        top: 48, right: 24, left: 24, bottom: 64),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        color: AppColors.primaryColor),
                    child: Column(children: [
                      SubtitleOne(
                        text:
                            "Please read each statement, and kindly indicate how much the statement applied to you over the past week. \n\nThere are no right or wrong answers. Do not spend too much time on any statement.",
                        textColor: AppColors.textColorLightBg,
                        textAlignment: TextAlign.center,
                      ),
                      SizedBox(
                        height: 48,
                      ),
                      button.FilledButton(
                        buttonText: "Start test 👍🏽",
                        onPressed: () {},
                        buttonColor: AppColors.textColorLightBg,
                        buttonTextColor: AppColors.lightBackground,
                      )
                    ])))
          ],
        ),
      ),
    );
  }
}
