import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 56),
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
                          textColor: AppColors.primaryColor)
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.075),
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
                        onPressed: onSubmit,
                        buttonTextColor: codelength ==
                                codeTextEditingController.text.trim().length
                            ? AppColors.textColorPrimary
                            : AppColors.textColorDarkBg,
                        buttonColor: codelength ==
                                codeTextEditingController.text.trim().length
                            ? AppColors.primaryColor
                            : AppColors.subtitleTextDarkBg,
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      GestureDetector(
                        onTap: onLoginPressed,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            BodyTextOne(
                              text: "Already have an account? ",
                              textColor: AppColors.subtitleTextLightBg,
                            ),
                            SubtitleOne(
                              text: "Login",
                              textColor: AppColors.primaryColor,
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
                top: 280,
                right: 100,
                child:
                    Container(child: Image.asset("assets/images/heart.png"))),
          ],
        ),
      ),
    );
  }

  // Functon to direct user to login page
  onLoginPressed() {
    Navigator.pushNamed(context, loginPage);
  }

  // Function to submit organization's code
  onSubmit() {
    String orgCode = codeTextEditingController.text.trim();
    // int code = int.parse(orgCode);

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
