import 'dart:io';

class Dimens {
  Dimens._(); // this basically makes it so you can instantiate this class

  // For all screens
  static const double horizontalPadding = 16.0;
  static const double verticalPadding = 16.0;
  static const double textSizeHeading1 = 96.0;
  static const double textSizeHeading2 = 60.0;
  static const double textSizeHeading3 = 48.0;
  static const double textSizeHeading4 = 34.0;
  static const double textSizeHeading5 = 24.0;
  static const double textSizeHeading6 = 20.0;
  static const double textSizeSubtitle1 = 16.0;
  static const double textSizeSubtitle2 = 13.0;
  static const double textSizeBody1 = 16.0;
  static const double textSizeBody2 = 14;
  static const double textSizeButton = 14;
  static const double textSizeCaption = 12;
  static const double textSizeOverline = 10;

  static double get bottomNavigationBarHeightBuffer =>
      Platform.isAndroid ? 50 : 0;
}
