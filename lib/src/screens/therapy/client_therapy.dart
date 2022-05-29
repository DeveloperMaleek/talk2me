import 'package:flutter/material.dart';
import 'package:talk2me/routes.dart';
import 'package:talk2me/src/components/appBar.dart';
import 'package:talk2me/src/components/buttons.dart';
import 'package:talk2me/src/components/sessions_list.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

List bookedSessions = [];

class ClientTherapy extends StatefulWidget {
  const ClientTherapy({Key? key}) : super(key: key);

  @override
  State<ClientTherapy> createState() => _ClientTherapyState();
}

class _ClientTherapyState extends State<ClientTherapy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.greenBackground,
        body: SingleChildScrollView(
            child: bookedSessions.isEmpty
                ? NoTherapyDataView()
                : DataTherapyView()));
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
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingSix(
                        text: "Upcoming Session",
                        textColor: AppColors.textColorLightBg),
                    SizedBox(
                      height: 16,
                    ),
                    UpcomingSession(
                      planOrStatusText: "Available",
                        buttonText: 'Start Session',
                        isTherapist: false,
                        onButtonPressed: () {}),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.fromLTRB(0, 16, 0, 84),
            decoration: const BoxDecoration(
              color: AppColors.greenBackground,
              borderRadius: const BorderRadius.only(
                  topLeft: const Radius.circular(30),
                  topRight: Radius.circular(30)),
            ),
            width: MediaQuery.of(context).size.width,
            child: bookedSessions.isNotEmpty
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
