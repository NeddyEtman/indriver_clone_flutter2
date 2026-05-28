import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indriver_clone_flutter2/src/presentation/pages/auth/login/bloc/LoginEvent.dart';
import 'package:indriver_clone_flutter2/src/presentation/pages/auth/login/bloc/LoginState.dart';
import 'package:indriver_clone_flutter2/src/presentation/utils/BlocFormItem.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final formKey = GlobalKey<FormState>();

  LoginBloc() : super(const LoginState()) {
    on<LoginInitEvent>((event, emit) {
      emit(state.copyWith(formKey: GlobalKey<FormState>()));
    });

    on<EmailChanged>((event, emit) {
      // event.mail LO QUE EL USUARIO ESTA ESCRIBIENDO
      emit(
        state.copyWith(
          email: BlocFormItem(
            value: event.email.value,
            error: event.email.value.isEmpty ? 'Ingrese el email' : null,
          ),
          formKey: formKey,
        ),
      );
    });

    on<PasswordChanged>((event, emit) {
      emit(
        state.copyWith(
          password: BlocFormItem(
            value: event.password.value,
            error: event.password.value.isEmpty
                ? 'Ingresa el password'
                : event.password.value.length < 6
                ? 'Minimo 6 carracteres'
                : null,
          ),
          formKey: formKey,
        ),
      );
    });

    on<FormSubmit>((event, emit) {
      if (state.formKey?.currentState?.validate() ?? false) {
        // Perform login logic here
        print('Email: ${state.email.value}, Password: ${state.password.value}');
      }
    });
  }
}
