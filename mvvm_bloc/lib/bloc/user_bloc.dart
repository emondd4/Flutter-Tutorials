import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:mvvm_bloc/Service.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<int,UserState>{
  final _service = ApiService();
  UserBloc() : super(UserInitial()){
    on<int>((event,emit) async {
      emit(UserInitial());
      try{
        final response = await _service.getData(event);
        emit(UserInitialized(_userBaseResponse: response));
      }catch(e){
        rethrow;
      }
    });
  }
}