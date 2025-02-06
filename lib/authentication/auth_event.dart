import 'package:flutter_bloc/flutter_bloc.dart';

// Authentication Events
abstract class AuthEvent {}

class SaveTokenEvent extends AuthEvent {
  final String token;
  SaveTokenEvent(this.token);
}

class LogoutEvent extends AuthEvent {}

class CheckTokenEvent extends AuthEvent {}