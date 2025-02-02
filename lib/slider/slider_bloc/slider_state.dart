import 'package:equatable/equatable.dart';

class SliderState extends Equatable{
  final  double slider;
  const SliderState({this.slider=0.0});
  

  SliderState copyWith({double? slider})
  {
    return SliderState(slider: slider??this.slider);
  }
  @override
  // TODO: implement props
  List<Object?> get props => [slider];
}