import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/ui/therapy/session_therapist_preview.dart';
import 'package:talk2me/widgets/buttons/buttons.dart';
import 'package:talk2me/constants/dimens.dart';
import 'package:talk2me/constants/font_family.dart';

class ClientTherapy extends StatefulWidget {
  const ClientTherapy({Key? key}) : super(key: key);

  @override
  State<ClientTherapy> createState() => _ClientTherapyState();
}

class _ClientTherapyState extends State<ClientTherapy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: <Widget>[
          FilledButton(
              buttonText: 'My Notes',
              onPressed: () => {
                    SessionTherapistPreview(),
                    ButtonStyle(
                      alignment: Alignment.topRight,
                    
                    ),
                     
                  }),
        ],
      ),
      backgroundColor: AppColors.lightBackground,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Text('Your upcoming therapy session will appear here'),
            ),
            Container(
              decoration: BoxDecoration(
                color: AppColors.greenBackground,
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(15),
                  topEnd: Radius.circular(15),
                ),
              ), //BorderRadius.Only) ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                      'You have no upcoming session.Do you want to book a session with a therapist now?'),
                  FilledButton(
                      buttonText: 'Book a session',
                      onPressed: () => {
                            SessionTherapistPreview(),
                          }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
