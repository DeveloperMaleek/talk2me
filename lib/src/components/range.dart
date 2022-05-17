import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:talk2me/theme/colors.dart';

class ProgressIndicatorBar extends StatelessWidget {
  const ProgressIndicatorBar(
      {Key? key, required this.totalSteps, required this.currentStep})
      : super(key: key);
  final int totalSteps;
  final int currentStep;

  @override
  Widget build(BuildContext context) {
    return StepProgressIndicator(
      totalSteps: totalSteps,
      currentStep: currentStep,
      selectedColor: AppColors.primaryColor,
      unselectedColor: AppColors.subtitleTextLightBg,
      direction: Axis.horizontal,
      progressDirection: TextDirection.ltr,
      padding: 0,
    );
  }
}
