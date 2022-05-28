import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:talk2me/src/components/buttons.dart';
import 'package:talk2me/src/components/inputfield.dart';
import 'package:talk2me/src/screens/profile/components/anonymous_comp.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';
import "package:images_picker/images_picker.dart";
import 'dart:async';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _passwordVisible = false;

  final TextEditingController _passwordTextEditingController =
      TextEditingController();

  void passwordVisible() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  bool allowEmailNotification = true;

  bool allowPushNotification = true;

  List language = [];

  List interest = [];

  List responseTextState = [false, false, false, false, false, false];

  bool showGoalError = false;

  int _characterLength = 300;

  String? path;

  final TextEditingController _firstnameTextEditingController =
      TextEditingController();

  final TextEditingController _lastnameTextEditingController =
      TextEditingController();

  final TextEditingController _emailTextEditingController =
      TextEditingController();

  final TextEditingController _uploadImageTextEditingController =
      TextEditingController();

  final TextEditingController _bioTextEditingController =
      TextEditingController();

  final TextEditingController _languageTextEditingController =
      TextEditingController();

  final TextEditingController _interestTextEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColors.lightBackground,
          leading: IconButton(
            icon: Icon(
              Icons.keyboard_arrow_left,
              color: AppColors.textColorLightBg,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          elevation: 0,
          title: _appTitle()),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: getImage,
              child: Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.all(24),
                decoration: BoxDecoration(
                    color: AppColors.darkBackground,
                    borderRadius: BorderRadius.circular(50),
                    border:
                        Border.all(color: AppColors.primaryColor, width: 2)),
                child: Stack(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/images/avatar-three.png",
                      width: 100,
                      height: 100,
                    ),
                  ),
                  Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.photo_camera,
                          size: 18,
                        ),
                      ))
                ]),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              decoration: _customBoxDecoration(),
              padding: EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputField(
                    controller: _firstnameTextEditingController,
                    label: "First name",
                    placeholder: "first name",
                  ),
                  spacingSmall,
                  InputField(
                    controller: _lastnameTextEditingController,
                    label: "Last name",
                    placeholder: "last name",
                  ),
                  spacingSmall,
                  InputField(
                    controller: _emailTextEditingController,
                    label: "Email address",
                    placeholder: "malik@talk2me.com",
                  ),

                  // spacingSmall,
                  // Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     InputField(
                  //       characterLength: _characterLength,
                  //       maxLines: 5,
                  //       controller: _bioTextEditingController,
                  //       label: "Brief about you",
                  //       placeholder: "Tell people a little about yourself",
                  //       inputType: TextInputType.multiline,
                  //     ),
                  //     BodyTextTwo(
                  //         text: "300 characters",
                  //         textColor: AppColors.textColorLightBg)
                  //   ],
                  // ),
                ],
              ),
            ),

            // Goal section
            Container(
              padding: EdgeInsets.all(16),
              margin: EdgeInsets.symmetric(vertical: 10),
              // padding: EdgeInsets.all(16),
              decoration: _customBoxDecoration(),
              child: AnonymousSettingsComp(),
            ),

            // Cover image
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(16),
              decoration: _customBoxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BodyTextOne(
                      text: "Goals", textColor: AppColors.textColorLightBg),
                  Visibility(
                    visible: showGoalError,
                    child: SubtitleTwo(
                        text: "You cannot select more than 3 goals at once.",
                        textColor: AppColors.errorColor),
                  ),
                  spacingMedium,
                  Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: [
                      responseContainer(0, "Sleeping Better"),
                      responseContainer(1, "Managing Anger"),
                      responseContainer(3, "Tackling Stress"),
                      responseContainer(4, "Work-Life Balance"),
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BodyTextOne(
                      text: "Profile Cover Image",
                      textColor: AppColors.textColorLightBg),
                  spacingBig,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: SizedBox(
                      width: 640,
                      child: Wrap(
                          alignment: WrapAlignment.spaceBetween,
                          spacing: 10,
                          runSpacing: 10,
                          children: [
                            profileCoverImage("assets/images/avatar-two.png"),
                            profileCoverImage("assets/images/avatar-two.png"),
                            profileCoverImage("assets/images/avatar-three.png"),
                            profileCoverImage("assets/images/avatar-four.png"),
                            profileCoverImage("assets/images/avatar-five.png"),
                            profileCoverImage("assets/images/avatar-six.png"),
                            profileCoverImage("assets/images/avatar-seven.png"),
                            profileCoverImage("assets/images/avatar-eight.png"),
                            profileCoverImage("assets/images/avatar-nine.png"),
                            profileCoverImage("assets/images/avatar-ten.png"),
                          ]),
                    ),
                  )
                ],
              ),
            ),

            // //Language section
            // Container(
            //   margin: EdgeInsets.symmetric(vertical: 10),
            //   padding: EdgeInsets.all(16),
            //   decoration: _customBoxDecoration(),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       InputField(
            //         iconData: Icons.add_circle,
            //         onSuffixIconTap: () {
            //           setState(() {
            //             language.add(_languageTextEditingController.text);
            //           });
            //           _languageTextEditingController.clear();
            //         },
            //         controller: _languageTextEditingController,
            //         label: "Language",
            //         placeholder: "What languages do you speak?",
            //       ),
            //       spacingMedium,
            //       Visibility(
            //         visible: language.isNotEmpty,
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             CaptionText(
            //                 text: 'Click on any option to remove',
            //                 textColor: AppColors.textColorLightBg),
            //             spacingSmall,
            //             Container(
            //                 width: MediaQuery.of(context).size.width,
            //                 padding: EdgeInsets.all(10),
            //                 decoration: BoxDecoration(
            //                     color: AppColors.primaryColor,
            //                     borderRadius: BorderRadius.circular(15)),
            //                 child: Wrap(spacing: 10, runSpacing: 10, children: [
            //                   for (int i = 0; i < language.length; i++)
            //                     textAreaContainer(i, "${language[i]}", () {
            //                       language.removeAt(i);
            //                     })
            //                 ]))
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            // //Interest section
            // Container(
            //   margin: EdgeInsets.symmetric(vertical: 10),
            //   padding: EdgeInsets.all(16),
            //   decoration: _customBoxDecoration(),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       InputField(
            //         iconData: Icons.add_circle,
            //         onSuffixIconTap: () {
            //           setState(() {
            //             interest.add(_interestTextEditingController.text);
            //           });
            //           _interestTextEditingController.clear();
            //         },
            //         controller: _interestTextEditingController,
            //         label: "Expertise",
            //         placeholder: "What's your focus area?",
            //       ),
            //       spacingMedium,
            //       Visibility(
            //         visible: interest.isNotEmpty,
            //         child: Column(
            //           crossAxisAlignment: CrossAxisAlignment.start,
            //           children: [
            //             CaptionText(
            //                 text: 'Click on any option to remove',
            //                 textColor: AppColors.textColorLightBg),
            //             spacingSmall,
            //             Container(
            //                 width: MediaQuery.of(context).size.width,
            //                 padding: EdgeInsets.all(10),
            //                 decoration: BoxDecoration(
            //                     color: AppColors.primaryColor,
            //                     borderRadius: BorderRadius.circular(15)),
            //                 child: Wrap(spacing: 10, runSpacing: 10, children: [
            //                   for (int i = 0; i < interest.length; i++)
            //                     textAreaContainer(i, "${interest[i]}", () {
            //                       interest.removeAt(i);
            //                     })
            //                 ]))
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            // //Notification section
            // Container(
            //   padding: EdgeInsets.all(16),
            //   margin: EdgeInsets.symmetric(vertical: 10),
            //   decoration: _customBoxDecoration(),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       BodyTextOne(
            //           text: "Notifications",
            //           textColor: AppColors.textColorLightBg),
            //       spacingMedium,
            //       Container(
            //         padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            //         width: MediaQuery.of(context).size.width,
            //         decoration: BoxDecoration(
            //             border:
            //                 Border.all(color: AppColors.primaryColor, width: 2),
            //             borderRadius: BorderRadius.circular(15)),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             BodyTextOne(
            //                 text: "Email notification",
            //                 textColor: AppColors.textColorLightBg),
            //             emailToggleSwitch(),
            //           ],
            //         ),
            //       ),
            //       spacingMedium,
            //       Container(
            //         padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            //         width: MediaQuery.of(context).size.width,
            //         decoration: BoxDecoration(
            //             border:
            //                 Border.all(color: AppColors.primaryColor, width: 2),
            //             borderRadius: BorderRadius.circular(15)),
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             BodyTextOne(
            //                 text: "Push notification",
            //                 textColor: AppColors.textColorLightBg),
            //             pushToggleSwitch(),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
// Security
            Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              padding: EdgeInsets.all(16),
              decoration: _customBoxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BodyTextOne(
                      text: "Security", textColor: AppColors.textColorLightBg),
                  spacingMedium,
                  GestureDetector(
                    onTap: changePassword,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: BodyTextOne(
                          text: "Change Password",
                          textColor: AppColors.textColorLightBg),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration _customBoxDecoration() {
    return BoxDecoration(
        color: AppColors.greenBackground,
        borderRadius: BorderRadius.circular(20));
  }

  changePassword() {
    Get.bottomSheet(
        Container(
          width: MediaQuery.of(context).size.width,
          height: 350,
          padding: EdgeInsets.fromLTRB(16, 24, 16, 48),
          decoration: BoxDecoration(color: AppColors.greenBackground),
          child: Column(
            children: [
              InputField(
                controller: _passwordTextEditingController,
                suffixText: _passwordVisible ? "Show" : "Hide",
                onSuffixTextTap: () {
                  passwordVisible();
                },
                label: "Password",
                obscureText: _passwordVisible,
                placeholder: "password",
              ),
              spacingMedium,
              InputField(
                controller: _passwordTextEditingController,
                suffixText: _passwordVisible ? "Show" : "Hide",
                onSuffixTextTap: () {
                  passwordVisible();
                },
                label: "Password",
                obscureText: _passwordVisible,
                placeholder: "password",
              ),
              spacingBig,
              FilledButton(buttonText: "Change Password", onPressed: () {})
            ],
          ),
        ),
        backgroundColor: AppColors.greenBackground,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15), topRight: Radius.circular(15))),
        clipBehavior: Clip.antiAlias,
        isScrollControlled: true,
        ignoreSafeArea: true);
  }

  // Switch emailToggleSwitch() {
  //   return Switch(
  //       value: allowEmailNotification,
  //       materialTapTargetSize: MaterialTapTargetSize.padded,
  //       inactiveThumbColor: AppColors.subtitleTextLightBg,
  //       activeTrackColor: AppColors.primaryColor,
  //       activeColor: AppColors.primaryColor,
  //       onChanged: (bool value) {
  //         setState(() {
  //           allowEmailNotification = value;
  //           // ClientProfile().isAnonymous = value;
  //         });
  //       });
  // }

  // Switch pushToggleSwitch() {
  //   return Switch(
  //       value: allowPushNotification,
  //       materialTapTargetSize: MaterialTapTargetSize.padded,
  //       inactiveThumbColor: AppColors.subtitleTextLightBg,
  //       activeTrackColor: AppColors.primaryColor,
  //       activeColor: AppColors.primaryColor,
  //       onChanged: (bool value) {
  //         setState(() {
  //           allowPushNotification = value;
  //           // ClientProfile().isAnonymous = value;
  //         });
  //       });
  // }

  SizedBox spacingBig = const SizedBox(
    height: 24,
  );
  SizedBox spacingMedium = const SizedBox(
    height: 16,
  );
  SizedBox spacingSmall = const SizedBox(
    height: 12,
  );

  GestureDetector textAreaContainer(
      int index, String languageText, Function onTap) {
    return GestureDetector(
      onTap: onTap(),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: AppColors.greenBackground,
            border: Border.all(color: AppColors.primaryColor, width: 1),
            borderRadius: BorderRadius.circular(15)),
        child: BodyTextTwo(
            text: languageText, textColor: AppColors.textColorLightBg),
      ),
    );
  }

  GestureDetector responseContainer(int index, String responseText) {
    return GestureDetector(
      onTap: () {
        selectItem(index);
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: responseTextState[index] ? AppColors.primaryColor : null,
            border: responseTextState[index]
                ? Border.all(color: AppColors.primaryColor, width: 1)
                : Border.all(color: AppColors.subtitleTextLightBg, width: 1),
            borderRadius: BorderRadius.circular(15)),
        child: BodyTextTwo(
            text: responseText, textColor: AppColors.textColorLightBg),
      ),
    );
  }

  GestureDetector profileCoverImage(String imageUrl) {
    return GestureDetector(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          imageUrl,
          width: 120,
          height: 80,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  void selectItem(int position) {
    setState(() {
      if (responseTextState.where((element) => element == true).length < 3) {
        responseTextState[position] = !responseTextState[position];
      } else {
        responseTextState[position] = false;
        showGoalError = true;
        Future.delayed(Duration(milliseconds: 3000), () {
          setState(() {
            showGoalError = false;
          });
        });
      }
      ;
    });
  }

  Future getImage() async {
    List<Media>? res = await ImagesPicker.pick(
      count: 1,
      pickType: PickType.image,
      language: Language.System,
      maxTime: 30,
      // maxSize: 500,
      cropOpt: CropOption(
        // aspectRatio: CropAspectRatio.wh16x9,
        cropType: CropType.circle,
      ),
    );
    if (res != null) {
      print(res.map((e) => e.path).toList());
      setState(() {
        path = res[0].thumbPath;
      });
      // bool status = await ImagesPicker.saveImageToAlbum(File(res[0]?.path));
      // print(status);
    }
  }

  Widget _appTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: HeadingSix(
              text: "Settings", textColor: AppColors.textColorLightBg),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              primary: AppColors.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
            ),
            onPressed: () {},
            child: SubtitleOne(
              text: "Save",
              textColor: AppColors.textColorPrimary,
            ))
      ],
    );
  }
}
