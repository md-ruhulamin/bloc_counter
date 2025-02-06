import 'package:equatable/equatable.dart';

abstract class CommentEvent extends Equatable {}
class FetchCommentEvent extends CommentEvent {
 
  FetchCommentEvent();
  
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}