import 'package:mvvm_bloc/Model/UserBaseResponse.dart';

part 'user_bloc.dart';

@immutable
abstract class UserState{}

class UserInitial extends UserState{}

class UserInitialized extends UserState{
  final UserBaseResponse _userBaseResponse;

  UserInitialized({required this._userBaseResponse});
}