import 'package:bloc_counter/counter/counter_homepage.dart';
import 'package:bloc_counter/home_page.dart';
import 'package:bloc_counter/login/login_screen.dart';
import 'package:bloc_counter/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'navigation_bloc.dart';

class NavigationHandler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        if (state is HomePageState) {
          return HomeScreen();
        } else if (state is LoginPageState) {
          return LoginScreen();
        }
        else if(state is CounterPageState)
        {
          return CounterHomepage();
        }
        return Container(child: Text("No Page Found"),);  // Default empty container
      },
    );
  }
}