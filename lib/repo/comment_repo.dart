import 'dart:convert';
import 'dart:io';

import 'package:bloc_counter/login/model/user.dart';
import 'package:http/http.dart' as http;

class UserRepo {




Future<List<User>> fetchUserList() async {
    try{

      
    final response= await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));    
    if(response.statusCode==200){
     
     final body =json.decode(response.body) as List;
  
      return body.map((e){
          return User.fromJson(e);
            }).toList();
      }
    }on SocketException {
        throw Exception('Error whiling fetching error');
    }
    throw Exception('Failed to load post');
  }

}