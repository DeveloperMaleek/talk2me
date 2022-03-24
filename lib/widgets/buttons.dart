import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/text_styles.dart' as text_content;

// How to use any of the buttons as an instance: copy and paste the code below

//import 'package:talk2me/widgets/buttons.dart' as button;

//always call it using button.classname()

//////////////////////////
///// Filled Button //////
//////////////////////////

class FilledButton extends StatelessWidget {
  FilledButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  final String buttonText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: text_content.ButtonText(
          text: buttonText,
          textColor: AppColors.textColorPrimary,
        ),
        style: ElevatedButton.styleFrom(
          maximumSize: Size.fromWidth(MediaQuery.of(context).size.width),
          elevation: 0,
          padding: const EdgeInsets.all(16),
          primary: AppColors.primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
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
      required this.outlineColor})
      : super(key: key);

  final String buttonText;
  final Color outlineColor;
  final Color buttonTextColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: OutlinedButton(
        onPressed: onPressed,
        child: text_content.ButtonText(
          text: buttonText,
          textColor: buttonTextColor,
        ),
        style: OutlinedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.all(16),
          side: BorderSide(
              color: outlineColor, width: 2, style: BorderStyle.solid),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        ),
      ),
    );
  }
}
