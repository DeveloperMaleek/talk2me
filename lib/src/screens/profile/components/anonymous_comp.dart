import 'package:flutter/material.dart';
import 'package:talk2me/src/components/buttons.dart';
import 'package:talk2me/src/components/inputfield.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

class AnonymousComp extends StatefulWidget {
  const AnonymousComp({Key? key}) : super(key: key);

  @override
  State<AnonymousComp> createState() => _AnonymousCompState();
}

class _AnonymousCompState extends State<AnonymousComp> {
  bool isAnonymous = false;

  final TextEditingController _anonymousTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: AppColors.primaryColor25,
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BodyTextOne(
                  text: "Set profile to anonymous",
                  textColor: AppColors.textColorLightBg),
              Switch(
                  value: isAnonymous,
                  materialTapTargetSize: MaterialTapTargetSize.padded,
                  inactiveThumbColor: AppColors.subtitleTextLightBg,
                  activeTrackColor: AppColors.primaryColor75,
                  activeColor: AppColors.primaryColor,
                  onChanged: (bool value) {
                    setState(() {
                      isAnonymous = value;
                    });
                  })
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Visibility(
          visible: isAnonymous,
          child: InputField(
            controller: _anonymousTextEditingController,
            inputType: TextInputType.emailAddress,
            label: "Display name",
            placeholder: "Your name when you switch to anonymous",
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Visibility(
          visible: isAnonymous,
          child: Column(
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
                  spacing: 10,
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
        ),
        SizedBox(
          height: 16,
        ),
        Visibility(
            visible: isAnonymous,
            child: FilledButton(buttonText: "Save", onPressed: () {}))
      ],
    );
  }

  GestureDetector avatarImage(String imageUrl) {
    return GestureDetector(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(
          imageUrl,
          width: 64,
          height: 64,
        ),
      ),
    );
  }
}
