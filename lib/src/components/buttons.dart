import 'package:flutter/material.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

// How to use any of the buttons as an instance: copy and paste the code below

//import 'package:talk2me/widgets/buttons.dart' as button;

//always call it using button.classname()

//////////////////////////
///// Filled Button //////
//////////////////////////

class FilledButton extends StatelessWidget {
  FilledButton({
    Key? key,
    this.buttonColor = AppColors.primaryColor,
    this.buttonTextColor = AppColors.textColorPrimary,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  final String buttonText;
  final Color? buttonColor;
  final Color buttonTextColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: ButtonText(
        text: buttonText,
        textColor: buttonTextColor,
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(MediaQuery.of(context).size.width, 50),
        elevation: 0,
        padding: const EdgeInsets.all(16),
        primary: buttonColor,
        enableFeedback: false,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}

//////////////////////////
//// Outlined Button /////
//////////////////////////

class OutlineButton extends StatelessWidget {
  const OutlineButton(
      {Key? key,
      required this.buttonText,
      required this.buttonTextColor,
      required this.onPressed,
      required this.outlineColor,
      this.backgroundColor})
      : super(key: key);

  final String buttonText;
  final Color outlineColor;
  final Color buttonTextColor;
  final Color? backgroundColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: ButtonText(
        text: buttonText,
        textColor: buttonTextColor,
      ),
      style: OutlinedButton.styleFrom(
        backgroundColor: backgroundColor,
        fixedSize: Size(MediaQuery.of(context).size.width, 50),
        elevation: 0,
        padding: const EdgeInsets.all(16),
        side:
            BorderSide(color: outlineColor, width: 2, style: BorderStyle.solid),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
    );
  }
}
