import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bloc_counter/post/post_model.dart';
import 'package:http/http.dart' as http;
class LoginRepository{
  Future <dynamic> fetchPost(String password,String email)async{
    try{
    final response = await http.post(Uri.parse("https://n-doptor-api.nothi.gov.bd/api/user/verify"),


        body: jsonEncode(

            {
              'password': password,
              'username': email,
            }

    ),
        headers: {
        'device-id': 'android',
        'device-type': 'mobile',
        'api-version': '1',
        "content-type": 'application/json',
      },
      );    
    if(response.statusCode==200){
     
    
     print("Response Body From Login Repo: "+response.body);
  
return response.body;
      }
    }on SocketException {

        throw Exception('Error whiling fetching error');
    }on TimeoutException{

        throw Exception('Timeout error');
    }

    throw Exception('Failed to load post');
  }
}
