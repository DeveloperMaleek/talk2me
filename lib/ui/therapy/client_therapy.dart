import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/routes.dart' as route;
import 'package:talk2me/widgets/buttons.dart';
import 'package:talk2me/constants/text_styles.dart' as text_content;
import 'package:talk2me/widgets/appBar.dart' as app_bar_btn;

class ClientTherapy extends StatefulWidget {
  const ClientTherapy({Key? key}) : super(key: key);

  @override
  State<ClientTherapy> createState() => _ClientTherapyState();
}

class _ClientTherapyState extends State<ClientTherapy> {
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
        body: CustomScrollView(
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
        ));
  }
}
