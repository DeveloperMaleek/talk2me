// import 'package:flutter/material.dart';
// import 'package:talk2me/constants/colors.dart';
// import 'package:talk2me/constants/strings.dart';
// import 'package:talk2me/utils/device_utils.dart';
// import 'package:talk2me/constants/dimens.dart';
// import 'package:talk2me/constants/font_family.dart';
// import 'package:talk2me/ui/onboarding/account_setup_steps/acount_setup_one.dart';
// import 'package:step_progress_indicator/step_progress_indicator.dart';

// class AccountSetup extends StatefulWidget {
//   const AccountSetup({Key? key}) : super(key: key);

//   @override
//   State<AccountSetup> createState() => _AccountSetupState();
// }

// class _AccountSetupState extends State<AccountSetup> {
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       backgroundColor: AppColors.lightBackground,
//       body: Padding(
//         padding: EdgeInsets.only(top: 40, right: 16, left: 16, bottom: 0),
//         child: StepProgressIndicator(
//           totalSteps: 4,
//           currentStep: 1,
//           selectedColor: AppColors.primaryColor,
//           unselectedColor: AppColors.subtitleTextDarkBg,
//           direction: Axis.horizontal,
//           progressDirection: TextDirection.ltr,
//           padding: 0,
//           },
//         ),
//       ),
//     );
//   }
// }
