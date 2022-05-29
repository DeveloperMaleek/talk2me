import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:talk2me/src/components/sessions_list.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';

List userSessionList = [
  ["Sane madman", "Anonymous", "Thursday, 12 March", "12:15pm"],
  ["Malik Kolade", "Public", "Wednesday, 17 March", "01:15pm"],
  ["Sane madman", "Anonymous", "Thursday, 12 March", "12:15pm"],
  ["Just Caleb", "Anonymous", "Friday, 12 March", "12:15pm"],
  ["Sane madman", "Anonymous", "Thursday, 12 March", "12:15pm"],
];

class TherapistDashboard extends StatefulWidget {
  const TherapistDashboard({Key? key}) : super(key: key);

  @override
  State<TherapistDashboard> createState() => _TherapistDashboardState();
}

class _TherapistDashboardState extends State<TherapistDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 40),
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.all(0),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(
                      image: AssetImage("assets/images/avatar-four.png"),
                      fit: BoxFit.cover,
                      height: 60,
                      width: 60,
                    ),
                  ),
                  title: HeadingSix(
                    text: "Asamoah Gyan",
                    textColor: AppColors.textColorLightBg,
                  ),
                  subtitle: SubtitleTwo(
                      text: "Available", textColor: AppColors.successColor),
                  trailing: IconButton(
                    icon: Icon(Icons.notifications),
                    onPressed: () {},
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HeadingSix(
                        text: "Upcoming Session",
                        textColor: AppColors.textColorLightBg),
                    SizedBox(
                      height: 16,
                    ),
                    UpcomingSession(
                      planOrStatusText: "Public",
                      buttonText: 'View History',
                      isTherapist: true,
                      onButtonPressed: () {},
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeadingSix(
                          text: "This week's sessions",
                          textColor: AppColors.textColorLightBg),
                      SizedBox(
                        height: 500,
                        child: ListView.builder(
                            controller: SingleChildScrollView().controller,
                            itemCount: userSessionList.length,
                            itemBuilder: (context, index) {
                              return UserSessionList(
                                name: userSessionList[index][0],
                                status: userSessionList[index][1],
                                date: userSessionList[index][2],
                                time: userSessionList[index][3],
                              );
                            }),
                      )
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}

class UserSessionList extends StatelessWidget {
  const UserSessionList({
    Key? key,
    required this.name,
    required this.status,
    required this.date,
    required this.time,
  }) : super(key: key);

  final String name;
  final String status;
  final String date;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: AppColors.greenBackground,
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image(
                      image: AssetImage("assets/images/avatar-four.png"),
                      fit: BoxFit.cover,
                      height: 48,
                      width: 48,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SubtitleOne(
                    text: name,
                    textColor: AppColors.textColorLightBg,
                  ),
                ],
              )),
              SizedBox(
                width: 10,
              ),
              SubtitleTwo(text: status, textColor: AppColors.warningColor)
            ],
          ),
          SizedBox(
            height: 12,
          ),
          _dateAndTime(
            date: date,
            time: time,
          ),
        ],
      ),
    );
  }
}

class _dateAndTime extends StatelessWidget {
  const _dateAndTime({
    Key? key,
    required this.date,
    required this.time,
  }) : super(key: key);

  final String date;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(Icons.event_available,
                    size: 16, color: AppColors.textColorLightBg)),
            SizedBox(
              width: 6,
            ),
            BodyTextOne(text: date, textColor: AppColors.textColorLightBg)
          ],
        ),
        Row(
          children: [
            Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(
                  Icons.watch_later,
                  size: 16,
                  color: AppColors.textColorLightBg,
                )),
            SizedBox(
              width: 6,
            ),
            BodyTextOne(text: time, textColor: AppColors.textColorLightBg)
          ],
        ),
      ],
    );
  }
}
