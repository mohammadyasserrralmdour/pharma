import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_cubit.freezed.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  init(){emit(const RegisterState.pharmacy());}
  accountType(String type){
    type=="Pharmacy"?emit(const RegisterState.pharmacy()):emit(const RegisterState.repository());
  }
  RegisterCubit() : super(const RegisterState.initial());
}
