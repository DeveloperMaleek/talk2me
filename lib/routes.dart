import 'package:flutter/material.dart';
import 'package:talk2me/ui/dashboard/client_dashboard.dart';
import 'package:talk2me/ui/navigation/navigation.dart';
import 'package:talk2me/ui/therapy/book_therapy_1.dart';
import 'package:talk2me/ui/therapy/book_therapy_2.dart';
import 'package:talk2me/ui/therapy/booking_session_success.dart';
import 'package:talk2me/ui/therapy/select_available_sessions.dart';

const String clientDashboardPage = 'clientDashboardPage';
const String selectAvailableSessions = 'selectAvailableSessions';
const String bookedSessionSuccessful = 'bookedSessionSuccessful';
const String clientNavigation = "clientNavigation";
const String therapyBookSession = "therapyBookSession";
const String therapyBookSession2 = "therapyBookSession2";

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case clientNavigation:
      return MaterialPageRoute(builder: (context) => ClientNavigation());
    case clientDashboardPage:
      return MaterialPageRoute(builder: (context) => ClientDashboard());
    case selectAvailableSessions:
      return MaterialPageRoute(builder: (context) => SelectAvailableSessions());
    case bookedSessionSuccessful:
      return MaterialPageRoute(builder: (context) => SessionSuccessPage());
    case therapyBookSession:
      return MaterialPageRoute(builder: (context) => BookTherapy1());
      case therapyBookSession2:
      return MaterialPageRoute(builder: (context) => BookTherapy2());
    default:
      throw ('this route name does not exist');
  }
}
