import 'package:flutter/material.dart';
import 'package:talk2me/routes.dart';
import 'package:talk2me/src/components/buttons.dart' as buttons;
import 'package:talk2me/src/components/inputfield.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _passwordVisible = true;

  bool makeButtonActive = false;

  //  Error text
  bool showEmailError = false;
  bool showPasswordError = false;

  // Text Editing controller
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
  void initState() {
    setState(() {
      _emailTextEditingController.addListener(() {
        if (_emailTextEditingController.text.isNotEmpty) {
          showEmailError = false;
        } else {
          showEmailError = true;
        }

        if (_emailTextEditingController.text.isNotEmpty &&
            _passwordTextEditingController.text.isNotEmpty) {
          makeButtonActive = true;
        }
      });

      _passwordTextEditingController.addListener(() {
        if (_passwordTextEditingController.text.isNotEmpty) {
          showPasswordError = false;
        } else {
          showPasswordError = true;
        }

        if (_emailTextEditingController.text.isNotEmpty &&
            _passwordTextEditingController.text.isNotEmpty) {
          makeButtonActive = true;
        }
      });
    });
    // TODO: implement initState
    super.initState();
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
                    errorText:
                        showEmailError == true ? "Email cannot be empty" : null,
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
                        errorText: showPasswordError == true
                            ? "Password cannot be empty"
                            : null,
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
                    buttonText: "Login",
                    onPressed: onLoginButtonPressed,
                    buttonColor: makeButtonActive == true
                        ? AppColors.primaryColor
                        : AppColors.subtitleTextDarkBg,
                    buttonTextColor: makeButtonActive == true
                        ? AppColors.textColorLightBg
                        : AppColors.textColorDarkBg,
                  ),

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
                    onTap: onCreateAccountTextTapped,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        BodyTextOne(
                          text: "New to Talk2me? ",
                          textColor: AppColors.subtitleTextLightBg,
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

  onCreateAccountTextTapped() {
    Navigator.popAndPushNamed(context, joinWithOrg);
  }

  onLoginButtonPressed() {
    String email = _emailTextEditingController.text;
    String password = _passwordTextEditingController.text;

    // Function to validate email and password
    setState(() {
      if (email.isEmpty) {
        showEmailError = true;
      }

      if (password.isEmpty) {
        showPasswordError = true;
      }

      if (email.isNotEmpty & password.isNotEmpty) {
        Navigator.pushNamedAndRemoveUntil(
            context, clientNavigation, (route) => false);
      }
    });
  }
}
