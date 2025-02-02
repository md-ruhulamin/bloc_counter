import 'package:equatable/equatable.dart';

abstract class ListEvent extends Equatable{

 const ListEvent();
 
  @override
  List<Object> get props => [];
}

class AddItem extends ListEvent{
  final String item;
  AddItem({required this.item});
  @override
  List<Object> get props => [item];
}

class DeleteItem extends ListEvent{
  final String item;
  DeleteItem({required this.item});
  @override
  List<Object> get props => [item];
}