import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:talk2me/theme/colors.dart';


class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0880000, size.height * 0.2953333);
    path0.quadraticBezierTo(size.width * 0.1805000, size.height * 0.0753333,
        size.width * 0.2566667, size.height * 0.0633333);
    path0.quadraticBezierTo(size.width * 0.5721667, size.height * -0.0330000,
        size.width * 0.8506667, size.height * 0.1313333);
    path0.cubicTo(
        size.width * 0.9670000,
        size.height * 0.2445000,
        size.width * 0.9703333,
        size.height * 0.5348333,
        size.width * 0.8333333,
        size.height * 0.9066667);
    path0.cubicTo(
        size.width * 0.7791667,
        size.height * 0.9605000,
        size.width * 0.6255000,
        size.height * 0.9721667,
        size.width * 0.5313333,
        size.height * 0.8873333);
    path0.cubicTo(
        size.width * 0.4516667,
        size.height * 0.7500000,
        size.width * 0.4606667,
        size.height * 0.6181667,
        size.width * 0.2233333,
        size.height * 0.5833333);
    path0.cubicTo(
        size.width * 0.0140000,
        size.height * 0.5838333,
        size.width * 0.0508333,
        size.height * 0.3828333,
        size.width * 0.0880000,
        size.height * 0.2953333);
    path0.close();

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint1.shader = ui.Gradient.linear(
        Offset(size.width * 0.01, size.height * 0.47),
        Offset(size.width * 0.97, size.height * 0.47),
        [Color(0xffb5ff7f), Color(0xff6bd171)],
        [0.00, 1.00]);

    Path path1 = Path();
    path1.moveTo(size.width * 0.0880000, size.height * 0.2953333);
    path1.quadraticBezierTo(size.width * 0.1805000, size.height * 0.0753333,
        size.width * 0.2566667, size.height * 0.0633333);
    path1.quadraticBezierTo(size.width * 0.5721667, size.height * -0.0330000,
        size.width * 0.8506667, size.height * 0.1313333);
    path1.cubicTo(
        size.width * 0.9670000,
        size.height * 0.2445000,
        size.width * 0.9703333,
        size.height * 0.5348333,
        size.width * 0.8333333,
        size.height * 0.9066667);
    path1.cubicTo(
        size.width * 0.7791667,
        size.height * 0.9605000,
        size.width * 0.6255000,
        size.height * 0.9721667,
        size.width * 0.5313333,
        size.height * 0.8873333);
    path1.cubicTo(
        size.width * 0.4516667,
        size.height * 0.7500000,
        size.width * 0.4606667,
        size.height * 0.6181667,
        size.width * 0.2233333,
        size.height * 0.5833333);
    path1.cubicTo(
        size.width * 0.0140000,
        size.height * 0.5838333,
        size.width * 0.0508333,
        size.height * 0.3828333,
        size.width * 0.0880000,
        size.height * 0.2953333);
    path1.close();

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class RPSCustomPainterTwo extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = ui.Color.fromARGB(255, 33, 243, 40)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0880000, size.height * 0.2953333);
    path0.quadraticBezierTo(size.width * 0.1805000, size.height * 0.0753333,
        size.width * 0.2566667, size.height * 0.0633333);
    path0.quadraticBezierTo(size.width * 0.5721667, size.height * -0.0330000,
        size.width * 0.8506667, size.height * 0.1313333);
    path0.cubicTo(
        size.width * 0.9670000,
        size.height * 0.2445000,
        size.width * 0.9703333,
        size.height * 0.5348333,
        size.width * 0.8333333,
        size.height * 0.9066667);
    path0.cubicTo(
        size.width * 0.7791667,
        size.height * 0.9605000,
        size.width * 0.6255000,
        size.height * 0.9721667,
        size.width * 0.5313333,
        size.height * 0.8873333);
    path0.cubicTo(
        size.width * 0.4516667,
        size.height * 0.7500000,
        size.width * 0.4606667,
        size.height * 0.6181667,
        size.width * 0.2233333,
        size.height * 0.5833333);
    path0.cubicTo(
        size.width * 0.0140000,
        size.height * 0.5838333,
        size.width * 0.0508333,
        size.height * 0.3828333,
        size.width * 0.0880000,
        size.height * 0.2953333);
    path0.close();

    canvas.drawPath(path0, paint0);

    Paint paint1 = Paint()
      ..color = const Color.fromARGB(255, 33, 150, 243)
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;
    paint1.shader = ui.Gradient.linear(
        Offset(size.width * 0.01, size.height * 0.47),
        Offset(size.width * 0.97, size.height * 0.47), [
      ui.Color.fromARGB(140, 180, 255, 127),
      ui.Color.fromARGB(125, 107, 209, 114)
    ], [
      0.00,
      1.00
    ]);

    Path path1 = Path();
    path1.moveTo(size.width * 0.0880000, size.height * 0.2953333);
    path1.quadraticBezierTo(size.width * 0.1805000, size.height * 0.0753333,
        size.width * 0.2566667, size.height * 0.0633333);
    path1.quadraticBezierTo(size.width * 0.5721667, size.height * -0.0330000,
        size.width * 0.8506667, size.height * 0.1313333);
    path1.cubicTo(
        size.width * 0.9670000,
        size.height * 0.2445000,
        size.width * 0.9703333,
        size.height * 0.5348333,
        size.width * 0.8333333,
        size.height * 0.9066667);
    path1.cubicTo(
        size.width * 0.7791667,
        size.height * 0.9605000,
        size.width * 0.6255000,
        size.height * 0.9721667,
        size.width * 0.5313333,
        size.height * 0.8873333);
    path1.cubicTo(
        size.width * 0.4516667,
        size.height * 0.7500000,
        size.width * 0.4606667,
        size.height * 0.6181667,
        size.width * 0.2233333,
        size.height * 0.5833333);
    path1.cubicTo(
        size.width * 0.0140000,
        size.height * 0.5838333,
        size.width * 0.0508333,
        size.height * 0.3828333,
        size.width * 0.0880000,
        size.height * 0.2953333);
    path1.close();

    canvas.drawPath(path1, paint1);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class ChatRPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint0 = Paint()
      ..color = AppColors.primaryColor
      ..style = PaintingStyle.fill
      ..strokeWidth = 3.72;

    Path path0 = Path();
    path0.moveTo(size.width * 0.0031250, 0);
    path0.lineTo(size.width * 0.0025000, size.height * 0.9840000);
    path0.lineTo(size.width * 0.9968750, size.height * 0.9800000);
    path0.quadraticBezierTo(size.width * 0.9968750, size.height * 0.3935000,
        size.width * 0.9968750, size.height * 0.1980000);
    path0.quadraticBezierTo(size.width * 0.7620312, size.height * 0.1985000,
        size.width * 0.0575000, size.height * 0.2000000);
    path0.lineTo(size.width * 0.0031250, 0);
    path0.close();

    canvas.drawPath(path0, paint0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
