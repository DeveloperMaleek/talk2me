import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:supercharged/supercharged.dart';
import 'package:talk2me/theme/colors.dart';

class TypeWriterBox extends StatefulWidget {
  @override
  _TypeWriterBoxState createState() => _TypeWriterBoxState();
}

class _TypeWriterBoxState extends State<TypeWriterBox> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PlayAnimation<double>(
        duration: 400.milliseconds,
        tween: 0.0.tweenTo(80.0),
        builder: (context, child, height) {
          return PlayAnimation<double>(
            duration: 1600.milliseconds,
            delay: 500.milliseconds,
            tween: 2.0.tweenTo(300.0),
            builder: (context, child, width) {
              return Container(
                child: typewriter(width)
                    ? TypeWriterText(
                        "We are with you in \nevery step of the \njourney.")
                    : Container(),
              );
            },
          );
        },
      ),
    );
  }

  bool typewriter(double width) => width > 15;
}

class TypeWriterText extends StatelessWidget {
  final String text;
  TypeWriterText(this.text);

  @override
  Widget build(BuildContext context) {
    return PlayAnimation<int>(
        duration: 4000.milliseconds,
        delay: 1000.milliseconds,
        tween: 0.tweenTo(text.length),
        builder: (context, child, textLength) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(text.substring(0, textLength),
                  style: GoogleFonts.raleway(
                      fontSize: MediaQuery.of(context).size.width * 0.08,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.25,
                      color: AppColors.lightBackground)),
              _blinkingCursor()
            ],
          );
        });
  }

  Widget _blinkingCursor() {
    return LoopAnimation(
        builder: (context, child, oneOrZero) {
          return Opacity(opacity: oneOrZero == 1 ? 1.0 : 0.0);
        },
        duration: 800.milliseconds,
        tween: 0.tweenTo(1));
  }
}
