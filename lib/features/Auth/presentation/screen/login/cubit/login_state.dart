part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.loadin() = LoginLoading;
  const factory LoginState.loaded() = LoginLoaded;
  const factory LoginState.erorr(String erorr) = LoginErorr;

}
