import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/widgets/buttons.dart';
import 'package:talk2me/constants/dimens.dart';
import 'package:talk2me/constants/font_family.dart';
import 'package:talk2me/constants/text_styles.dart' as text_content;

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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Therapy',
          style: TextStyle(
              color: AppColors.textColorLightBg,
              fontFamily: FontFamily.josefinSans,
              fontSize: Dimens.textSizeHeading5),
        ),
        actions: const <Widget>[],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                // Container(
                //   width: double.infinity,
                //   height: MediaQuery.of(context).size.height * 0.65,
                //   padding: const EdgeInsets.symmetric(horizontal: 30),
                //   decoration: const BoxDecoration(
                //     color: AppColors.lightBackground,
                //   ),
                // ),
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
                    ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
