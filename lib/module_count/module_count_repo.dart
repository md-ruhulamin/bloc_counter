import 'dart:convert';
import 'package:bloc_counter/login/model/user_login.dart';
import 'package:http/http.dart' as http;
class ModuleRepository {
  Future<dynamic> fetchModules(
    String officeId,
    String designationId,
    String url,
  ) async {
       {
      final response = await http.post(
        Uri.parse("https://n-doptor-api.nothi.gov.bd/api/user/verify"),
        body: jsonEncode({
          'password': "",
          'username': "email",
        }),
        headers: {
          'device-id': 'android',
          'device-type': 'mobile',
          'api-version': '1',
          "content-type": 'application/json',
        },
      );
      if (response.statusCode == 200) {
        print("Response Body From Login Repo: " + response.body);

        return response.body;
      }
    }
    throw Exception('Failed to load post');
  }
}

class Module {
  final int id;
  final String name;

  Module({required this.id, required this.name});

  factory Module.fromJson(Map<String, dynamic> json) {
    return Module(
      id: json['id'],
      name: json['name'],
    );
  }
}