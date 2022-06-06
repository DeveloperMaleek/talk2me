import 'dart:convert';

// import 'package:get/get.dart';
import 'package:http/http.dart' as http;
// import 'package:talk2me/routes.dart';
import 'package:talk2me/src/model/user.dart';

Future<User> createAccount(
    String email, String password, String firstName) async {
  final response = await http.post(
    Uri.parse('https://talk2me-backend-app.herokuapp.com/user/create/'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json;'
    },
    body: jsonEncode(<String, String>{
      'email': email,
      'password': password,
      'firstName': firstName,
    }),
  );

  if (response.statusCode == 201) {
    // If the server did return a 201 CREATED response,
    // then parse the JSON.
    return User.fromJson(jsonDecode(response.body));
  } else {
    print(jsonDecode(response.body));
    // If the server did not return a 201 CREATED response,
    // then throw an exception.
    throw Exception('Failed to create an account.');
  }
}


// Future<User> login(
//     String email, String password) async {
//   final response = await http.post(
//     Uri.parse('https://talk2me-backend-app.herokuapp.com/user/login/'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//       'Accept': 'application/json;'
//     },
//     body: jsonEncode(<String, String>{
//       'email': email,
//       'password': password,
//     }),
//   );

//   if (response.statusCode == 201) {
//     // If the server did return a 201 CREATED response,
//     // then parse the JSON.

//     return User.fromJson(jsonDecode(response.body));
//   } else {
//     // If the server did not return a 201 CREATED response,
//     // then throw an exception.
//     throw Exception('Failed to create an account.');
//   }
// }