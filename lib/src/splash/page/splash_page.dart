import 'package:control_gastos/src/splash/bloc/splash_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: ((context) => SplashBloc()..add(SplashEvent.started())),
      child: BlocConsumer<SplashBloc, SplashState>(
        listener: (context, state) {
          state.failureOrSuccessOptions!.fold(() {}, (verify) {
            verify.fold(
              (failure) {},
              (success) {
                context.pushReplacement('/login');
              },
            );
          });
        },
        builder: (context, state) {
          return Scaffold(body: Center(child: Text("Splash Page")));
        },
      ),
    );
  }
}
