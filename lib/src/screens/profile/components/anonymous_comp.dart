import 'package:flutter/material.dart';
import 'package:talk2me/src/components/buttons.dart';
import 'package:talk2me/src/components/inputfield.dart';
import 'package:talk2me/src/screens/profile/client_profile.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

class AnonymousComp extends StatefulWidget {
  const AnonymousComp({
    Key? key,
  }) : super(key: key);

  @override
  State<AnonymousComp> createState() => _AnonymousCompState();
}

class _AnonymousCompState extends State<AnonymousComp> {
  final TextEditingController _anonymousTextEditingController =
      TextEditingController();
  bool hideAnonymousSection = false;
  @override
  Widget build(BuildContext context) {
    return isAnonymous
        ? Visibility(
            visible: hideAnonymousSection == false,
            child: Container(
              decoration: BoxDecoration(
                  color: AppColors.greenBackground,
                  borderRadius: BorderRadius.circular(20)),
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputField(
                    controller: _anonymousTextEditingController,
                    label: "Display name",
                    placeholder: "Your anonymous display name",
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BodyTextOne(
                          text: "Display Avatar",
                          textColor: AppColors.textColorLightBg),
                      SizedBox(
                        height: 16,
                      ),
                      Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          spacing: 4,
                          runSpacing: 10,
                          children: [
                            avatarImage("assets/images/avatar-one.png"),
                            avatarImage("assets/images/avatar-two.png"),
                            avatarImage("assets/images/avatar-three.png"),
                            avatarImage("assets/images/avatar-four.png"),
                            avatarImage("assets/images/avatar-five.png"),
                            avatarImage("assets/images/avatar-six.png"),
                            avatarImage("assets/images/avatar-seven.png"),
                            avatarImage("assets/images/avatar-eight.png"),
                            avatarImage("assets/images/avatar-nine.png"),
                            avatarImage("assets/images/avatar-ten.png"),
                          ])
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  FilledButton(
                      buttonText: "Save",
                      onPressed: () {
                        setState(() {
                          hideAnonymousSection = true;
                        });
                      })
                ],
              ),
            ),
          )
        : Container();
  }

  GestureDetector avatarImage(String imageUrl) {
    return GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          imageUrl,
          width: 60,
          height: 60,
        ),
      ),
    );
  }
}

class AnonymousSettingsComp extends StatefulWidget {
  const AnonymousSettingsComp({
    Key? key,
  }) : super(key: key);

  @override
  State<AnonymousSettingsComp> createState() => _AnonymousSettingsCompState();
}

class _AnonymousSettingsCompState extends State<AnonymousSettingsComp> {
  final TextEditingController _anonymousTextEditingController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InputField(
          controller: _anonymousTextEditingController,
          label: "Display name",
          placeholder: "Your anonymous display name",
        ),
        SizedBox(
          height: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BodyTextOne(
                text: "Display Avatar", textColor: AppColors.textColorLightBg),
            SizedBox(
              height: 16,
            ),
            Wrap(
                alignment: WrapAlignment.spaceBetween,
                spacing: 4,
                runSpacing: 10,
                children: [
                  avatarImage("assets/images/avatar-one.png"),
                  avatarImage("assets/images/avatar-two.png"),
                  avatarImage("assets/images/avatar-three.png"),
                  avatarImage("assets/images/avatar-four.png"),
                  avatarImage("assets/images/avatar-five.png"),
                  avatarImage("assets/images/avatar-six.png"),
                  avatarImage("assets/images/avatar-seven.png"),
                  avatarImage("assets/images/avatar-eight.png"),
                  avatarImage("assets/images/avatar-nine.png"),
                  avatarImage("assets/images/avatar-ten.png"),
                ])
          ],
        )
      ],
    );
  }

  GestureDetector avatarImage(String imageUrl) {
    return GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          imageUrl,
          width: 60,
          height: 60,
        ),
      ),
    );
  }
}
