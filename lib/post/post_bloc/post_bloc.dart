import 'package:bloc/bloc.dart';
import 'package:bloc_counter/post/post_bloc/post_event.dart';
import 'package:bloc_counter/post/post_bloc/post_state.dart';
import 'package:bloc_counter/repo/post_repo.dart';
import 'package:bloc_counter/utils/status.dart';

class PostBloc  extends Bloc<PostEvent,PostState>{
 PostRepository postRepository=PostRepository();
   PostBloc():super(PostState()){


    
     on<FetchPost>(fetchPost);
   }



   void fetchPost(PostEvent event,Emitter<PostState> emit) async{
 await  postRepository.fetchPost().then((value){
  emit(state.copyWith(status: PostStatus.success,message: "Success",postList: value));
   }).onError((error, stackTrace) {
    print(error);
     print(stackTrace);
     emit(state.copyWith(status: PostStatus.failed,message: error.toString()));
   },);
    
   }

 }