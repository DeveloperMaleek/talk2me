import 'package:flutter/material.dart';
import 'package:talk2me/ui/onboarding/splash_screen.dart';
import 'constants/strings.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appName,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(title: Strings.appName),
    );
  }
}
