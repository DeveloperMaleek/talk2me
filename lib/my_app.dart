import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talk2me/ui/navigation/navigation.dart';
import 'package:talk2me/ui/onboarding/account_setup_steps/account_setup_three.dart';
import 'package:talk2me/ui/onboarding/onboarding_screen.dart';
import 'package:talk2me/ui/therapy/session_therapist_preview.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme:
            GoogleFonts.josefinSansTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
      ),
      home: const SessionTherapistPreview(),
    );
  }
}
