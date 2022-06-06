import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';
import 'package:talk2me/src/components/appBar.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

var clientList = Map();

// clientList["one"] = {
//     "day2": "Thursday 12",
//     "sessions": 2,
//     "clients": {
//       {
//         "name": "Name",
//         "image": "assets/images/avatar-one.png",
//         "status": "Anonymous",
//         "time": "12:15pm"
//       },
//       {
//         "name": "Name",
//         "image": "assets/images/avatar-one.png",
//         "status": "Anonymous",
//         "time": "12:15pm"
//       },
//     }
// };

List sessionNumbers = [
  [
    "Thursday, 15",
    2,
    [
      ["Name day 1.1", "assets/images/avatar-one.png", "Anonymous", "12:15pm"],
      ["Name day 1.2", "assets/images/avatar-one.png", "Anonymous", "12:15pm"],
      ["Name day 1.3", "assets/images/avatar-one.png", "Anonymous", "12:15pm"],
    ]
  ],
  [
    "Thursday, 16",
    2,
    [
      ["Name day 2.1", "assets/images/avatar-one.png", "Anonymous", "12:15pm"],
      ["Name day 2.2", "assets/images/avatar-one.png", "Anonymous", "12:15pm"],
      ["Name day 2.2", "assets/images/avatar-one.png", "Anonymous", "12:15pm"],
    ]
  ],
  [
    "Thursday, 16",
    2,
    [
      ["Name day 3.1", "assets/images/avatar-one.png", "Public", "12:15pm"],
      ["Name day 3.2", "assets/images/avatar-one.png", "Anonymous", "12:15pm"],
      ["Name day 3.3", "assets/images/avatar-one.png", "Anonymous", "12:15pm"],
    ]
  ],
  [
    "Thursday, 16",
    2,
    [
      ["Name day 4.1", "assets/images/avatar-one.png", "Anonymous", "12:15pm"],
      ["Name day 4.2", "assets/images/avatar-one.png", "Public", "12:15pm"],
      ["Name day 4.3", "assets/images/avatar-one.png", "Anonymous", "12:15pm"],
    ]
  ],
  [
    "Thursday, 16",
    2,
    [
      ["Name day 5.1", "assets/images/avatar-one.png", "Anonymous", "12:15pm"],
      ["Name day 5.2", "assets/images/avatar-one.png", "Anonymous", "12:15pm"],
      ["Name day 5.3", "assets/images/avatar-one.png", "Public", "12:15pm"],
    ]
  ],
  [
    "Thursday, 16",
    2,
    [
      ["Name day 2.1", "assets/images/avatar-one.png", "Anonymous", "12:15pm"],
      ["Name day 2.2", "assets/images/avatar-one.png", "Anonymous", "12:15pm"],
      ["Name day 2.2", "assets/images/avatar-one.png", "Anonymous", "12:15pm"],
    ]
  ],
];

class TherapistSessions extends StatefulWidget {
  const TherapistSessions({Key? key}) : super(key: key);

  @override
  State<TherapistSessions> createState() => TherapistSessionsState();
}

class TherapistSessionsState extends State<TherapistSessions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarNav(
          pageHeading: "Sessions",
          buttonColor: AppColors.primaryColor,
          buttonText: "Set schedules",
          // onPressed: OnTap,
        ),
        body: Container(margin: EdgeInsets.all(20), child: Example()));
  }
}

class Example extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: sessionNumbers.length,
        itemBuilder: (context, index) {
          return StickyHeader(
              header: Container(
                decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10))),
                padding: EdgeInsets.all(16.0),
                alignment: Alignment.centerLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SubtitleOne(
                      text: '${sessionNumbers[index][0]}',
                      textColor: AppColors.textColorLightBg,
                    ),
                    SubtitleTwo(
                      text: '${sessionNumbers[index][1]} Sessions',
                      textColor: AppColors.textColorLightBg,
                    ),
                  ],
                ),
              ),
              content: Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: AppColors.greenBackground,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Column(
                  children: [
                    for (int i = 0; i < 3; i++)
                      sessionContainer(
                          "${sessionNumbers[index][2][i][1]}",
                          "${sessionNumbers[index][2][i][0]}",
                          "${sessionNumbers[index][2][i][2]}",
                          sessionNumbers[index][2][i][2] == "Anonymous"
                              ? AppColors.warningColor
                              : AppColors.successColor,
                          "${sessionNumbers[index][2][i][3]}",
                          index,
                          i),
                  ],
                ),
              )

              // Container(child: Text("${sessionNumbers[index][2][1]}")),
              );
        });
  }

  Widget sessionContainer(
      String imageUrl,
      String clientName,
      String clientStatus,
      Color statusColor,
      String time,
      int index1,
      int index2) {
    return sessionNumbers[index1][2][index2] != null
        ? Container(
            margin: EdgeInsets.symmetric(vertical: 4),
            height: 70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: AppColors.primaryColor, width: 2)),
            child: ListTile(
              leading: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    imageUrl,
                    height: 48,
                    width: 48,
                  )),
              title: SubtitleOne(
                  text: clientName, textColor: AppColors.textColorLightBg),
              subtitle: SubtitleTwo(text: clientStatus, textColor: statusColor),
              trailing: SubtitleOne(
                  text: time, textColor: AppColors.textColorLightBg),
            ),
          )
        : Container();
  }
}
