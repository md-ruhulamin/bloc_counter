import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bloc_counter/post/post_model.dart';
import 'package:http/http.dart' as http;
class PostRepository{
  Future <List<PostModel>> fetchPost()async{
    try{

      
    final response= await http.get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));    
    if(response.statusCode==200){
     
     final body =json.decode(response.body) as List;
     print(body);
      return body.map((e){
          return PostModel.fromJson(e);
            }).toList();

      }
    }on SocketException {
        throw Exception('Error whiling fetching error');
    }on TimeoutException{

        throw Exception('Timeout error');
    }

    throw Exception('Failed to load post');
  }
}
