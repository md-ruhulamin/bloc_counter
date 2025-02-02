import 'package:bloc/bloc.dart';
import 'package:bloc_counter/switch/switch_bloc/switch_event.dart';
import 'package:bloc_counter/switch/switch_bloc/switch_state.dart';

class SwitchBloc  extends Bloc<SwitchEvent, SwichState>{

  SwitchBloc():super(SwichState())
  {
    on<ToggleSwitch>(_tooggleSwitch);

  }

  void _tooggleSwitch(ToggleSwitch event, Emitter<SwichState> emit)
  {print(state.isSwitched);
    emit(state.copyWith(isSwitched: !state.isSwitched));
  }
}