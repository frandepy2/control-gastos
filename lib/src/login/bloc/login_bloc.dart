import 'dart:developer';

import 'package:control_gastos/connection/models/connection_error.dart';
import 'package:control_gastos/src/login/models/session_model.dart';
import 'package:control_gastos/utils/helper/session_helper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'login_bloc.freezed.dart';
part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginState.initial()) {
    on<LoginEvent>(mapEventToState);
  }

  Future<void> mapEventToState(LoginEvent event, Emitter<LoginState> emit) {
    return event.map(
      login: (e) async {
        String email = e.email;
        String password = e.password;
        try {
          UserCredential userCredential =
              await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password);

          SessionHelper().saveSession(SessionModel(
            email: userCredential.user!.email,
            uid: userCredential.user!.uid,
            username: userCredential.additionalUserInfo!.username,
          ));

          print("Inicio de sesion exitoso");
          print(userCredential.toString());
          emit(state.copyWith(
            failureOrSuccessOptions: some(right(null)),
          ));
        } catch (e) {
          print("Error al iniciar sesion");
          log(e.toString());
        }
      },
    );
  }
}
