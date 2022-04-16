import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/widgets/appBar.dart' as app_bar_btn;
import 'package:talk2me/constants/text_styles.dart' as text_content;
import 'package:talk2me/widgets/buttons.dart' as button;

class ClientSessionMode extends StatefulWidget {
  const ClientSessionMode({Key? key}) : super(key: key);

  @override
  State<ClientSessionMode> createState() => Client_SessionModeState();
}

class Client_SessionModeState extends State<ClientSessionMode> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.lightBackground,
        appBar: app_bar_btn.AppBarNavWithBackButton(
          iconColor: AppColors.textColorLightBg,
        ),
        body: CustomScrollView(slivers: [
          SliverFillRemaining(
              child: Column(children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Column(
                  children: [
                    const text_content.HeadingSix(
                      text: 'Choose your session mode',
                      textColor: AppColors.textColorLightBg,
                      textAlignment: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    text_content.SubtitleTwo(
                      text:
                          'This is not default, you can change it anytime in-session',
                      textColor: AppColors.subtitleTextLightBg,
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: double.infinity,
              // height: MediaQuery.of(context).size.height * 0.65,
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 24, bottom: 48),
              decoration: const BoxDecoration(
                color: AppColors.greenBackground,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Column(
                children: [
                  text_content.BodyTextOne(
                      text:
                          "To get the best out of a therapy session we recommend the video call mode",
                      textColor: AppColors.textColorLightBg),
                  const SizedBox(
                    height: 24,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColors.primaryColor, width: 2),
                          borderRadius: BorderRadius.circular(15)),
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          text_content.SubtitleOne(
                              text: "Video",
                              textColor: AppColors.textColorLightBg),
                          Icon(
                            Icons.videocam,
                            size: 24,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColors.primaryColor, width: 2),
                          borderRadius: BorderRadius.circular(15)),
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          text_content.SubtitleOne(
                              text: "Audio",
                              textColor: AppColors.textColorLightBg),
                          Icon(
                            Icons.settings_voice,
                            size: 24,
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColors.primaryColor, width: 2),
                          borderRadius: BorderRadius.circular(15)),
                      padding: EdgeInsets.all(16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          text_content.SubtitleOne(
                              text: "Chat",
                              textColor: AppColors.textColorLightBg),
                          Icon(
                            Icons.message,
                            size: 24,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ]))
        ]));
  }
}
