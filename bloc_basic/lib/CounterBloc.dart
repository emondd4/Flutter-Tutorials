import 'package:bloc/bloc.dart';

enum CounterEvents {increase,decrease,error}

class CounterBloc extends Bloc<CounterEvents, int>{
  CounterBloc(int initialState) : super(initialState);

  @override
  Stream<int> mapEventToState(CounterEvents event) async* {
    switch (event) {
      case CounterEvents.increase:
        yield state + 1;
        break;
      case CounterEvents.decrease:
        yield state - 1;
        break;
      case CounterEvents.error:
        addError(Exception('unsupported event'));
    }
  }

}