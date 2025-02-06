

import 'package:bloc_counter/module_count/dhashBoard.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfilePage extends StatelessWidget {
  String data;
   ProfilePage({required this.data});

  @override
  Widget build(BuildContext context) {
    print(data);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Column(
            children: [
              Center(
                child: Text(data),
              ),
              ElevatedButton(onPressed:(){

                Navigator.push(context,MaterialPageRoute(builder: (context)=> DashBoardPage()));
              }, child: Text("GO to DashBoard"))
            ],
          ),
        ),
      ),
    );
  }
}
//
// Login successful{"status":"success","data":{"user":{"id":211477,"username":"200000097286","user_alias":"sadik1234","active":true,"employee_record_id":343337,"last_password_change":"2023-11-14T17:58:12+06:00","failed_attempt_limit_exceed_time":null},"notifications":{"forcefully_change_password":{"type":"danger","message_en":"You did not change your password since 435 days. Please change your password.","message_bn":"à¦à¦ªà¦¨à¦¿ à¦ªà¦¾à¦¸à¦à¦¯à¦¼à¦¾à¦°à§à¦¡ à¦ªà¦°à¦¿à¦¬à¦°à§à¦¤à¦¨ à¦à¦°à§à¦¨ à¦¨à¦¿ à§ªà§©à§« à¦¦à¦¿à¦¨à¥¤ à¦à¦¨à§à¦à§à¦°à¦¹ à¦à¦°à§ à¦à¦ªà¦¨à¦¾à¦° à¦ªà¦¾à¦¸à¦à¦¯à¦¼à¦¾à¦°à§à¦¡ à¦ªà¦°à¦¿à¦¬à¦°à§à¦¤à¦¨ à¦à¦°à§à¦¨à¥¤"}},"employee_info":{"id":343337,"prefix_name_eng":null,"name_eng":"Md. Sadik ","surname_eng":null,"prefix_name_bng":null,"name_bng":"à¦®à§à¦ �
