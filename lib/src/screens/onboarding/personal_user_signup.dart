import 'package:flutter/material.dart';
import 'package:talk2me/routes.dart';
import 'package:talk2me/src/components/buttons.dart' as button;
import 'package:talk2me/src/components/inputfield.dart';
import 'package:talk2me/src/static/shapes.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

class PersonalUserSignup extends StatefulWidget {
  const PersonalUserSignup({Key? key}) : super(key: key);

  @override
  State<PersonalUserSignup> createState() => _PersonalUserSignupState();
}

class _PersonalUserSignupState extends State<PersonalUserSignup> {
  bool _passwordVisible = true;
  final TextEditingController _firstnameTextEditingController =
      TextEditingController();
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();

  void passwordVisible() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBarNavWithBackButton(iconColor: AppColors.textColorLightBg),
        body: SingleChildScrollView(
      child: Stack(children: [
        Container(
            height: MediaQuery.of(context).size.height,
            padding:
                const EdgeInsets.only(left: 16, right: 16, top: 36, bottom: 48),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: HeadingFour(
                      text: "We love \norganizations.",
                      textColor: AppColors.textColorLightBg),
                ),
                const SizedBox(height: 12),
                const SizedBox(height: 36),
                InputField(
                  label: "First name",
                  placeholder: "first name",
                  controller: _firstnameTextEditingController,
                ),
                const SizedBox(height: 16),
                InputField(
                  controller: _emailTextEditingController,
                  suffixText: "@talk2me.com",
                  // inputType: TextInputType.emailAddress,
                  label: "Email address",
                  placeholder: "email address",
                ),
                const SizedBox(height: 16),
                InputField(
                  controller: _passwordTextEditingController,
                  suffixText: _passwordVisible ? "Show" : "Hide",
                  onSuffixTextTap: () {
                    passwordVisible();
                  },
                  label: "Password",
                  obscureText: _passwordVisible,
                  placeholder: "password",
                ),
                const SizedBox(height: 24),
                button.FilledButton(
                    buttonText: "create an account",
                    onPressed: () {
                      Navigator.pushNamed(context, accountSetup);
                    }),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 2,
                        color: AppColors.subtitleTextDarkBg,
                        width: 200,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const ButtonText(
                        text: "or", textColor: AppColors.textColorLightBg),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Container(
                        height: 2,
                        color: AppColors.subtitleTextDarkBg,
                        width: 200,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                button.OutlineButton(
                    buttonText: "Continue with google",
                    buttonTextColor: AppColors.errorColor,
                    onPressed: () {},
                    outlineColor: AppColors.errorColor),
                const SizedBox(height: 16),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, loginPage);
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
                    Navigator.pushNamed(context, joinWithOrg);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      BodyTextOne(
                        text: "Join with organization code? ",
                        textColor: AppColors.subtitleTextLightBg,
                      ),
                      BodyTextOne(
                        text: "Continue here",
                        textColor: AppColors.textColorLightBg,
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                richTextSpan("Creating an account means you agree to the\n",
                    "Terms & Conditions ", "of using Talk2me")
              ],
            )),
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
      ]),
    ));
  }

  RichText richTextSpan(String one, String two, String three) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(children: [
          TextSpan(
              text: one,
              style: const TextStyle(
                  color: AppColors.textColorLightBg,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.25)),
          TextSpan(
              text: two,
              style: const TextStyle(
                  color: AppColors.primaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.25)),
          TextSpan(
              text: three,
              style: const TextStyle(
                  color: AppColors.textColorLightBg,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.25))
        ]));
  }
}
