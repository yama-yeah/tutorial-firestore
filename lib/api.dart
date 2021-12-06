import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  String BASE_URL = "https://fun-manaba-api.azurewebsites.net/";
  Map<String, String> user = {'userid': '', 'password': ''};
  Map<String, String> headers = {'content-type': 'application/json'};
  void User(String userid, String password) {
    user['userid'] = userid;
    user['password'] = password;
  }

  Future<String> auth() async {
    String body = json.encode(user);
    String url = BASE_URL + "auth";
    var raw = await http.post(Uri.parse(url), body: body, headers: headers);
    return json2map(raw)['token'];
  }

  Map<String, dynamic> json2map(http.Response json) {
    String str = utf8.decode(json.bodyBytes);
    return jsonDecode(str);
  }
}
