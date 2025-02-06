import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:bloc_counter/login/model/user_login.dart';
import 'package:bloc_counter/post/post_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class LoginRepository {
  static String _baseUrl = "https://gw-core-digital.nothi.gov.bd/api";
  Future<dynamic> userVerify(String password, String email) async {
    try {
      final responseData = await http.post(
        Uri.parse("https://n-doptor-api.nothi.gov.bd/api/user/verify"),
        body: jsonEncode({
          'password': password,
          'username': email,
        }),
        headers: {
          'device-id': 'android',
          'device-type': 'mobile',
          'api-version': '1',
          "content-type": 'application/json',
        },
      );
      if (responseData.statusCode == 200) {
        var response = json.decode(responseData.body);
  final responseUserData= http.post(
          Uri.parse("https://gw-core-digital.nothi.gov.bd/api/login-into-nothi"),
          body: jsonEncode(jsonDecode(base64Encode(
            Uint8List.fromList(jsonEncode(response['data']).codeUnits)))),
          headers:  { 
          'device-id': 'android',
          'device-type': 'mobile',
          'api-version': '2',
          "content-type": 'application/json',
          }
        );

    print("From User Login API back");
        return responseUserData;
      }
    } on SocketException {
      throw Exception('Error whiling fetching error');
    } on TimeoutException {
      throw Exception('Timeout error');
    }

    throw Exception('Failed to load post');
  }

  Future<dynamic> userLoginAPIClr(String data) async {
    var response = await userLoginAPIRepo(data);
    if (response != null) {
      var loginInfo =
          UserLogin.fromJson(jsonDecode(utf8.decode(response)));
      return loginInfo;
    }
  }

  Future<dynamic> userLoginAPIRepo(
    String data,
  ) async {
    var response = ApiHandler.post(
      body: {
        'data': data,
      },
      isToken: false,
      url: "https://gw-core-digital.nothi.gov.bd/api/login-into-nothi",
      header: {
        'api-version': '1',
        'device-id': 'android',
        'device-type': 'mobile',
        HttpHeaders.contentTypeHeader: 'application/json',
      },
      isByte: true,
    );

    return response;
  }
}

class ApiHandler {
  //static Client client = Client();
  static Map<String, String> mHeader = {};

  static Future<dynamic> post(
      {@required bool? isToken,
      @required Map<String, dynamic>? body,
      @required bool? isByte,
      bool? isDoptor,
      @required Map<String, String>? header,
      @required String? url}) async {
    print("hit post $body");
    Response? response;

    Client client = Client();
    Map<String, String> mHeader = {};

    mHeader.addAll(header!);

    if (isToken == true) {
      var tokenInfo;
      if (isDoptor == true) {
        tokenInfo = <String, String>{
          'Authorization': 'Bearer ${MemoryManagement.getDoptorAccessToken()!}',
        };
      } else {
        tokenInfo = <String, String>{
          'Authorization': 'Bearer ${MemoryManagement.getAccessToken()!}',
        };
      }
      mHeader.addAll(tokenInfo);
      try {
        response = await client.post(
          Uri.parse(url!),
          headers: mHeader,
          body: jsonEncode(body),
        );

        print("url: ${url}");
        print("api handler requestbody: $body");
        print("api handler responsebody: ${response.body}");
        return response;
      } catch (error) {
        // EasyLoading.showError(error.toString());

        print("error ${error}");
      }
    } else {
      try {
        response = await client.post(
          Uri.parse(url!),
          body: jsonEncode(body),
          headers: mHeader,
        );

        print("url: ${url}");
        print("api handler requestbody: $body");
        print("api handler responsebody: ${response.body}");
        return response.body;
      } catch (error) {
        // EasyLoading.showError(error.toString());

        print("error ${error}");
      }
    }
  }
}

class MemoryManagement {
  static getDoptorAccessToken() {}

  static getAccessToken() {}
}

const String doptor_login =
    "https://n-doptor-api.nothi.gov.bd/api/client/login";
