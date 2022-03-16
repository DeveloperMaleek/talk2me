import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/dimens.dart';
import 'package:talk2me/constants/font_family.dart';

// How to use any of the buttons as an instance: copy and paste the code below

//import 'package:talk2me/widgets/buttons/green_filled_btn.dart' as button;

//always call it using button.classname()

//////////////////////////
///// Filled Button //////
//////////////////////////

class FilledButton extends StatelessWidget {
  const FilledButton(
      {Key? key, required this.buttonText, required this.onPressed})
      : super(key: key);

  final String buttonText;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(buttonText.toUpperCase()),
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.all(16),
          primary: AppColors.primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          onPrimary: AppColors.textColorPrimary,
          textStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: Dimens.textSizeButton,
            fontFamily: FontFamily.josefinSans,
          ),
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
        child: Text(buttonText.toUpperCase()),
        style: OutlinedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.all(16),
          primary: buttonTextColor,
          side: BorderSide(
              color: outlineColor, width: 2, style: BorderStyle.solid),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          textStyle: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: Dimens.textSizeButton,
            fontFamily: FontFamily.josefinSans,
          ),
        ),
      ),
    );
  }
}
