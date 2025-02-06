import 'package:bloc/bloc.dart';
import 'package:bloc_counter/login/login_bloc/login_event.dart';
import 'package:bloc_counter/login/login_bloc/login_state.dart';

import '../login_repo/login_repo.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginRepository loginRepository = LoginRepository();
  LoginBloc() : super(const LoginState()) {

    on<EmailChanged>(_onEmailChanged);
    
    on<PasswordChanged>(_onPasswordChanged);
    on<LoginApi>(loginApi);
  }

  void _onEmailChanged(EmailChanged event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(
        email: event.email,
      ),
    );
  }

  void _onPasswordChanged(PasswordChanged event, Emitter<LoginState> emit) {
    emit(
      state.copyWith(
        password: event.password,
      ),
    );
  }

  void loginApi(LoginApi event, Emitter<LoginState> emit) async {
    emit(
      state.copyWith(
        loginStatus: LoginStatus.loading,
      ),
    );

    {
      await loginRepository
          .userVerify('02522016','200000097286')
          .then((value) {
        if (value != null) {
          print("From Login Bloc" +value);
          emit(
            state.copyWith(
              loginStatus: LoginStatus.success,
              message: 'Login successful::',
            ),
          );
        } else {
          emit(
            state.copyWith(
              loginStatus: LoginStatus.error,
              message: 'Data is Empty',
            ),
          );
        }
      }).onError(
        (error, stackTrace) {
          print(error);
          print(stackTrace);
          emit(state.copyWith(
              loginStatus: LoginStatus.error, message: error.toString()));
        },
      );
    }
  }
}
