import 'package:flutter/material.dart';

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
        width: MediaQuery.of(context).size.width / totalLength,
        height: 4,
      ),
    );
  }
}
