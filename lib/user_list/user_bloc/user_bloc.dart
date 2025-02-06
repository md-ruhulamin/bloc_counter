import 'package:bloc/bloc.dart';
import 'package:bloc_counter/user_list/user_bloc/user_event.dart';
import 'package:bloc_counter/user_list/user_bloc/user_state.dart';
import 'package:bloc_counter/repo/comment_repo.dart';
import 'package:bloc_counter/utils/status.dart';

class UserBloc extends Bloc<CommentEvent,CommentState>{
  UserRepo  _userRepository = UserRepo();
  UserBloc():super(CommentState()){
    on<FetchCommentEvent>(fetchComment);
  }
  
  void fetchComment(CommentEvent event,Emitter<CommentState> emit) async{
    await _userRepository.fetchUserList().then((value){
      emit(state.copyWith(status: PostStatus.success,message: "Success",userList: value));
    }).onError((error, stackTrace) {

      emit(state.copyWith(status: PostStatus.failed,message: error.toString(), userList: []));
    },);
  }

}
