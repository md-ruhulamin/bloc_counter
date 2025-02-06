import 'package:bloc_counter/authentication/auth_event.dart';
import 'package:bloc_counter/authentication/auth_state.dart';
import 'package:bloc_counter/utils/routes/routes_name.dart';
import 'package:bloc_counter/utils/shared_preference_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<SaveTokenEvent>(_onLogin);
    on<LogoutEvent>(_onLogout);
    on<CheckTokenEvent>(_onCheckToken);
  }
  


  void _onLogin(SaveTokenEvent event, Emitter<AuthState> emit) async {
    await SharedPreferencesHelper.saveToken(event.token);
    emit(Authenticated(event.token));
  }

  void _onLogout(LogoutEvent event, Emitter<AuthState> emit) async {
    await SharedPreferencesHelper.removeToken();
    emit(Unauthenticated());
  }

  void _onCheckToken(CheckTokenEvent event, Emitter<AuthState> emit) async {

    final token = await SharedPreferencesHelper.getToken();
    if (token != null) {
      emit(Authenticated(token));
    } else {
      emit(Unauthenticated());
    }
  }
}