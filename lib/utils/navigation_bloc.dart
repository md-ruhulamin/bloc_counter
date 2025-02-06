import 'package:bloc/bloc.dart';

// Define your events
abstract class NavigationEvent {}

class NavigateToHomePage extends NavigationEvent {}
class NavigateToLoginPage extends NavigationEvent {}
class NavigateToCounterPage extends NavigationEvent {}
// Define your states
abstract class NavigationState {}

class HomePageState extends NavigationState {}
class LoginPageState extends NavigationState {}
class CounterPageState extends NavigationState {}

// Create your Bloc
class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(HomePageState()) {
    on<NavigateToHomePage>((event, emit) => emit(HomePageState()));
    on<NavigateToLoginPage>((event, emit) => emit(LoginPageState()));
    on<NavigateToCounterPage>((event, emit) => emit(CounterPageState()));
  }
}
