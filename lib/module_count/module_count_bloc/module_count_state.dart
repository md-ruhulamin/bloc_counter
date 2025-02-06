
import 'package:bloc_counter/login/login_bloc/login_state.dart';
import 'package:bloc_counter/login/model/module_count.dart';
import 'package:equatable/equatable.dart';

enum ApiLoadStatus{
  loading,
  success,
  error
}
class ModuleCountState<T> extends Equatable {
   const ModuleCountState({this.message='', this.module_count=const [],this.apiLoadStatus=ApiLoadStatus.loading});
  final ApiLoadStatus apiLoadStatus;
    final String message;
    final List<T> module_count;

  
  ModuleCountState copyWith({List<T>? module_count,String? message,ApiLoadStatus? apiLoadStatus})
  {
    return ModuleCountState(module_count: module_count?? this.module_count,
    
    apiLoadStatus: apiLoadStatus?? this.apiLoadStatus,
    message: message?? this.message
    );
  }
  @override
  List<Object> get props => [ApiLoadStatus];
}
