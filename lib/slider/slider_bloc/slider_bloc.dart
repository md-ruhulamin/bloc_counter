import 'package:bloc_counter/slider/slider_bloc/slider_event.dart';
import 'package:bloc_counter/slider/slider_bloc/slider_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SliderBloc  extends Bloc<SliderEvent,SliderState>{

  SliderBloc():super(SliderState())
  {
    on<SliderChanged>(_onSliderChanged);

  }

  void _onSliderChanged(SliderChanged event, Emitter<SliderState> emit)
  {
    emit(state.copyWith(slider: event.slider));
  }
 }