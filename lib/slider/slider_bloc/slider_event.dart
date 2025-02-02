 import 'package:equatable/equatable.dart';

abstract class SliderEvent extends Equatable{

  const SliderEvent();

  List<Object> get props=>[];
}

class SliderChanged extends SliderEvent{
  final double slider;

  SliderChanged({required this.slider});

  @override
  List<Object> get props => [slider];
}