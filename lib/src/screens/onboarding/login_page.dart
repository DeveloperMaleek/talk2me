import 'package:flutter/material.dart';
import 'package:talk2me/routes.dart';
import 'package:talk2me/src/components/buttons.dart' as buttons;
import 'package:talk2me/src/components/inputfield.dart';
import 'package:talk2me/src/static/shapes.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

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
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.only(top: 36, bottom: 56),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: HeadingThree(
                        text: "Smile, 😁\nbe happy.",
                        textColor: AppColors.textColorLightBg),
                  ),
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
                        onSuffixTextTap: passwordVisible,
                        label: "Password",
                        obscureText: _passwordVisible,
                        placeholder: "password",
                      ),
                      const SizedBox(height: 10),
                      SubtitleOne(
                          text: "Forgot password?",
                          textColor: AppColors.textColorLightBg)
                    ],
                  ),
                  const SizedBox(height: 24),
                  buttons.FilledButton(
                      buttonText: "Login", onPressed: onLoginButtonPressed),
                  const SizedBox(height: 16),
                  // Row(
                  //   children: [
                  //     Expanded(
                  //       child: Container(
                  //         height: 2,
                  //         color: AppColors.subtitleTextDarkBg,
                  //         width: 200,
                  //       ),
                  //     ),
                  //     const SizedBox(
                  //       width: 8,
                  //     ),
                  //     const ButtonText(
                  //         text: "or", textColor: AppColors.textColorLightBg),
                  //     const SizedBox(
                  //       width: 8,
                  //     ),
                  //     Expanded(
                  //       child: Container(
                  //         height: 2,
                  //         color: AppColors.subtitleTextDarkBg,
                  //         width: 200,
                  //       ),
                  //     ),
                  //   ],
                  // ),
                  // const SizedBox(height: 16),
                  // buttons.OutlineButton(
                  //     buttonText: "Continue with google",
                  //     buttonTextColor: AppColors.errorColor,
                  //     onPressed: () {},
                  //     outlineColor: AppColors.errorColor),
                  // const SizedBox(height: 24),
                  GestureDetector(
                    onTap: onLoginTextTapped,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        BodyTextOne(
                          text: "New to Talk2me? ",
                          textColor: AppColors.subtitleTextDarkBg,
                        ),
                        SubtitleOne(
                          text: "Create an Account",
                          textColor: AppColors.primaryColor,
                        )
                      ],
                    ),
                  ),
                ],
              )),
        ));
  }

  onLoginTextTapped() {
    Navigator.popAndPushNamed(context, joinWithOrg);
  }

  onLoginButtonPressed() {
    Navigator.pushNamedAndRemoveUntil(
        context, clientNavigation, (route) => false);
  }
}
