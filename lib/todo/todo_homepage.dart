import 'dart:math';

import 'package:bloc_counter/todo/list_bloc/list_bloc.dart';
import 'package:bloc_counter/todo/list_bloc/list_event.dart';
import 'package:bloc_counter/todo/list_bloc/list_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ListBloc,ListState>(builder: (context, state) {
        return ListView.builder(itemCount: state.items.length, itemBuilder: (context, index) {
          return ListTile(title: Text('Todo ${state.items[index]}'),trailing:IconButton(onPressed: (){
            context.read<ListBloc>().add(DeleteItem(item: state.items[index]));
          }, icon:  Icon(Icons.remove)),);
        },);
      },),
      floatingActionButton: FloatingActionButton(onPressed: (){

context.read<ListBloc>().add(AddItem(item: '${Random().nextInt(100)}'));

      }, child: Icon(Icons.add)),
    );
  }
}