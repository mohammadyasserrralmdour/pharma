import 'package:bloc/bloc.dart';
import 'package:pharma_app/core/enums/general_states.dart';
import 'package:pharma_app/core/services/state_manager_service.dart';
import 'package:pharma_app/features/main/domain/entities/home_data_entity.dart';
import 'package:pharma_app/features/main/domain/usecases/get_home_data_use_case.dart';
import 'package:pharma_app/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';

part 'main_cubit.freezed.dart';
part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(const MainState.initial()) {
    initMain();
  }

  
  final GetHomeDataUseCase getHomeDataUseCase = InjectionContainer.getIt();
  GeneralStates generalState = GeneralStates.init;

  /// Data
  HomeData? homeData;

  /// Controllers
  final TextEditingController searchTextController = TextEditingController();
  final PageController pageController = PageController();

  /// variables
  bool isInitMain = false;
  int currentTab = 0;

  void initMain() {
    if (isInitMain) return;
    getHomeData();
    isInitMain = true;
  }

  Future<void> getHomeData() async {
    InjectionContainer.getIt<Logger>().i("Start `getHomeData` in |MainCubit|");
    _update(const MainState.loading());
    generalState = GeneralStates.loading;
    var result = await getHomeDataUseCase();
    result.fold(
      (l) {
        generalState = StateManagerService.getStateFromFailure(l);
        _update(MainState.error(l.message));
      },
      (homeData) {
        _update(MainState.loaded(homeData));
        generalState = GeneralStates.success;
        this.homeData = homeData;
      },
    );
    InjectionContainer.getIt<Logger>().w(
      "End `getHomeData` in |MainCubit| General State:$generalState",
    );
  }

  void changeCurrentTab(int index) {
    _update(const MainState.loading());
    currentTab = index;
    pageController.animateToPage(
      currentTab,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
    );
    _update(MainState.changeTabSuccess(homeData));
  }

  void _update(MainState state) {
    if (!isClosed) {
      emit(state);
    }
  }
}
