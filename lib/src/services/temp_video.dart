import 'package:flutter/material.dart';
import 'package:googleapis/calendar/v3.dart' as events;
import 'package:extension_google_sign_in_as_googleapis_auth/extension_google_sign_in_as_googleapis_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/people/v1.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:googleapis_auth/googleapis_auth.dart' as auth show AuthClient;

import 'package:supercharged/supercharged.dart';

GoogleSignIn _googleSignIn = GoogleSignIn(
  // Optional clientId
  // clientId: '479882132969-9i9aqik3jfjd7qhci1nqf0bm2g71rm1u.apps.googleusercontent.com',
  scopes: <String>[
    events.CalendarApi.calendarScope,
    PeopleServiceApi.contactsReadonlyScope
  ],
);

var startDate = DateTime.now();

List<events.EventAttendee> eventAttendees = [
  events.EventAttendee(additionalGuests: 1, email: 'malik.kolade@meltwater.org')
];

// var createCalendar =
class CalenderTest extends StatefulWidget {
  const CalenderTest({Key? key}) : super(key: key);

  @override
  State<CalenderTest> createState() => _CalenderTestState();
}

class _CalenderTestState extends State<CalenderTest> {
  GoogleSignInAccount? _currentUser;
  String _contactText = '';

  @override
  void initState() {
    super.initState();
    _googleSignIn.onCurrentUserChanged.listen((GoogleSignInAccount? account) {
      setState(() {
        _currentUser = account;
      });
      if (_currentUser != null) {
        _handleGetContact();
      }
    });
    _googleSignIn.signInSilently();
  }

  Future<void> _handleGetContact() async {
    setState(() {
      _contactText = 'Loading contact info...';
    });

    // Retrieve an [auth.AuthClient] from the current [GoogleSignIn] instance.
    final auth.AuthClient? client = await _googleSignIn.authenticatedClient();

    assert(client != null, 'Authenticated client missing!');

    // Prepare a People Service authenticated client.
    final PeopleServiceApi peopleApi = PeopleServiceApi(client!);
    // Retrieve a list of the `names` of my `connections`
    final ListConnectionsResponse response =
        await peopleApi.people.connections.list(
      'people/me',
      personFields: 'names',
    );

    final String? firstNamedContactName =
        _pickFirstNamedContact(response.connections);

    setState(() {
      if (firstNamedContactName != null) {
        _contactText = 'I see you know $firstNamedContactName!';
      } else {
        _contactText = 'No contacts to display.';
      }
    });
  }

  String? _pickFirstNamedContact(List<Person>? connections) {
    return connections
        ?.firstWhere(
          (Person person) => person.names != null,
        )
        .names
        ?.firstWhere(
          (Name name) => name.displayName != null,
        )
        .displayName;
  }

  Future<void> _handleSignIn() async {
    try {
      await _googleSignIn.signIn();
    } catch (error) {
      print(error);
    }
  }

  Future<void> _handleSignOut() => _googleSignIn.disconnect();

  createCalendar() async {
    print("object");
    final auth.AuthClient? client = await _googleSignIn.authenticatedClient();
    print(client);
    final calendarApi = events.CalendarApi(client!);
    var createEvent = await calendarApi.events
        .insert(event, 'malikademola36@gmail.com', conferenceDataVersion: 1);

    print(createEvent.hangoutLink);
    return createEvent;
  }

  events.ConferenceData conferenceData = events.ConferenceData(
      conferenceSolution: events.ConferenceSolution(
          key: events.ConferenceSolutionKey(type: 'hangoutMeet')));

  events.Event event = new events.Event(
      start: events.EventDateTime(date: startDate),
      end: events.EventDateTime(date: startDate + Duration(minutes: 30)),
      attendees: eventAttendees);

  @override
  Widget build(BuildContext context) {
    final GoogleSignInAccount? user = _currentUser;
    return Scaffold(
        body: user != null
            ? Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  ListTile(
                    leading: GoogleUserCircleAvatar(
                      identity: user,
                    ),
                    title: Text(user.displayName ?? ''),
                    subtitle: Text(user.email),
                  ),
                  const Text('Signed in successfully.'),
                  Text(_contactText),
                  ElevatedButton(
                    child: const Text('SIGN OUT'),
                    onPressed: _handleSignOut,
                  ),
                  ElevatedButton(
                    child: const Text('REFRESH'),
                    onPressed: _handleGetContact,
                  ),
                ],
              )
            :

            // Center(
            // child: ElevatedButton(
            // onPressed: createCalendar, child: Text("Create Calendar")));
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  const Text('You are not currently signed in.'),
                  ElevatedButton(
                    child: const Text('SIGN IN'),
                    onPressed: _handleSignIn,
                  ),
                ],
              ));
  }
}
