import 'package:bloc/bloc.dart';
import 'package:bloc_counter/todo/list_bloc/list_event.dart';
import 'package:bloc_counter/todo/list_bloc/list_state.dart';

class ListBloc  extends Bloc<ListEvent,ListState> {

  ListBloc():super(ListState(items: [])){

    on<AddItem>(_addItem);
    on<DeleteItem>(_deleteItem);
  }
  void _addItem  (AddItem event, Emitter<ListState> emit){
    state.items.add(event.item);
    final List<String> updatedItems =  state.items;// List.from(state.items)..add(event.item);
    emit(state.copyWith(items: updatedItems));
  }
  void _deleteItem  (DeleteItem event, Emitter<ListState> emit){
    final List<String> updatedItems = List.from(state.items)..remove(event.item);
    emit(state.copyWith(items: updatedItems));
  }

}