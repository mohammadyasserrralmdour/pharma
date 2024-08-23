part of 'reset_cubit.dart';

@freezed
class ResetState with _$ResetState {
  const factory ResetState.initial() = _Initial;
  const factory ResetState.loading() = ResetLoading;
  const factory ResetState.loaded() = ResetLoaded;
  const factory ResetState.erorr(String erorr) = ResetErorr;
}
