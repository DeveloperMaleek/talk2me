import 'package:flutter/material.dart';
import 'package:talk2me/routes.dart';
import 'package:talk2me/src/components/appBar.dart';
import 'package:talk2me/theme/colors.dart';
import 'package:talk2me/theme/text_styles.dart';
import 'package:talk2me/src/components/buttons.dart' as button;

enum responses { never, sometimes, often, always }
String selectedResponse = '';

class DiagnosticTestPage extends StatefulWidget {
  const DiagnosticTestPage({Key? key}) : super(key: key);

  @override
  State<DiagnosticTestPage> createState() => _DiagnosticTestPageState();
}

class _DiagnosticTestPageState extends State<DiagnosticTestPage> {
  final controller = ScrollController();

  int item = 0;

  bool buttonClicked = false;

  get itemCount => (testQuestions.length);

  void jumpToItem(int item) {
    final height = controller.position.maxScrollExtent +
        MediaQuery.of(context).size.height -
        100;
    final value = item / itemCount * height;
    controller.jumpTo(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightBackground,
      appBar: AppBarNavWithBackButton(
        iconColor: AppColors.textColorLightBg,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: testQuestions.length,
                controller: controller,
                itemBuilder: (context, index) {
                  return itemBuilder(index, context);
                }),
          ),
        ],
      ),
    );
  }

  Container itemBuilder(int index, BuildContext context) {
    return Container(
      color: AppColors.lightBackground,
      padding: EdgeInsets.all(20),
      height: MediaQuery.maybeOf(context)?.size.height,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 24.0),
            child: HeadingSix(
              text: "${testQuestions[index]}",
              textColor: AppColors.textColorLightBg,
              textAlignment: TextAlign.center,
            ),
          ),
          responseButton(index, responses.never, "Never"),
          responseButton(index, responses.sometimes, "Sometimes"),
          responseButton(index, responses.often, "Often"),
          responseButton(index, responses.always, "almost always"),
          Visibility(
              visible: index == testQuestions.lastIndexOf(testResult),
              child: button.OutlineButton(
                buttonText: "see your result",
                buttonTextColor: AppColors.textColorLightBg,
                outlineColor: AppColors.primaryColor,
                onPressed: () {
                  Navigator.pushNamed(context, diagnosticResultPage);
                },
              ))
        ],
      ),
    );
  }

  Widget responseButton(int index, var value, String buttonText) {
    return Visibility(
      visible: index < testQuestions.lastIndexOf(testResult),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: button.OutlineButton(
            buttonText: buttonText,
            outlineColor: selectedResponse == value.toString()
                ? Colors.transparent
                : AppColors.primaryColor,
            buttonTextColor: AppColors.textColorLightBg,
            backgroundColor: selectedResponse == value.toString()
                ? AppColors.primaryColor
                : Colors.transparent,
            onPressed: () {
              setState(() {
                selectedResponse = value.toString();
                print(selectedResponse);
              });
              item = index + 1 >= testQuestions.length ? index : index + 1;
              jumpToItem(item);
            }),
      ),
    );
  }
}

List testQuestions = [
  question1,
  question2,
  question3,
  question4,
  question5,
  question6,
  question7,
  question8,
  testResult
];

String question1 = "I found it hard to wind down";
String question2 = "I was aware of dryness of my mouth";
String question3 = "I couldn’t seem to experience any positive feeling at all";
String question4 =
    "I experienced breathing difficulty (eg, excessively rapid breathing, breathlessness in the absence of physical exertion)";
String question5 =
    "I found it difficult to work up the initiative to do things";
String question6 = "I tended to over-react to situations";
String question7 = "I experienced trembling (eg, in the hands)";
String question8 = "I felt that I was using a lot of nervous energy";
String testResult =
    "You have reached the end of the test, click to see your result";
