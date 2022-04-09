import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/text_styles.dart';
import 'package:talk2me/widgets/appBar.dart';

class ClientSafeSpace extends StatefulWidget {
  const ClientSafeSpace({Key? key}) : super(key: key);

  @override
  State<ClientSafeSpace> createState() => _ClientSafeSpaceState();
}

class _ClientSafeSpaceState extends State<ClientSafeSpace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      appBar: AppBarNav(pageHeading: "Safe Space"),
      body: Container(
        padding: EdgeInsets.only(left: 16, right: 16, bottom: 150),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeadingThree(
                text: "Having a \n“not so good” \nday? 😥",
                textColor: AppColors.textColorLightBg),
            SizedBox(
              height: 24,
            ),
            SubtitleOne(
                text: "Talk to someone about it.",
                textColor: AppColors.subtitleTextLightBg),
            SizedBox(
              height: 24,
            ),
            Row(
              children: [
                GestureDetector(child: _chatMode("Video", Icons.videocam)),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                    child: _chatMode("Audio", Icons.settings_voice)),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(child: _chatMode("Chat", Icons.message))
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _chatMode(String type, IconData iconType) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.275,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          border: Border.all(color: AppColors.primaryColor, width: 2),
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          SubtitleOne(text: type, textColor: AppColors.textColorLightBg),
          SizedBox(
            height: 16,
          ),
          Icon(
            iconType,
            size: 24,
            color: AppColors.textColorLightBg,
          )
        ],
      ),
    );
  }
}
