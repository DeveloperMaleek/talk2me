import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:talk2me/src/components/appBar.dart';
import 'package:talk2me/theme/colors.dart';

var kToday = DateTime.now();
var kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
var kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);

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
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              // TableCalendar(
              //     calendarFormat: CalendarFormat.month,
              //     focusedDay: DateTime.now(),
              //     firstDay: kFirstDay,
              //     lastDay: kLastDay,
              //     selectedDayPredicate: (day){
              //       return isSameDay(DateTime, day)
              //     },
              //     )
            ],
          )),
    );
  }
}
