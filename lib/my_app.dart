import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talk2me/routes.dart';
import 'package:talk2me/theme/styles.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {},
      theme: appTheme(),
      // home: const TherapistSelection(),
      onGenerateRoute: controller,
      initialRoute: onboardingScreen,
    );
  }
}
