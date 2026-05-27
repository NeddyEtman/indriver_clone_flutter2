import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indriver_clone_flutter2/src/presentation/pages/auth/login/bloc/LoginEvent.dart';
import 'package:indriver_clone_flutter2/src/presentation/pages/auth/login/bloc/LoginState.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final formKey = GlobalKey<FormState>();

  LoginBloc() : super(const LoginState()) {
    on<LoginInitEvent>((event, emit) {
      emit(state.copyWith(formKey: GlobalKey<FormState>()));
    });

    on<EmailChanged>((event, emit) {
      emit(state.copyWith(email: event.email, formKey: formKey));
    });

    on<PasswordChanged>((event, emit) {
      emit(state.copyWith(password: event.password, formKey: formKey));
    });

    on<FormSubmit>((event, emit) {
      if (state.formKey?.currentState?.validate() ?? false) {
        // Perform login logic here
        print('Email: ${state.email}, Password: ${state.password}');
      }
    });
  }
}
