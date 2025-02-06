import 'package:bloc_counter/login/model/user_login.dart';
import 'package:equatable/equatable.dart';

abstract class ModuleCountEvent extends Equatable{

const ModuleCountEvent();
List<Object> get props=>[];
}
class FetchModule extends ModuleCountEvent{
 final UserLogin userLogin;
  FetchModule(this.userLogin);
  List<Object> get props=>[];

}