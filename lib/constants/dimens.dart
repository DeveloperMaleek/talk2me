import 'dart:io';

class Dimens {
  Dimens._(); // this basically makes it so you can instantiate this class

  // For all screens
  static const double horizontalPadding = 16.0;
  static const double verticalPadding = 16.0;
  static const int textSizeHeading1 = 96;
  static const int textSizeHeading2 = 60;
  static const int textSizeHeading3 = 48;
  static const int textSizeHeading4 = 34;
  static const int textSizeHeading5 = 24;
  static const int textSizeHeading6 = 20;
  static const int textSizeSubtitle1 = 16;
  static const int textSizeSubtitle2 = 13;
  static const int textSizeBody1 = 16;
  static const int textSizeBody2 = 14;
  static const int textSizeButton = 14;
  static const int textSizeCaption = 12;
  static const int textSizeOverline = 10;

  static double get bottomNavigationBarHeightBuffer =>
      Platform.isAndroid ? 50 : 0;
}
