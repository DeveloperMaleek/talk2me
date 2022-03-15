import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/strings.dart';
import 'package:talk2me/utils/device_utils.dart';
import 'package:talk2me/constants/dimens.dart';
import 'package:talk2me/constants/font_family.dart';

class AccountSetupThree extends StatefulWidget {
  const AccountSetupThree({Key? key}) : super(key: key);

  @override
  State<AccountSetupThree> createState() => _AccountSetupThreeState();
}

class _AccountSetupThreeState extends State<AccountSetupThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        //   leading: IconButton(
        //       onPressed: () {}, icon: Icon(Icons.keyboard_arrow_left)),
        // ),
        body: SingleChildScrollView(
            child: Column(
      children: [
        Container(
            decoration: BoxDecoration(
                color: AppColors.darkBackground,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.zero,
                    topRight: Radius.zero,
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15)),
                // color: AppColors.darkBackground,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://res.cloudinary.com/michelletakuro/image/upload/v1647271307/talk2me-assets/img/profile-background-12.jpg"))),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 4.5,
            // color: AppColors.darkBackground,
            child: Column(
              children: [
                AppBar(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  leading: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.keyboard_arrow_left)),
                ),
              ],
            )),

        // Profile Section is here
        Stack(children: [
          Positioned(
              top: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Text Status Posted by Therapist"),
                    Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(50)),
                          child: Image(
                            height: 80,
                            width: 80,
                            image: NetworkImage(
                                "https://res.cloudinary.com/michelletakuro/image/upload/v1647271297/talk2me-assets/img/profile-background-9.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ))
        ]),
      ],
    )));
  }
}
