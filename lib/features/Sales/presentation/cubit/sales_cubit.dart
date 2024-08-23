import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sales_cubit.freezed.dart';
part 'sales_state.dart';

class SalesCubit extends Cubit<SalesState> {
    PageController pc=PageController(initialPage: 0);

    bool reverse=true;
    SalesCubit() : super(const SalesState.initial());
 
  

}
