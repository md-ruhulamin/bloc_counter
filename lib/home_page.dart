import 'package:bloc_counter/authentication/auth_bloc.dart';
import 'package:bloc_counter/authentication/auth_event.dart';
import 'package:bloc_counter/authentication/auth_state.dart';
import 'package:bloc_counter/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          if (state is Authenticated) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Welcome! You are logged in.'),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                   
Navigator.pushNamed(context, RoutesName.post_home);
                    },
                    child: Text('Go to Post Screen'),
                  ),
                ],
              ),
            );
          } else {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Please log in.'),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                    Navigator.pushReplacementNamed(context,RoutesName.login);
                    
                    },
                    child: Text('Login'),
                  ),
                ],
              ),
            );
          } 
        },
      ),
    );
  }
}