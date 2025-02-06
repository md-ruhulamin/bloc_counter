import 'package:bloc_counter/authentication/auth_bloc.dart';
import 'package:bloc_counter/authentication/auth_event.dart';
import 'package:bloc_counter/login/login_bloc/login_state.dart';
import 'package:bloc_counter/main.dart';
import 'package:bloc_counter/utils/navigation_bloc.dart';
import 'package:bloc_counter/utils/routes/routes.dart';
import 'package:bloc_counter/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter/counter_homepage.dart';
import 'profile_page.dart';
import 'login_bloc/login_bloc.dart';
import 'login_bloc/login_event.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late LoginBloc _loginBlocs;

  final emailFocusNode = FocusNode();
  final passwordFocusNode = FocusNode();

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loginBlocs = LoginBloc();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    context.read<LoginBloc>().add(LoginApi());

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
     
        title: const Text('Login'),
      ),
      body: BlocProvider(
        create: (_) => _loginBlocs,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: _formKey,
            child: BlocListener<LoginBloc, LoginState>(
              listenWhen: (previous, current) => current.loginStatus != previous.loginStatus,
              listener: (context, state) {

                if(state.loginStatus==LoginStatus.loading)
                {
                   CircularProgressIndicator();
                }
              else  if (state.loginStatus == LoginStatus.error) {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      SnackBar(content: Text(state.message.toString())),
                    );
                }

                if (state.loginStatus == LoginStatus.success) {
                  ScaffoldMessenger.of(context)
                    ..hideCurrentSnackBar()
                    ..showSnackBar(
                      const SnackBar(content: Text('Login successful')),
                    );

                   Navigator.pushNamed(context, RoutesName.login);
                }
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocBuilder<LoginBloc, LoginState>(
                      buildWhen: (current, previous) => current.email != previous.email,
                      builder: (context, state) {
                        return TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          focusNode: emailFocusNode,
                          decoration: const InputDecoration(hintText: 'Email', border: OutlineInputBorder()),
                          onChanged: (value) {
                            context.read<LoginBloc>().add(EmailChanged(email: value));
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter email';
                            }
                            return null;
                          },
                          onFieldSubmitted: (value) {},
                        );
                      }),
                  const SizedBox(
                    height: 20,
                  ),
                  BlocBuilder<LoginBloc, LoginState>(
                      buildWhen: (current, previous) => current.password != previous.password,
                      builder: (context, state) {
                        return TextFormField(
                          keyboardType: TextInputType.text,
                          focusNode: passwordFocusNode,
                          decoration: const InputDecoration(hintText: 'Password', border: OutlineInputBorder()),
                          onChanged: (value) {
                            context.read<LoginBloc>().add(PasswordChanged(password: value));
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Enter password';
                            }
                            return null;
                          },
                          onFieldSubmitted: (value) {},
                        );
                      }),
                  const SizedBox(
                    height: 50,
                  ),
                  BlocBuilder<LoginBloc, LoginState>(
                      buildWhen: (current, previous) => current.loginStatus != previous.loginStatus,
                      builder: (context, state) {
                        return ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                  context.read<AuthBloc>().add(SaveTokenEvent('lorumipsumlorumipsum'));
                          Navigator.pushNamed(context, RoutesName.home);
                              }
                            },
                            child: state.loginStatus == LoginStatus.loading ? CircularProgressIndicator() : const Text('Login'));
                      }),



                      ElevatedButton(onPressed: (){
                        Navigator.pushNamed(context, RoutesName.post_home);
                      }, child: Text("Go to Post Screen"))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
