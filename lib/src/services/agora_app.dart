// fetchAgoraToken() async {
//   String api = "https://talk2me-backend-app.herokuapp.com/agora/token/";
//   Uri uri = Uri.parse(api);
//   http.Response data = await http.get(uri);

//   if (data.statusCode == 200) {
//     var decodeData = jsonDecode(data.body);

//       var callSession = CallSession(token: item['token'], appID: item['appID']);
//       callSession.token.toString();
//       callSession.appID.toString();
//     });
//   } else {
//     print(data.statusCode);
//   }
// }

class CallSession {
  String token;
  String appID;

  CallSession({required this.token, required this.appID});

  factory CallSession.fromJson(Map<String, dynamic> json) {
    return CallSession(token: json['token'], appID: json['appID']);
  }
}
