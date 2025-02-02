import 'package:bloc_counter/post/post_bloc/post_bloc.dart';
import 'package:bloc_counter/post/post_bloc/post_event.dart';
import 'package:bloc_counter/post/post_bloc/post_state.dart';
import 'package:bloc_counter/utils/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostHomepage  extends StatefulWidget{

  const PostHomepage({Key? key}) : super(key: key);

State<PostHomepage> createState()=>_PostHomepageState();
}


class _PostHomepageState extends State<PostHomepage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    context.read<PostBloc>().add(FetchPost());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Page'),
      ),
      body: BlocBuilder<PostBloc,PostState>(
        builder: (context,state){
          if(state.status==PostStatus.loading){
            return Center(child: CircularProgressIndicator(),);
          }
          else if(state.status==PostStatus.failed){
            return Center(child: Text(state.message));
          }
          else if(state.status==PostStatus.success){
            return ListView.builder(
              itemCount: state.postList.length,
              itemBuilder: (context,index){
                return ListTile(
                  title: Text(state.postList[index].name!),
                  subtitle: Text(state.postList[index].email!),
                );
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}