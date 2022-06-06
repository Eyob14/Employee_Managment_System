import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation/presentation_index.dart';


class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<Login>(_onLogin);
    on<Signup>(_onSignup);
  }

  void _onLogin(Login event, Emitter emit) async {
    await Future.delayed(const Duration(seconds: 2));
    emit(LoginSuccessful());
  }

  void _onSignup(Signup event, Emitter emit) async {
    await Future.delayed(const Duration(seconds: 2));
    emit(SignupSuccessfull());
  }
}
