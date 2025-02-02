import 'package:equatable/equatable.dart';

class SwichState extends Equatable {
  final bool isSwitched;

  const SwichState({this.isSwitched=false});

 SwichState copyWith({bool? isSwitched})
 {
return SwichState(isSwitched: isSwitched??this.isSwitched);
 }

   @override
  List<Object?> get props => [isSwitched];
}