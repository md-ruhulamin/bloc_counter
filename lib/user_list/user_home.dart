import 'package:bloc_counter/authentication/auth_bloc.dart';
import 'package:bloc_counter/authentication/auth_event.dart';
import 'package:bloc_counter/user_list/user_bloc/user_bloc.dart';
import 'package:bloc_counter/user_list/user_bloc/user_event.dart';
import 'package:bloc_counter/user_list/user_bloc/user_state.dart';
import 'package:bloc_counter/utils/routes/routes_name.dart';
import 'package:bloc_counter/utils/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        
        leading: BackButton( onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },),
        title: Text("User List"),),
  body:  BlocProvider(
        create: (context) => UserBloc()..add(FetchCommentEvent()),
        child: BlocBuilder<UserBloc, CommentState>(
          builder: (context, state) {
       if(state.status==PostStatus.loading){
              return Center(child: CircularProgressIndicator());
            } else if(state.status==PostStatus.success){
            return ListView.builder(
              itemCount: state.userList.length,
              itemBuilder: (context,index){
                return Card(
                  child: ListTile(
                    leading: CircleAvatar(child:Text(state.userList[index].id.toString()),),
                    title: Text(state.userList[index].username!),
                   
                  ),
                );
              },
            );
          }
           else if(state.status==PostStatus.failed){
            return Center(child: Text(state.message));
          }
            return Center(child: Text('Press the button to load data'));
          },
        ),
      ), floatingActionButton: FloatingActionButton(
        onPressed: () {
         
            context.read<AuthBloc>()..add(LogoutEvent());
       Navigator.of(context).pushNamedAndRemoveUntil(
              RoutesName.home, 
              (Route<dynamic> route) => false,
            );
        },
        child: Icon(Icons.logout),
      ),
    );
  }
}