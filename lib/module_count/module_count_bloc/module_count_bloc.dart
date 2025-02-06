// Bloc Class
import 'package:bloc_counter/login/login_repo/login_repo.dart';
import 'package:bloc_counter/login/model/office_info.dart';
import 'package:bloc_counter/module_count/module_count_bloc/module_count_event.dart';
import 'package:bloc_counter/module_count/module_count_bloc/module_count_state.dart';
import 'package:bloc_counter/module_count/module_count_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ModuleCountBloc extends Bloc<ModuleCountEvent, ModuleCountState> {
  final ModuleRepository repository;

  ModuleCountBloc({required this.repository}) : super(const ModuleCountState()) {
    on<FetchModule>((event, emit) async {
      emit(state.copyWith(apiLoadStatus: ApiLoadStatus.loading));

      for(OfficeInfo officeInfo in event.userLogin.data!.officeInfo!)
      {
         try {
        final modules = await repository.fetchModules( 
           officeInfo.officeId.toString(),
            officeInfo.designationId.toString(),
            officeInfo.domain ?? '',);
        emit(state.copyWith(
          module_count: modules,
          apiLoadStatus: ApiLoadStatus.success,
        ));
      } catch (e) {
        emit(state.copyWith(
          apiLoadStatus: ApiLoadStatus.error,
          message: e.toString(),
        ));
      } 
      }
      
          
    });
  }
}