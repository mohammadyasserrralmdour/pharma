part of 'registerr_cubit.dart';

@freezed
class RegisterrState with _$RegisterrState {
 const factory RegisterrState.initial() = _Initial;
  const factory RegisterrState.loadin() = RegisterLoading;
  const factory RegisterrState.loaded() = RegisterLoaded;
  const factory RegisterrState.erorr(String erorr) = RegisterErorr;
}
