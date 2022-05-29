import 'package:flutter/material.dart';
import 'package:talk2me/src/screens/dashboard/client_dashboard.dart';
import 'package:talk2me/src/screens/dashboard/therapist_dashboard.dart';
import 'package:talk2me/src/screens/navigation/navigation.dart';
import 'package:talk2me/src/screens/onboarding/account_setup_steps/account_setup.dart';
import 'package:talk2me/src/screens/onboarding/employee_verification.dart';
import 'package:talk2me/src/screens/onboarding/join_with_org.dart';
import 'package:talk2me/src/screens/onboarding/login_page.dart';
import 'package:talk2me/src/screens/onboarding/onboarding_screen.dart';
import 'package:talk2me/src/screens/onboarding/personal_user_signup.dart';
import 'package:talk2me/src/screens/onboarding/words_of_affirmation/woa_page.dart';
import 'package:talk2me/src/screens/profile/settings.dart';
import 'package:talk2me/src/screens/profile/therapist_profile.dart';
import 'package:talk2me/src/screens/therapy/book_therapy_1.dart';
import 'package:talk2me/src/screens/therapy/book_therapy_2.dart';
import 'package:talk2me/src/screens/therapy/booking_session_success.dart';
import 'package:talk2me/src/screens/therapy/client_session_mode.dart';
import 'package:talk2me/src/screens/therapy/client_therapy.dart';
import 'package:talk2me/src/screens/therapy/select_available_sessions.dart';
import 'package:talk2me/src/screens/therapy/session_therapist_preview.dart';
import 'package:talk2me/src/screens/therapy/therapist/sessions_page.dart';
import 'package:talk2me/src/screens/therapy/therapist_selection.dart';

const String clientDashboardPage = 'clientDashboardPage';
const String selectAvailableSessions = 'selectAvailableSessions';
const String sessionTherapistPreview = 'sessionTherapistPreview';
const String bookedSessionSuccessful = 'bookedSessionSuccessful';
const String clientNavigation = "clientNavigation";
const String therapyBookSession = "therapyBookSession";
const String therapyBookSession2 = "therapyBookSession2";
const String therapySelection = "therapySelection";
const String clientTherapy = "clientTherapy";
const String clientSessionMode = "clientSessionMode";
const String onboardingScreen = "onboardingScreen";
const String joinWithOrg = "joinWithOrg";
const String employeeVerification = "employeeVerification";
const String personalSignUp = "personalSignup";
const String loginPage = "loginPage";
const String accountSetup = "accountSetup";
const String wordsOfAffirmation = "wordsOfAffirmation";
const String profileSettings = "settings";
const String settingsdemo = "settingsdemo";
const String therapistDashboard = "therapistDashboard";
const String therapistSessionPage = "therapistSessionPage";
const String therapistProfilePage = "therapistProfilePage";

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case clientNavigation:
      return MaterialPageRoute(builder: (context) => ClientNavigation());
    case therapistDashboard:
      return MaterialPageRoute(builder: (context) => TherapistDashboard());
    case therapistSessionPage:
      return MaterialPageRoute(builder: (context) => TherapistSessions());
    case therapistProfilePage:
      return MaterialPageRoute(builder: (context) => TherapistProfile());
    case profileSettings:
      return MaterialPageRoute(builder: (context) => Settings());
    case accountSetup:
      return MaterialPageRoute(builder: (context) => AccountSetup());
    case wordsOfAffirmation:
      return MaterialPageRoute(builder: (context) => WordsOfAffirmation());
    case loginPage:
      return MaterialPageRoute(builder: (context) => LoginPage());
    case personalSignUp:
      return MaterialPageRoute(builder: (context) => PersonalUserSignup());
    case employeeVerification:
      return MaterialPageRoute(builder: (context) => EmployeeVerification());
    case joinWithOrg:
      return MaterialPageRoute(builder: (context) => JoinWithOrganization());
    case onboardingScreen:
      return MaterialPageRoute(builder: (context) => OnboardingScreen());
    case clientDashboardPage:
      return MaterialPageRoute(builder: (context) => ClientDashboard());
    case clientSessionMode:
      return MaterialPageRoute(builder: (context) => ClientSessionMode());
    case clientTherapy:
      return MaterialPageRoute(builder: (context) => ClientTherapy());
    case selectAvailableSessions:
      return MaterialPageRoute(builder: (context) => SelectAvailableSessions());
    case sessionTherapistPreview:
      return MaterialPageRoute(builder: (context) => SessionTherapistPreview());
    case bookedSessionSuccessful:
      return MaterialPageRoute(builder: (context) => SessionSuccessPage());
    case therapyBookSession:
      return MaterialPageRoute(builder: (context) => BookTherapy1());
    case therapyBookSession2:
      return MaterialPageRoute(builder: (context) => BookTherapy2());
    case therapySelection:
      return MaterialPageRoute(builder: (context) => TherapistSelection());
    default:
      throw ('this route name does not exist');
  }
}
