import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/text_styles.dart';
import 'package:talk2me/widgets/buttons.dart';
import 'package:talk2me/widgets/inputfield.dart';

class EmployeeVerification extends StatefulWidget {
  const EmployeeVerification({Key? key}) : super(key: key);

  @override
  State<EmployeeVerification> createState() => _EmployeeVerificationState();
}

class _EmployeeVerificationState extends State<EmployeeVerification> {
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
        backgroundColor: AppColors.lightBackground,
        body: SingleChildScrollView(
          child: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 48),
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
                  const SizedBox(height: 36),
                  InputField(
                    label: "First name",
                    placeholder: "first name",
                    controller: _firstnameTextEditingController,
                  ),
                  const SizedBox(height: 16),
                  InputField(
                    suffixText: "@talk2me.com",
                    // inputType: TextInputType.emailAddress,
                    label: "Email address",
                    placeholder: "email address",
                    controller: _emailTextEditingController,
                  ),
                  const SizedBox(height: 16),
                  InputField(
                    label: "Password",
                    obscureText: true,
                    placeholder: "password",
                    controller: _passwordTextEditingController,
                    onTap: () {},
                  ),
                  const SizedBox(height: 24),
                  FilledButton(
                      buttonText: "create an account", onPressed: () {}),
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
}
