part of 'order_cubit.dart';

@freezed
class OrderState with _$OrderState {
  const factory OrderState.initial() = _Initial;
  const factory OrderState.add() = _Add;
  const factory OrderState.remove() = _Remove;
  const factory OrderState.receive() = _Receive;
}
