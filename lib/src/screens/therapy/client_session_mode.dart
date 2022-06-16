import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:talk2me/routes.dart';
import 'package:talk2me/src/components/appBar.dart';
import 'package:talk2me/src/services/callpage.dart';
import 'package:talk2me/src/utils/AppID.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:agora_rtc_engine/rtc_local_view.dart' as RtcLocalView;
import 'package:agora_rtc_engine/rtc_remote_view.dart' as RtcRemoteView;

// var appId = appID;
// // const token = "<-- Insert Token -->";
// const channel = "test";

class ClientSessionMode extends StatefulWidget {
  const ClientSessionMode({Key? key}) : super(key: key);

  @override
  State<ClientSessionMode> createState() => Client_SessionModeState();
}

class Client_SessionModeState extends State<ClientSessionMode> {
  // int? _remoteUid;
  // bool _localUserJoined = false;
  // late RtcEngine _engine;

  // @override
  // void initState() {
  //   super.initState();
  //   initAgora();
  // }

  // Future<void> initAgora() async {
  //   // retrieve permissions
  //   await [Permission.microphone, Permission.camera].request();

  //   //create the engine
  //   _engine = await RtcEngine.create(appId);
  //   await _engine.enableVideo();
  //   _engine.setEventHandler(
  //     RtcEngineEventHandler(
  //       joinChannelSuccess: (String channel, int uid, int elapsed) {
  //         print("local user $uid joined");
  //         setState(() {
  //           _localUserJoined = true;
  //         });
  //       },
  //       userJoined: (int uid, int elapsed) {
  //         print("remote user $uid joined");
  //         setState(() {
  //           _remoteUid = uid;
  //         });
  //       },
  //       userOffline: (int uid, UserOfflineReason reason) {
  //         print("remote user $uid left channel");
  //         setState(() {
  //           _remoteUid = null;
  //         });
  //       },
  //     ),
  //   );
  //   await _engine.joinChannel(null, channel, null, 0);
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.lightBackground,
        appBar: AppBarNavWithBackButton(
          iconColor: AppColors.textColorLightBg,
        ),
        // body: Stack(
        //   children: [
        //     Center(
        //       child: _remoteVideo(),
        //     ),
        //     Align(
        //       alignment: Alignment.topLeft,
        //       child: Container(
        //         width: 100,
        //         height: 150,
        //         child: Center(
        //           child: _localUserJoined
        //               ? RtcLocalView.SurfaceView()
        //               : CircularProgressIndicator(),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        body: CustomScrollView(slivers: [
          SliverFillRemaining(
              child: Column(children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.111),
                child: Column(
                  children: [
                    const HeadingSix(
                      text: 'Choose your session mode',
                      textColor: AppColors.textColorLightBg,
                      textAlignment: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SubtitleTwo(
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
                  BodyTextOne(
                      text:
                          "To get the best out of a therapy session we recommend the video call mode",
                      textColor: AppColors.textColorLightBg),
                  const SizedBox(
                    height: 24,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, callPage);
                    },
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
                          SubtitleOne(
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
                          SubtitleOne(
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
                          SubtitleOne(
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

  // Widget _remoteVideo() {
  //   if (_remoteUid != null) {
  //     return RtcRemoteView.SurfaceView(
  //       uid: _remoteUid!,
  //       channelId: channel,
  //     );
  //   } else {
  //     return Text(
  //       'Please wait for remote user to join',
  //       textAlign: TextAlign.center,
  //     );
  //   }
  // }
}
