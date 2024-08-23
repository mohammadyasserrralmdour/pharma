part of 'verify_cubit.dart';

@freezed
class VerifyState with _$VerifyState {
  const factory VerifyState.initial() = _Initial;
  const factory VerifyState.sendCode(String email) = SendCode;
  const factory VerifyState.loading() = VerifyLoading;
  const factory VerifyState.loaded() = VerifyLoaded;
  const factory VerifyState.erorr(String erorr) = VerifyErorr;
}
