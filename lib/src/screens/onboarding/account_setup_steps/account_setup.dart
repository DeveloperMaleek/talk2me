import 'package:flutter/material.dart';
import 'package:talk2me/constants/colors.dart';
import 'package:talk2me/constants/progressIndicator.dart';
import 'package:talk2me/routes.dart';
import 'package:talk2me/views/onboarding/account_setup_steps/account_setup_four.dart';
import 'package:talk2me/views/onboarding/account_setup_steps/account_setup_three.dart';
import 'package:talk2me/views/onboarding/account_setup_steps/account_setup_two.dart';
import 'package:talk2me/views/onboarding/account_setup_steps/acount_setup_one.dart';
import 'package:talk2me/widgets/buttons.dart';

List<Widget> bodyContent = [
  const AccountSetupOne(),
  const AccountSetupTwo(),
  const AccountSetupThree(),
  const AccountSetupFour()
];

class AccountSetup extends StatefulWidget {
  const AccountSetup({Key? key}) : super(key: key);

  @override
  State<AccountSetup> createState() => _AccountSetupState();
}

class _AccountSetupState extends State<AccountSetup> {
  int pagePosition = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.lightBackground,
        body: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(16, 52, 16, 24),
          child: Column(
            children: [
              _progressIndicator(context),
              const SizedBox(
                height: 48,
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
        floatingActionButtonLocation: pagePosition != 3
            ? FloatingActionButtonLocation.endFloat
            : FloatingActionButtonLocation.centerFloat,
        floatingActionButton: pagePosition != 3
            ? FloatingActionButton(
                onPressed: () {
                  setState(() {
                    _pageController.animateToPage(++pagePosition,
                        duration: const Duration(milliseconds: 250),
                        curve: Curves.easeOutSine);
                  });
                },
                elevation: 0,
                backgroundColor: AppColors.primaryColor,
                child: const Icon(Icons.keyboard_arrow_right,
                    color: AppColors.textColorPrimary))
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: FilledButton(
                    buttonText: "complete",
                    onPressed: () {
                      Navigator.pushNamed(context, wordsOfAffirmation);
                    })));
  }

  Container _progressIndicator(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SingleProgressIndicator(
            totalLength: 4,
            indicatorColor: pagePosition >= 0
                ? AppColors.primaryColor
                : AppColors.subtitleTextLightBg,
          ),
          SingleProgressIndicator(
            totalLength: 4,
            indicatorColor: pagePosition >= 1
                ? AppColors.primaryColor
                : AppColors.subtitleTextLightBg,
          ),
          SingleProgressIndicator(
            totalLength: 4,
            indicatorColor: pagePosition >= 2
                ? AppColors.primaryColor
                : AppColors.subtitleTextLightBg,
          ),
          SingleProgressIndicator(
            totalLength: 4,
            indicatorColor: pagePosition >= 3
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
