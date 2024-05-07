import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:toko_sepatu/models/user_model.dart';

class AuthService {
  final String baseUrl = 'http://first_project.test/api';

  Future<UserModel> register({
    String? name,
    String? username,
    String? email,
    String? password,
  }) async {
    var url = '$baseUrl/register';
    var header = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'name': name,
      'username': username,
      'email': email,
      'password': password,
    });

    final response = await http.post(
      Uri.parse(url),
      headers: header,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data);
      user.token = 'Bearer ' + data['access_token'];
      return user;
    } else {
      throw Exception('Register Failed');
    }
  }

  Future<UserModel> login({
    String? email,
    String? password,
  }) async {
    var url = '$baseUrl/login';
    var header = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'email': email,
      'password': password,
    });

    var response = await http.post(
      Uri.parse(url),
      headers: header,
      body: body,
    );

    print(response.body);

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data);
      user.token = 'Bearer ' + data['access_token'];

      return user;
    } else {
      throw Exception('Login Failed');
    }
  }
}
