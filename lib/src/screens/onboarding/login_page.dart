import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/shapes.dart';
import 'package:talk2me/constants/text_styles.dart';
import 'package:talk2me/routes.dart';
import 'package:talk2me/widgets/appBar.dart';
import 'package:talk2me/widgets/buttons.dart' as button;
import 'package:talk2me/widgets/inputfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = true;
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
        backgroundColor: AppColors.lightBackground,
        // appBar: AppBarNavWithBackButton(iconColor: AppColors.textColorLightBg),
        body: SingleChildScrollView(
          child: Stack(children: [
            Container(
                height: MediaQuery.of(context).size.height,
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 36, bottom: 48),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: HeadingFour(
                          text: "Smile \nbe happy.",
                          textColor: AppColors.textColorLightBg),
                    ),
                    const SizedBox(height: 12),
                    const SizedBox(height: 36),
                    InputField(
                      controller: _emailTextEditingController,
                      inputType: TextInputType.emailAddress,
                      label: "Email address",
                      placeholder: "email address",
                    ),
                    const SizedBox(height: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        InputField(
                          controller: _passwordTextEditingController,
                          suffixText: _passwordVisible ? "Show" : "Hide",
                          onTap: () {
                            passwordVisible();
                          },
                          label: "Password",
                          obscureText: _passwordVisible,
                          placeholder: "password",
                        ),
                        const SizedBox(height: 10),
                        BodyTextOne(
                            text: "Remind me my password",
                            textColor: AppColors.textColorLightBg)
                      ],
                    ),
                    const SizedBox(height: 24),
                    button.FilledButton(
                        buttonText: "Login",
                        onPressed: () {
                          onLoginButtonPressed();
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
                    const SizedBox(height: 24),
                    GestureDetector(
                      onTap: () {
                        Navigator.popAndPushNamed(context, onboardingScreen);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          BodyTextOne(
                            text: "New to Talk2me? ",
                            textColor: AppColors.subtitleTextDarkBg,
                          ),
                          BodyTextOne(
                            text: "Create an Account",
                            textColor: AppColors.textColorLightBg,
                          )
                        ],
                      ),
                    ),
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

  void onLoginButtonPressed() {
    Navigator.pushNamedAndRemoveUntil(
        context, clientNavigation, (route) => false);
  }
}
