import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/progressIndicator.dart';
import 'package:talk2me/views/therapy/book_therapy_1.dart';
import 'package:talk2me/views/therapy/book_therapy_2.dart';
import 'package:talk2me/views/therapy/select_available_sessions.dart';
import 'package:talk2me/views/therapy/session_therapist_preview.dart';
import 'package:talk2me/views/therapy/therapist_selection.dart';
import 'package:talk2me/widgets/appBar.dart';

List bodyContent = [
  BookTherapy1(),
  BookTherapy2(),
  TherapistSelection(),
  SessionTherapistPreview(),
  SelectAvailableSessions(),
];

class BookTherapy extends StatefulWidget {
  const BookTherapy({Key? key}) : super(key: key);

  @override
  State<BookTherapy> createState() => _BookTherapyState();
}

class _BookTherapyState extends State<BookTherapy> {
  PageController _pageController = PageController();
  int pagePosition = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      body: SingleChildScrollView(
        // padding: EdgeInsets.only(left: 16, right: 16, bottom: 36),
        child: Column(
          children: [
            Visibility(
              visible: pagePosition == 2 ? false : true,
              child: Container(
                padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                child: Column(
                  children: [
                    AppBarNavWithBackButton(
                        iconColor: AppColors.textColorLightBg),
                    SizedBox(
                      height: 8,
                    ),
                    _progressIndicator(context),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: PageView.builder(
                controller: _pageController,
                itemCount: bodyContent.length,
                itemBuilder: ((context, index) {
                  return BodyContent(
                    index: index,
                  );
                }),
                onPageChanged: (index) {
                  setState(() {
                    pagePosition = index;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _progressIndicator(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleProgressIndicator(
            totalLength: 5,
            indicatorColor: pagePosition >= 0
                ? AppColors.primaryColor
                : AppColors.subtitleTextLightBg,
          ),
          SingleProgressIndicator(
            totalLength: 5,
            indicatorColor: pagePosition >= 1
                ? AppColors.primaryColor
                : AppColors.subtitleTextLightBg,
          ),
          SingleProgressIndicator(
            totalLength: 5,
            indicatorColor: pagePosition >= 2
                ? AppColors.primaryColor
                : AppColors.subtitleTextLightBg,
          ),
          SingleProgressIndicator(
            totalLength: 5,
            indicatorColor: pagePosition >= 3
                ? AppColors.primaryColor
                : AppColors.subtitleTextLightBg,
          ),
          SingleProgressIndicator(
            totalLength: 5,
            indicatorColor: pagePosition >= 4
                ? AppColors.primaryColor
                : AppColors.subtitleTextLightBg,
          ),
        ],
      ),
    );
  }
}

class BodyContent extends StatelessWidget {
  const BodyContent({Key? key, required this.index}) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: bodyContent[index],
    );
  }
}
