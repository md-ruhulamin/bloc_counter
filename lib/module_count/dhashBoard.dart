import 'package:bloc_counter/login/model/module_count.dart';
import 'package:bloc_counter/module_count/module_count_bloc/module_count_bloc.dart';
import 'package:bloc_counter/module_count/module_count_bloc/module_count_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashBoardPage extends StatelessWidget {
  const DashBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<ModuleCountBloc, ModuleCountState>(
          builder: (context, state) {
        if (state.apiLoadStatus == ApiLoadStatus.loading) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state.apiLoadStatus == ApiLoadStatus.error) {
          return Center(
            child: Text(state.message),
          );
        } else if (state.apiLoadStatus == ApiLoadStatus.success) {
          return Text(state.message);
        }

        return SizedBox();
      }),
    );
  }
}
