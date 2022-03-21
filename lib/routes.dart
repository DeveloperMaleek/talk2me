import 'package:flutter/material.dart';
import 'package:talk2me/ui/dashboard/client_dashboard.dart';
import 'package:talk2me/ui/navigation/navigation.dart';
import 'package:talk2me/ui/therapy/booking_session_success.dart';
import 'package:talk2me/ui/therapy/select_available_sessions.dart';

const String clientDashboardPage = 'clientDashboardPage';
const String selectAvailableSessions = 'selectAvailableSessions';
const String bookedSessionSuccessful = 'bookedSessionSuccessful';
const String clientNavigation = "clientNavigation";

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
    default:
      throw ('this route name does not exist');
  }
}
