import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ngepet_id/models/user_model.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
}
