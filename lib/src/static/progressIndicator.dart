import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';

class SingleProgressIndicator extends StatelessWidget {
  const SingleProgressIndicator(
      {Key? key, required this.totalLength, required this.indicatorColor})
      : super(key: key);

  final int totalLength;
  final Color indicatorColor;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: indicatorColor,
        width: MediaQuery.of(context).size.height / totalLength,
        height: 4,
      ),
    );
  }
}