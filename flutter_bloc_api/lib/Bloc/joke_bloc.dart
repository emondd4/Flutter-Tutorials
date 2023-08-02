import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc_api/Model/JokeBaseModel.dart';

import '../Network/ApiRepository.dart';

part 'joke_event.dart';
part 'joke_state.dart';

class JokeBloc extends Bloc<JokeEvent, JokeState> {
  JokeBloc() : super(JokeInitial()) {

    final ApiRepository _apiRepository = ApiRepository();

    on<GetJokeList>((event, emit) async {
      try {
        emit(JokeLoading());
        final mList = await _apiRepository.fetchJokeList();
        emit(JokeLoaded(mList));
        if (mList.value == null) {
          emit(const JokeError("Data Not Fetched Properly"));
        }
      } on NetworkError {
        emit(const JokeError("Failed to fetch data. is your device online?"));
      }
    });
  }
}
