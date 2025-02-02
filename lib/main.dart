import 'package:bloc_counter/counter/bloc_counter/counter_bloc.dart';
import 'package:bloc_counter/counter/counter_homepage.dart';
import 'package:bloc_counter/login/login_bloc/login_bloc.dart';
import 'package:bloc_counter/login/login_screen.dart';
import 'package:bloc_counter/post/post_bloc/post_bloc.dart';
import 'package:bloc_counter/post/post_homepage.dart';
import 'package:bloc_counter/slider/slider_bloc/slider_bloc.dart';
import 'package:bloc_counter/switch/switch_bloc/switch_bloc.dart';
import 'package:bloc_counter/switch/switch_homePage.dart';
import 'package:bloc_counter/todo/list_bloc/list_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'todo/todo_homepage.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
   providers: [
      BlocProvider(create: (context)=>CounterBloc()),
      BlocProvider(create: (context)=>SwitchBloc()),
      BlocProvider(create: (context)=>SliderBloc()),
     BlocProvider(create: (context)=>ListBloc()),
     BlocProvider(create: (context)=>PostBloc()),
     BlocProvider(create: (context)=>LoginBloc()),
   ],
    child:MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyHomePage(),
    )
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo'),
      ),
      body: Column(


mainAxisAlignment: MainAxisAlignment.center,
crossAxisAlignment: CrossAxisAlignment.center,
      children: [
ElevatedButton(onPressed: (){
Navigator.push(context,MaterialPageRoute(builder: (context)=>CounterHomepage()));
}, child: Row(
  children: [
    Text('Counter Page'),
    Icon(Icons.forward),
  ],
)),

      SizedBox(height: 20,),
ElevatedButton(onPressed: (){


Navigator.push(context,MaterialPageRoute(builder: (context)=>SwitchHomePage()));
}, child: Row(
  children: [
    Text('Switch  & Slider Page'),
    Icon(Icons.forward),
  ],
)),
      
  SizedBox(height: 20,),
ElevatedButton(onPressed: (){


Navigator.push(context,MaterialPageRoute(builder: (context)=>TodoListPage()));
}, child: Row(
  children: [
    Text('List Page'),
    Icon(Icons.forward),
  ],
)),
      

        SizedBox(height: 20,),
ElevatedButton(onPressed: (){


Navigator.push(context,MaterialPageRoute(builder: (context)=>PostHomepage()));
}, child: Row(
  children: [
    Text('Comment Page'),
    Icon(Icons.forward),
  ],
)),
      

        SizedBox(height: 20,),
ElevatedButton(onPressed: (){


Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
}, child: Row(
  children: [
    Text('Login Page'),
    Icon(Icons.forward),
  ],
)),
     
      ],
    ),
    );
  }
}