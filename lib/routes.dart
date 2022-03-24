import 'package:flutter/material.dart';
import 'package:talk2me/ui/dashboard/client_dashboard.dart';
import 'package:talk2me/ui/navigation/navigation.dart';
import 'package:talk2me/ui/therapy/book_therapy_1.dart';
import 'package:talk2me/ui/therapy/book_therapy_2.dart';
import 'package:talk2me/ui/therapy/booking_session_success.dart';
import 'package:talk2me/ui/therapy/client_session_mode.dart';
import 'package:talk2me/ui/therapy/client_therapy.dart';
import 'package:talk2me/ui/therapy/select_available_sessions.dart';
import 'package:talk2me/ui/therapy/session_therapist_preview.dart';
import 'package:talk2me/ui/therapy/therapist_selection.dart';

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

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case clientNavigation:
      return MaterialPageRoute(builder: (context) => ClientNavigation());
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
