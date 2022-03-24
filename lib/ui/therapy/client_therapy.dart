import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/strings.dart';
import 'package:talk2me/routes.dart' as route;
import 'package:talk2me/ui/navigation/bottom_navigation.dart';
import 'package:talk2me/widgets/buttons.dart';
import 'package:talk2me/constants/text_styles.dart' as text_content;
import 'package:talk2me/widgets/appBar.dart' as app_bar_btn;
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
    return Scaffold(
        backgroundColor: AppColors.lightBackground,
        appBar: app_bar_btn.AppBarNav(
          pageHeading: 'Therapy',
          buttonText: 'My Notes',
          buttonColor: AppColors.primaryColor,
        ),
        //
        // floatingActionButton: FloatingBottomAppBar(
        //   pageController: _pageController,
        // ),
        body: Consumer<booloi>(
          builder: (context, booloi, child) => booloi.noSession
              ? CustomScrollView(
                  slivers: <Widget>[
                    SliverFillRemaining(
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              child: Align(
                                alignment: Alignment.center,
                                child: text_content.BodyTextOne(
                                  text:
                                      'Your upcoming therapy session \nwill appear here',
                                  textColor: AppColors.textColorLightBg,
                                  textAlignment: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                          Container(
                              height: MediaQuery.of(context).size.height * 0.5,
                              padding: EdgeInsets.only(
                                  left: 24, right: 24, top: 24, bottom: 64),
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
                                  Align(
                                    alignment: Alignment.center,
                                    child: const text_content.BodyTextOne(
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
                                        Navigator.pushNamed(
                                            context, route.therapyBookSession);
                                      }),
                                ],
                              ))
                        ],
                      ),
                    ),
                  ],
                )
              : _haveSession(),
        ));
  }

  Widget _haveSession() {
    return CustomScrollView(slivers: [
      SliverFillRemaining(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(16),
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: AppColors.outlineColor, width: 2)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  text_content.HeadingSix(
                      text: "Upcoming Session",
                      textColor: AppColors.textColorLightBg),
                  SizedBox(
                    height: 16,
                  ),
                  UpcomingSession(),
                ],
              ),
            ),
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: AppColors.greenBackground,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      text_content.HeadingSix(
                          text: "Other Sessions",
                          textColor: AppColors.textColorLightBg),
                      SizedBox(
                        height: 8,
                      ),
                      text_content.SubtitleOne(
                        text: "Your other sessions with Dr. Asamoah Jessie",
                        textColor: AppColors.textColorLightBg,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      OtherUpcomingSessions(),
                      OtherUpcomingSessions(),
                      OtherUpcomingSessions(),
                      OtherUpcomingSessions(),
                    ],
                  )),
            )
          ],
        ),
      ),
    ]);
  }
}
