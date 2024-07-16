part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.pharmacy() = _Pharmacy;
  const factory RegisterState.repository() = _Repository;
}
