part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({
    @required Option<Either<ConectionError, void>>? failureOrSuccessOptions,
  }) = _SplashBloc;
  factory SplashState.initial() => SplashState(failureOrSuccessOptions: none());
}
