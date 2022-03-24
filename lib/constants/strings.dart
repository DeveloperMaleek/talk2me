import 'package:flutter/cupertino.dart';

class Strings {
  Strings._(); // this basically makes it so you can instantiate this class

  // bool noSession = true;
  static const appName = 'Talk2Me';
  static const wordsOfAffirmations1 =
      'Say these words of affirmation loudly or in your mind. What is important is that you say them to yourself.';
  static const wordsOfAffirmations2 = 'Have you said those words to yourself?';
  static const clientAccountSetUp1 = 'How have you been feeling lately?';
  static const clientAccountSetUp2 =
      'What do you consider always influence your “okay” days?';
  static const clientAccountSetUpSelection = 'Select as many as appropriate';
  static const clientAccountSetUp3 = 'How are you feeling today?';
  static const clientAccountSetUp4 =
      'What do you aim to achieve with using “Talk2me”?';
}

class booloi with ChangeNotifier {
  // booloi._();
  var noSession = true;

  void toggle() {
    noSession = !noSession;
    notifyListeners();
  }
}
