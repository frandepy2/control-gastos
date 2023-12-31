part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @required Option<Either<ConectionError, void>>? failureOrSuccessOptions,
  }) = _LoginBloc;

  factory LoginState.initial() => LoginState(failureOrSuccessOptions: none());
}
