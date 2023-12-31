import 'dart:async';
import 'dart:developer';
import 'package:control_gastos/connection/models/connection_error.dart';
import 'package:control_gastos/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
part 'splash_bloc.freezed.dart';
part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc() : super(SplashState.initial()) {
    on<SplashEvent>(mapEventToState);
  }

  Future<void> mapEventToState(SplashEvent event, Emitter<SplashState> emit) {
    return event.map(started: (e) async {
      emit(state.copyWith(
        failureOrSuccessOptions: none(),
      ));
      log("Iniciando splash");
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );
      log("Finalizando splash");
      emit(state.copyWith(
        failureOrSuccessOptions: some(right(null)),
      ));
    });
  }
}
