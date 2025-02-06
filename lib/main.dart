import 'package:bloc_counter/authentication/auth_bloc.dart';
import 'package:bloc_counter/authentication/auth_event.dart';
import 'package:bloc_counter/user_list/user_bloc/user_bloc.dart';
import 'package:bloc_counter/counter/bloc_counter/counter_bloc.dart';
import 'package:bloc_counter/login/login_bloc/login_bloc.dart';
import 'package:bloc_counter/login/login_screen.dart';
import 'package:bloc_counter/module_count/module_count_repo.dart';
import 'package:bloc_counter/post/post_bloc/post_bloc.dart';
import 'package:bloc_counter/post/post_bloc/post_event.dart';
import 'package:bloc_counter/post/post_bloc/post_state.dart';
import 'package:bloc_counter/slider/slider_bloc/slider_bloc.dart';
import 'package:bloc_counter/switch/switch_bloc/switch_bloc.dart';
import 'package:bloc_counter/todo/list_bloc/list_bloc.dart';
import 'package:bloc_counter/utils/navigation_bloc.dart';
import 'package:bloc_counter/utils/navigation_handler.dart';
import 'package:bloc_counter/utils/routes/routes.dart';
import 'package:bloc_counter/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloc/bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => CounterBloc()),
        BlocProvider(create: (context) => SwitchBloc()),
        BlocProvider(create: (context) => SliderBloc()),
        BlocProvider(create: (context) => ListBloc()),
        BlocProvider(create: (context) => PostBloc()),
        BlocProvider(create: (context) => UserBloc()),
        BlocProvider(create: (context) => LoginBloc()),
        BlocProvider(create: (context) => NavigationBloc()),
        BlocProvider(create: (context) => AuthBloc()..add(CheckTokenEvent())),
      ],
      child: MaterialApp(
        initialRoute: RoutesName.home,
        onGenerateRoute: Routes.generateRoute,
      ),
    );
  }
}

