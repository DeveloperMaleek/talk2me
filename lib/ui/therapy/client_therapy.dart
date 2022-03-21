import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
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
      body: ListView(children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                text_content.BodyTextOne(
                  text: 'Your upcoming therapy session will appear here',
                  textColor: AppColors.textColorLightBg,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height * 0.35,
                      padding: const EdgeInsets.symmetric(horizontal: 30),
                      decoration: const BoxDecoration(
                        color: AppColors.greenBackground,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      child: ListView(
                        padding: const EdgeInsets.only(top: 0),
                        children: [
                          const SizedBox(
                            height: 45,
                          ),
                          const text_content.BodyTextOne(
                              text:
                                  "You have no upcoming session. Do you want to book a session with a therapist now? ",
                              textColor: AppColors.textColorLightBg),
                          const SizedBox(
                            height: 32,
                          ),
                          FilledButton(
                              buttonText: 'Book a session', onPressed: () {}),
                        ],
                      ),
                    ),
                  ],
                ),
              ]),
        ),
      ]),
    );
  }
}
