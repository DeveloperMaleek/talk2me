import 'package:flutter/material.dart';
import 'package:talk2me/routes.dart';
import 'package:talk2me/src/components/buttons.dart';
import 'package:talk2me/src/components/inputfield.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

class EmployeeVerification extends StatefulWidget {
  const EmployeeVerification({Key? key}) : super(key: key);

  @override
  State<EmployeeVerification> createState() => _EmployeeVerificationState();
}

class _EmployeeVerificationState extends State<EmployeeVerification> {
  bool _passwordVisible = true;

  //  Text controllers declarations
  final TextEditingController _firstnameTextEditingController =
      TextEditingController();
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();

  //  Error texts
  bool showFirstNameError = false;
  bool showEmailError = false;
  bool showPasswordError = false;

  bool makeButtonActive = false;

  void passwordVisible() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  @override
  void initState() {
    setState(() {
      // Checks if first name is not empty and collapse error
      _firstnameTextEditingController.addListener(() {
        if (_firstnameTextEditingController.text.isNotEmpty) {
          showFirstNameError = false;
        } else {
          showFirstNameError = true;
        }
        if (_emailTextEditingController.text.isNotEmpty &&
            _passwordTextEditingController.text.isNotEmpty &&
            _firstnameTextEditingController.text.isNotEmpty) {
          makeButtonActive = true;
        }
      });

      // Checks if email is not empty and collapse error
      _emailTextEditingController.addListener(() {
        if (_emailTextEditingController.text.isNotEmpty) {
          showEmailError = false;
        } else {
          showEmailError = true;
        }
        if (_emailTextEditingController.text.isNotEmpty &&
            _passwordTextEditingController.text.isNotEmpty &&
            _firstnameTextEditingController.text.isNotEmpty) {
          makeButtonActive = true;
        }
      });

      // Checks if password is not empty and collapse error
      _passwordTextEditingController.addListener(() {
        if (_passwordTextEditingController.text.isNotEmpty) {
          showPasswordError = false;
        } else {
          showPasswordError = true;
        }
        if (_emailTextEditingController.text.isNotEmpty &&
            _passwordTextEditingController.text.isNotEmpty &&
            _firstnameTextEditingController.text.isNotEmpty) {
          makeButtonActive = true;
        }
      });
    });
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
              padding: const EdgeInsets.only(bottom: 56),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const HeadingFour(
                      text: "Talk2me Employees’ wellness support",
                      textColor: AppColors.textColorLightBg),
                  const SizedBox(height: 12),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: SubtitleOne(
                        text: "Talke2me cares about you as her employee.",
                        textColor: AppColors.subtitleTextLightBg),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.075),
                  InputField(
                    label: "First name",
                    placeholder: "first name",
                    controller: _firstnameTextEditingController,
                    errorText: showFirstNameError == true
                        ? "First name cannot be empty"
                        : null,
                  ),
                  const SizedBox(height: 16),
                  InputField(
                    suffixText: "@talk2me.com",
                    // inputType: TextInputType.emailAddress,
                    label: "Email address",
                    placeholder: "email address",
                    errorText: showEmailError == true
                        ? "Email field cannot be empty"
                        : null,
                    controller: _emailTextEditingController,
                  ),
                  const SizedBox(height: 16),
                  InputField(
                    label: "Password",
                    obscureText: true,
                    placeholder: "password",
                    errorText: showPasswordError == true
                        ? "Password cannot be empty"
                        : null,
                    controller: _passwordTextEditingController,
                    onSuffixTextTap: passwordVisible,
                  ),
                  const SizedBox(height: 24),
                  FilledButton(
                    buttonText: "create an account",
                    onPressed: onCreateAccount,
                    buttonColor: makeButtonActive == true
                        ? AppColors.primaryColor
                        : AppColors.subtitleTextDarkBg,
                    buttonTextColor: makeButtonActive == true
                        ? AppColors.textColorLightBg
                        : AppColors.outlineColor,
                  ),
                  const SizedBox(height: 16),
                  richTextSpan("Creating an account means you agree to the\n",
                      "Terms & Conditions ", "of using Talk2me")
                ],
              )),
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

  void onCreateAccount() {
    String firstName = _firstnameTextEditingController.text;
    String email = _emailTextEditingController.text;
    String password = _passwordTextEditingController.text;

    setState(() {
      // Checks if first name is empty and returns error
      if (firstName.isEmpty) {
        showFirstNameError = true;
      }

      // Checks if email is empty and returns error
      if (email.isEmpty) {
        showEmailError = true;
      }

      // Checks if password is empty and returns error
      if (password.isEmpty) {
        showPasswordError = true;
      }

      if (firstName.isNotEmpty && email.isNotEmpty && password.isNotEmpty) {
        Navigator.pushNamedAndRemoveUntil(
            context, accountSetup, (route) => false);
      }
    });
  }
}
