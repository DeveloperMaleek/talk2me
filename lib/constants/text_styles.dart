import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';

// How to use any of the texts as an instance: copy and paste the code below

//import 'package:talk2me/constants/text_styles.dart' as text_content;

//always call it using text_content.classname()

// class TextStylesGeneral {

// Color? textColor;
// String? text;
// int? fontSize;

//   TextStyle() {
//     color
//   }
// }

//////////////////////////
////// Heading One ///////
//////////////////////////

class HeadingOne extends StatelessWidget {
  const HeadingOne({Key? key, required this.text, required this.textColor})
      : super(key: key);

  final String text;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    //Used for headline 1 in pages
    TextStyle _textStyle = TextStyle(
        fontSize: 96,
        fontWeight: FontWeight.w400,
        letterSpacing: -1.5,
        color: textColor);

    return Text(
      text,
      style: _textStyle,
    );
  }
}

//////////////////////////
////// Heading Two ///////
//////////////////////////

class HeadingTwo extends StatelessWidget {
  const HeadingTwo({Key? key, required this.text, required this.textColor})
      : super(key: key);

  final String text;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    //Used for headline 2 in pages
    TextStyle _textStyle = TextStyle(
        fontSize: 60,
        fontWeight: FontWeight.w400,
        letterSpacing: -0.5,
        color: textColor);

    return Text(
      text,
      style: _textStyle,
    );
  }
}

//////////////////////////
////// Heading Three /////
//////////////////////////

class HeadingThree extends StatelessWidget {
  const HeadingThree({Key? key, required this.text, required this.textColor})
      : super(key: key);

  final String text;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    //Used for headline 3 in pages
    TextStyle _textStyle = TextStyle(
        fontSize: 48,
        fontWeight: FontWeight.w400,
        letterSpacing: 0,
        color: textColor);

    return Text(
      text,
      style: _textStyle,
    );
  }
}

//////////////////////////
////// Heading Four ///////
//////////////////////////

class HeadingFour extends StatelessWidget {
  const HeadingFour({Key? key, required this.text, required this.textColor})
      : super(key: key);

  final String text;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    //Used for headline 4 in pages
    TextStyle _textStyle = TextStyle(
        fontSize: 34,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: textColor);

    return Text(
      text,
      style: _textStyle,
    );
  }
}

//////////////////////////
////// Heading Five ///////
//////////////////////////

class HeadingFive extends StatelessWidget {
  const HeadingFive({Key? key, required this.text, required this.textColor})
      : super(key: key);

  final String text;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    //Used for headline 1 in pages
    TextStyle _textStyle = TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w500,
        letterSpacing: 0,
        color: textColor);

    return Text(
      text,
      style: _textStyle,
    );
  }
}

//////////////////////////
////// Heading Six ///////
//////////////////////////

class HeadingSix extends StatelessWidget {
  const HeadingSix({Key? key, required this.text, required this.textColor, this.textAlignment})
      : super(key: key);

  final String text;
  final Color textColor;
  final TextAlign? textAlignment;
  @override
  Widget build(BuildContext context) {
    //Used for headline 1 in pages
    TextStyle _textStyle = TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.15,
        color: textColor);

    return Text(
      text,
      style: _textStyle,
      textAlign: textAlignment,
    );
  }
}

//////////////////////////
////// Subtitle One ///////
//////////////////////////

class SubtitleOne extends StatelessWidget {
  const SubtitleOne(
      {Key? key,
      required this.text,
      required this.textColor,
      this.textAlignment})
      : super(key: key);

  final String text;
  final Color textColor;
  final TextAlign? textAlignment;
  @override
  Widget build(BuildContext context) {
    //Used for Big Text Subtitle in pages
    TextStyle _textStyle = TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        color: textColor);

    return Text(
      text,
      style: _textStyle,
      textAlign: textAlignment,
    );
  }
}

//////////////////////////
////// Subtitle Two ///////
//////////////////////////

class SubtitleTwo extends StatelessWidget {
  const SubtitleTwo(
      {Key? key,
      required this.text,
      required this.textColor,
      this.textAlignment})
      : super(key: key);

  final String text;
  final Color textColor;
  final TextAlign? textAlignment;

  @override
  Widget build(BuildContext context) {
    //Used for Small Text Subtitle in pages
    TextStyle _textStyle = TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.w500,
        letterSpacing: 0.1,
        color: textColor);

    return Text(
      text,
      style: _textStyle,
      textAlign: textAlignment,
    );
  }
}

//////////////////////////
////// Body One ///////
//////////////////////////

class BodyTextOne extends StatelessWidget {
  const BodyTextOne({Key? key, required this.text, required this.textColor, this.textAlignment})
      : super(key: key);

  final String text;
  final Color textColor;
  final TextAlign? textAlignment;
  
  @override
  Widget build(BuildContext context) {
    //Used for Big Body Text  in pages
    TextStyle _textStyle = TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.5,
        color: textColor);

    return Text(
      text,
      style: _textStyle,
      textAlign: textAlignment
      // textAlign: TextAlign.center,
    );
  }
}

//////////////////////////
////// Body Two ///////
//////////////////////////

class BodyTextTwo extends StatelessWidget {
  const BodyTextTwo({Key? key, required this.text, required this.textColor})
      : super(key: key);

  final String text;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    //Used for Small Body Text in pages
    TextStyle _textStyle = TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.25,
        color: textColor);

    return Text(
      text,
      style: _textStyle,
    );
  }
}

//////////////////////////
////// Button Text ///////
//////////////////////////

class ButtonText extends StatelessWidget {
  const ButtonText({Key? key, required this.text, required this.textColor})
      : super(key: key);

  final String text;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    //Used for Button in pages
    TextStyle _textStyle = TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        letterSpacing: 1.25,
        color: textColor);

    return Text(
      text.toUpperCase(),
      style: _textStyle,
    );
  }
}

//////////////////////////
////// Caption Text //////
//////////////////////////

class CaptionText extends StatelessWidget {
  const CaptionText({Key? key, required this.text, required this.textColor})
      : super(key: key);

  final String text;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    //Used for Big Text Subtitle in pages
    TextStyle _textStyle = TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        letterSpacing: 0.4,
        color: textColor);

    return Text(
      text,
      style: _textStyle,
    );
  }
}

//////////////////////////
////// Overline Text /////
//////////////////////////

class OverlineText extends StatelessWidget {
  const OverlineText({Key? key, required this.text, required this.textColor})
      : super(key: key);

  final String text;
  final Color textColor;
  @override
  Widget build(BuildContext context) {
    //Used for Big Text Subtitle in pages
    TextStyle _textStyle = TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        letterSpacing: 1.5,
        color: textColor);

    return Text(
      text.toUpperCase(),
      style: _textStyle,
    );
  }
}
