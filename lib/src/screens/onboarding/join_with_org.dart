import 'package:flutter/material.dart';
import 'package:talk2me/routes.dart';
import 'package:talk2me/src/components/buttons.dart';
import 'package:talk2me/src/components/inputfield.dart';
import 'package:talk2me/src/static/shapes.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

class JoinWithOrganization extends StatefulWidget {
  const JoinWithOrganization({Key? key}) : super(key: key);

  @override
  State<JoinWithOrganization> createState() => _JoinWithOrganizationState();
}

class _JoinWithOrganizationState extends State<JoinWithOrganization> {
  int codelength = 6;
  bool errorTextOneVisible = false;
  bool errorTextTwoVisible = false;
  String errorTextOne = "This is the error text one";
  String errorTextTwo = "This is the error text two";

  TextEditingController codeTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 48),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      HeadingThree(
                          text: 'We love organizations \nthat care.',
                          textColor: AppColors.textColorLightBg),
                      SizedBox(height: 12),
                      SubtitleOne(
                          text: "Copy text is here",
                          textColor: AppColors.subtitleTextLightBg)
                    ],
                  ),
                  const SizedBox(
                    height: 64,
                  ),
                  Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          InputField(
                            controller: codeTextEditingController,
                            inputType: TextInputType.number,
                            label: "Company code",
                            placeholder: "company code",
                            characterLength: 6,
                          ),
                          Visibility(
                              visible: errorTextOneVisible,
                              child: BodyTextOne(
                                  text: errorTextOne,
                                  textColor: AppColors.errorColor)),
                          Visibility(
                              visible: errorTextTwoVisible,
                              child: BodyTextOne(
                                  text: errorTextTwo,
                                  textColor: AppColors.errorColor))
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      FilledButton(
                        buttonText: "Continue",
                        onPressed: () {
                          onSubmit();
                        },
                        buttonTextColor: codelength ==
                                codeTextEditingController.text.trim().length
                            ? AppColors.textColorPrimary
                            : AppColors.subtitleTextLightBg,
                        buttonColor: codelength ==
                                codeTextEditingController.text.trim().length
                            ? AppColors.primaryColor
                            : AppColors.primaryColor50,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, loginPage);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            BodyTextOne(
                              text: "Already have an account? ",
                              textColor: AppColors.subtitleTextLightBg,
                            ),
                            BodyTextOne(
                              text: "Login",
                              textColor: AppColors.textColorLightBg,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, personalSignUp);
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            BodyTextOne(
                              text: "Create a personal account? ",
                              textColor: AppColors.subtitleTextLightBg,
                            ),
                            BodyTextOne(
                              text: "Continue here",
                              textColor: AppColors.textColorLightBg,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
                top: -60,
                right: -60,
                child: Container(
                  child: CustomPaint(
                    size: Size(
                        250,
                        (250 * 1)
                            .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter: RPSCustomPainter(),
                  ),
                )),
            Positioned(
                top: -60,
                right: -60,
                child: Container(
                  child: CustomPaint(
                    size: Size(
                        280,
                        (280 * 1)
                            .toDouble()), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                    painter: RPSCustomPainterTwo(),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  void onSubmit() {
    String orgCode = codeTextEditingController.text.trim();
    int code = int.parse(orgCode);

    if (orgCode.isEmpty) {
      setState(() {
        errorTextOneVisible = true;
      });
    } else if (orgCode.length != codelength) {
      setState(() {
        errorTextTwoVisible = true;
      });
    }
  }
}
