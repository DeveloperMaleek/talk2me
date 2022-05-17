// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/routes.dart';
import 'package:talk2me/widgets/buttons.dart';
import 'package:talk2me/constants/text_styles.dart';
import 'package:talk2me/widgets/appBar.dart';
import 'package:talk2me/widgets/sessions_list.dart';

class ClientTherapy extends StatefulWidget {
  const ClientTherapy({Key? key}) : super(key: key);

  @override
  State<ClientTherapy> createState() => _ClientTherapyState();
}

class _ClientTherapyState extends State<ClientTherapy> {
  final PageController _pageController = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.greenBackground,
        body: SingleChildScrollView(child: const NoTherapyDataView()));
  }
}

class DataTherapyView extends StatelessWidget {
  const DataTherapyView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          color: AppColors.lightBackground,
          child: Column(
            children: [
              AppBarNav(
                pageHeading: 'Therapy',
                buttonText: 'My Notes',
                buttonColor: AppColors.primaryColor,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border:
                        Border.all(color: AppColors.outlineColor, width: 2)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    HeadingSix(
                        text: "Upcoming Session",
                        textColor: AppColors.textColorLightBg),
                    SizedBox(
                      height: 16,
                    ),
                    UpcomingSession(),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.fromLTRB(0, 16, 0, 84),
            decoration: const BoxDecoration(
              color: AppColors.greenBackground,
              borderRadius: const BorderRadius.only(
                  topLeft: const Radius.circular(15),
                  topRight: Radius.circular(15)),
            ),
            width: MediaQuery.of(context).size.width,
            child: 1 == 1
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      HeadingSix(
                          text: "Other Sessions",
                          textColor: AppColors.textColorLightBg),
                      SizedBox(
                        height: 8,
                      ),
                      SubtitleOne(
                        text: "Your other sessions with Dr. Asamoah Jessie",
                        textColor: AppColors.textColorLightBg,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      OtherUpcomingSessions(),
                      OtherUpcomingSessions(),
                      OtherUpcomingSessions(),
                    ],
                  )
                : Container(
                    alignment: Alignment.center,
                    child: const BodyTextTwo(
                      text:
                          "You have no other sessions with \nDr. Asamoah Jessie.",
                      textColor: AppColors.textColorLightBg,
                      textAlignment: TextAlign.center,
                    ),
                  ))
      ],
    );
  }
}

class NoTherapyDataView extends StatelessWidget {
  const NoTherapyDataView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.5,
          color: AppColors.lightBackground,
          child: Column(
            children: [
              AppBarNav(
                pageHeading: 'Therapy',
                buttonText: 'My Notes',
                buttonColor: AppColors.primaryColor,
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 100),
                alignment: Alignment.center,
                child: const BodyTextOne(
                  text: 'Your upcoming therapy session \nwill appear here',
                  textColor: AppColors.textColorLightBg,
                  textAlignment: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        Container(
            height: MediaQuery.of(context).size.height * 0.5,
            padding:
                const EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 64),
            decoration: const BoxDecoration(
              color: AppColors.greenBackground,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: BodyTextOne(
                    text:
                        "You have no upcoming session. \n\nDo you want to book a session with a \ntherapist now? ",
                    textColor: AppColors.textColorLightBg,
                    textAlignment: TextAlign.center,
                  ),
                ),
                const SizedBox(
                  height: 48,
                ),
                FilledButton(
                    buttonText: 'Book a session',
                    onPressed: () {
                      Navigator.pushNamed(context, therapyBookSession);
                    }),
              ],
            ))
      ],
    );
  }
}
