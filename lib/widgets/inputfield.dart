import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/text_styles.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.label,
    this.characterLength,
    this.errorText,
    this.obscureText = false,
    required this.placeholder,
    this.inputType,
    this.suffixText = "",
    this.onTap, required this.controller,
  }) : super(key: key);

  final String label;
  final String placeholder;
  final String? errorText;
  final int? characterLength;
  final bool obscureText;
  final TextInputType? inputType;
  final String suffixText;
  final Function()? onTap;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    String userInput;

    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BodyTextOne(text: label, textColor: AppColors.textColorLightBg),
        SizedBox(
          height: 8,
        ),
        TextFormField(
          controller: controller,
          keyboardType: inputType,
          obscureText: obscureText,
          maxLength: characterLength,
          decoration: InputDecoration(
            suffix: GestureDetector(
              onTap: onTap,
              child: BodyTextTwo(
                text: suffixText,
                textColor: AppColors.subtitleTextLightBg,
              ),
            ),
            contentPadding: const EdgeInsets.fromLTRB(16, 19, 16, 19),
            errorText: errorText,
            errorStyle: TextStyle(
                color: AppColors.errorColor,
                fontSize: MediaQuery.of(context).size.width * 0.04,
                fontWeight: FontWeight.w400),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide:
                    BorderSide(color: AppColors.primaryColor, width: 2)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.0),
                borderSide:
                    BorderSide(color: AppColors.primaryColor, width: 2)),
            hintText: placeholder,
            hintStyle: TextStyle(
                color: AppColors.subtitleTextLightBg,
                fontSize: MediaQuery.of(context).size.width * 0.04,
                fontWeight: FontWeight.w400),
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        )
      ],
    ));
  }
}
