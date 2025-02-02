import 'package:equatable/equatable.dart';

class ListState  extends Equatable{

  final List<String> items;
  const ListState({required this.items});
 
 ListState copyWith({List<String>? items}){
   return ListState(items: items?? this.items);
 }

  @override
  List<Object> get props => [items];
 }