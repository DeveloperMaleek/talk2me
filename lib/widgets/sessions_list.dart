import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/text_styles.dart';
import 'package:talk2me/routes.dart';
import 'package:talk2me/widgets/buttons.dart' as button;

class UpcomingSession extends StatelessWidget {
  const UpcomingSession({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppColors.greenBackground,
          borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          // Top Section
          Row(children: [
            Image.asset("assets/images/dp.png"),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BodyTextOne(
                      text: "Asamoah Gyan",
                      textColor: AppColors.textColorLightBg),
                  SizedBox(
                    height: 8,
                  ),
                  CaptionText(
                      text: "Available",
                      textColor: AppColors.subtitleTextLightBg)
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: BodyTextTwo(
                text: "30 Mins",
                textColor: AppColors.textColorLightBg,
              ),
            )
          ]),

          SizedBox(
            height: 16,
          ),

          // Middle Section
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Column(
              children: [
                //Time
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
                    BodyTextOne(
                        text: "Thursday, 12 March",
                        textColor: AppColors.textColorLightBg)
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                //Date
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
                    BodyTextOne(
                        text: "12:15 PM", textColor: AppColors.textColorLightBg)
                  ],
                ),
              ],
            ),
          ),

          //bottom section
          SizedBox(
            height: 16,
          ),

          Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.outlineColor, width: 2),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                children: [
                  Expanded(
                    child: button.FilledButton(
                        buttonText: "start session",
                        onPressed: () {
                          Navigator.pushNamed(context, clientSessionMode);
                        }),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: IconButton(
                        // padding: EdgeInsets.all(16),
                        onPressed: () {},
                        icon: Icon(
                          Icons.more_vert,
                          size: 24,
                          color: AppColors.textColorLightBg,
                        )),
                  )
                ],
              ))
        ],
      ),
    );
  }
}

class OtherUpcomingSessions extends StatelessWidget {
  const OtherUpcomingSessions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [_sessionList("Thursday, 12 March", "12:15 PM")],
    );
  }

  Widget _sessionList(String date, String time) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.primaryColor, width: 2)),
      padding: EdgeInsets.all(12),
      child: Row(
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
      ),
    );
  }
}
