import 'package:bloc_counter/login/model/user.dart';
import 'package:bloc_counter/utils/status.dart';
import 'package:equatable/equatable.dart';


class CommentState  extends Equatable{
  final List<User> userList;

  final PostStatus status;
  final String message;
  const CommentState({this.userList= const  <User>[], this.status=PostStatus.loading,this.message=''});
    
    CommentState copyWith({PostStatus? status, String? message,  List<User>? userList}){
     return CommentState( 
     userList: userList?? this.userList, 
     status: status?? this.status, 
     message: message?? this.message);
    }
  @override
  List<Object?> get props => [userList, status, message];
}
