import 'package:bloc_counter/post/post_model.dart';
import 'package:bloc_counter/utils/status.dart';
import 'package:equatable/equatable.dart';

class PostState  extends Equatable{
  final List<PostModel> postList;
  final PostStatus status;
  final String message;
  const PostState({this.postList= const  <PostModel>[], this.status=PostStatus.loading,
   this.message=''});
    
    PostState copyWith({List<PostModel>? postList, PostStatus? status, String? message}){

     return PostState( 
     postList: postList?? this.postList, 
     status: status?? this.status, 
     message: message?? this.message);
    }
  @override
  // TODO: implement props
  List<Object?> get props => [postList, status, message];

}