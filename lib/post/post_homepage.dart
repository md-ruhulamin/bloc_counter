import 'package:bloc_counter/user_list/user_bloc/user_bloc.dart';
import 'package:bloc_counter/user_list/user_bloc/user_event.dart';
import 'package:bloc_counter/user_list/user_home.dart';
import 'package:bloc_counter/post/post_bloc/post_bloc.dart';
import 'package:bloc_counter/post/post_bloc/post_event.dart';
import 'package:bloc_counter/post/post_bloc/post_state.dart';
import 'package:bloc_counter/utils/routes/routes_name.dart';
import 'package:bloc_counter/utils/status.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostHomepage extends StatefulWidget  {
  const PostHomepage({Key? key}) : super(key: key);

  State<PostHomepage> createState() => _PostHomepageState();
}

class _PostHomepageState extends State<PostHomepage> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Post Page'),
      ),
      body: BlocProvider(
        create: (context) => PostBloc()..add(FetchPost()),
        child: BlocBuilder<PostBloc, PostState>(
          builder: (context, state) {
            if (state.status == PostStatus.loading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.status == PostStatus.failed) {
              return Center(child: Text(state.message));
            } else if (state.status == PostStatus.success) {
              return ListView.builder(
                itemCount: state.postList.length,
                itemBuilder: (context, index) {
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
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, RoutesName.user_list_home);
            context.read<PostBloc>()..add(FetchPost());
        
        },
        child: Icon(Icons.forward),
      ),
    );
  }
}
