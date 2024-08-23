import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_app/core/constants/app_keys.dart';
import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/services/caching_service.dart';
import 'package:pharma_app/features/Auth/presentation/screen/forget/auth_forget_screen.dart';
import 'package:pharma_app/features/Auth/presentation/screen/login/auth_login_screen.dart';
import 'package:pharma_app/features/Auth/presentation/screen/login/cubit/login_cubit.dart';
import 'package:pharma_app/features/Auth/presentation/screen/register/auth_regeister_screen.dart';
import 'package:pharma_app/features/Auth/presentation/screen/register/cubit/registerr_cubit.dart';
import 'package:pharma_app/features/Auth/presentation/screen/reset/auth_reset_screen.dart';
import 'package:pharma_app/features/Auth/presentation/screen/reset/cubit/reset_cubit.dart';
import 'package:pharma_app/features/Auth/presentation/screen/verify/auth_verify_screen.dart';
import 'package:pharma_app/features/Auth/presentation/screen/verify/cubit/verify_cubit.dart';
import 'package:pharma_app/features/main/presentation/screens/main_screen.dart';
import 'package:pharma_app/features/onBoarding/onBoardingScreen.dart';
import 'package:pharma_app/features/pharmacy/features/Drugs/presentation/screen/drug_batch_screen.dart';
import 'package:pharma_app/features/pharmacy/features/Drugs/presentation/screen/drug_deatailes_screen.dart';
import 'package:pharma_app/features/pharmacy/features/Drugs/presentation/screen/drug_home_screen.dart';
import 'package:pharma_app/features/pharmacy/features/Drugs/presentation/screen/drug_types_screen.dart';
import 'package:pharma_app/features/pharmacy/features/Employees/screen/employee_create_screen.dart';
import 'package:pharma_app/features/pharmacy/features/Employees/screen/employee_home_screen.dart';
import 'package:pharma_app/features/pharmacy/features/Employees/screen/employee_information_screen.dart';
import 'package:pharma_app/features/pharmacy/features/Employees/screen/employee_personal_screen.dart';
import 'package:pharma_app/features/pharmacy/features/Employees/screen/employee_roles_screen.dart';
import 'package:pharma_app/features/pharmacy/features/Sales/presentation/screen/sales_all_customers_screen.dart';
import 'package:pharma_app/features/pharmacy/features/Sales/presentation/screen/sales_customer_informations_screen.dart';
import 'package:pharma_app/features/pharmacy/features/Sales/presentation/screen/sales_customers_screen.dart';
import 'package:pharma_app/features/pharmacy/features/Sales/presentation/screen/sales_daily_screen.dart';
import 'package:pharma_app/features/pharmacy/features/Sales/presentation/screen/sales_home_screen.dart';
import 'package:pharma_app/features/pharmacy/features/Sales/presentation/screen/sales_invoices_customers_screen.dart';
import 'package:pharma_app/features/pharmacy/features/Sales/presentation/screen/sales_invoices_daily_screen.dart';
import 'package:pharma_app/features/pharmacy/features/mointoring/screen/monitoring_home_screen.dart';
import 'package:pharma_app/features/pharmacy/features/mointoring/screen/monitoring_subaction_screen.dart';
import 'package:pharma_app/features/pharmacy/features/order/presentation/logic/cubit/order_cubit.dart';
import 'package:pharma_app/features/pharmacy/features/order/presentation/screen/order_create_screen.dart';
import 'package:pharma_app/features/pharmacy/features/order/presentation/screen/order_home_screen.dart';
import 'package:pharma_app/features/pharmacy/features/order/presentation/screen/order_receive_screen.dart';
import 'package:pharma_app/features/pharmacy/features/order/presentation/screen/order_reposatory_screen.dart';
import 'package:pharma_app/features/pharmacy/features/order/presentation/screen/order_send_screen.dart';
import 'package:pharma_app/features/pharmacy/features/order/presentation/screen/orders_type_screen.dart';
import 'package:pharma_app/features/pharmacy/pharmacyScreen.dart';
import 'package:pharma_app/injection_container.dart';

import '../../features/Auth/domain/usescase/auth_reset_password_usescase.dart';
import '../../features/Auth/presentation/screen/inforamtions/auth_info_screen.dart';

class RouterService {
  final CacheService _cacheService;
  late GoRouter router;

  RouterService({required CacheService cacheService})
      : _cacheService = cacheService {
    String initialLocation = _cacheService.getData<String>(
          key: AppKeys.initialLocationRoute,
        ) ??
        AppRoutes.onBoardingScreen;
    router = GoRouter(
      routes: [
        //-------------------------------------------
        // Main Routes
        //-------------------------------------------
        GoRoute(
          path: AppRoutes.mainScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: MainScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),
        //-------------------------------------------
        // Other Feature Routes
        //-------------------------------------------

        //-------------------------------------------
        // onBoarding
        //-------------------------------------------
        GoRoute(
          path: AppRoutes.onBoardingScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const OnBoardingScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),

        //-------------------------------------------
        // Authuntacation
        //-------------------------------------------

        // AuthRegeister
        GoRoute(
          path: AppRoutes.authRegeisterScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: BlocProvider<RegisterrCubit>(
              create: (context) => InjectionContainer.getIt<RegisterrCubit>(),
              child: const AuthRegeisterScreen(),
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),

        // AuthVerify
        GoRoute(
            path: AppRoutes.authVerifyScreen,
            pageBuilder: (context, state) {
              final String email = state.extra as String;
              return CustomTransitionPage(
                key: state.pageKey,
                child: BlocProvider(
                  create: (context) => InjectionContainer.getIt<VerifyCubit>(),
                  child: AuthVerifyScreen(
                    email: email,
                  ),
                ),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  final tween =
                      Tween(begin: const Offset(0, 1), end: Offset.zero);
                  return SlideTransition(
                    position: animation.drive(tween),
                    child: child,
                  );
                },
              );
            }),
        // AuthInfo
        GoRoute(
          path: AppRoutes.authInfoScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const AuthInfoScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),

        //  AuthLogin
        GoRoute(
          path: AppRoutes.authLoginScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: BlocProvider(
              create: (context) => InjectionContainer.getIt<LoginCubit>(),
              child: const AuthLoginScreen(),
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),
        //  AuthForget
        GoRoute(
          path: AppRoutes.forgetPasswordScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const AuthForgetScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),
        //  AuthReset
        GoRoute(
          path: AppRoutes.authResetScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: BlocProvider(
              create: (context) => ResetCubit(
                  InjectionContainer.getIt<AuthResetPasswordUsescase>()),
              child: const AuthResetScreen(),
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),

        //-------------------------------------------
        // Pharmacy
        //-------------------------------------------

        //Pharmacy Screen
        GoRoute(
          path: AppRoutes.pharmacyScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const PharmacyScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),

        //-------------------------------------------
        // Drugs
        //-------------------------------------------

        //Drugs Report
        GoRoute(
          path: AppRoutes.drugsTypesScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const DrugsTypesScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),
        //Drugs Home
        GoRoute(
          path: AppRoutes.drugsHomeScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const DrugHomeScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),
        //Drugs Batches
        GoRoute(
          path: AppRoutes.drugsBatchesScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const DrugBatchScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),
        //Drugs Detailes
        GoRoute(
          path: AppRoutes.drugsDetailesScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const DrugDeatailesScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),

        //-------------------------------------------
        // Order
        //-------------------------------------------

        //order Home
        GoRoute(
          path: AppRoutes.orderHomeScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: BlocProvider(
              create: (context) => OrderCubit(),
              child: const OrderHomeScreen(),
            ),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),
        // Order Create
        GoRoute(
          path: AppRoutes.orderCreateScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const OrederCreateScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),
        // Order Receive
        GoRoute(
          path: AppRoutes.orderReceiveScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const OrderReceiveScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),
        // Order Reposatory
        GoRoute(
          path: AppRoutes.orderReposatoryScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const OrderReposatoryScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),
        // Order Send
        GoRoute(
          path: AppRoutes.orderSendScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const OrderSendScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),
        // Order Type
        GoRoute(
          path: AppRoutes.orderTypeScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const OrdersTypeScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),

        //-------------------------------------------
        // Sales
        //-------------------------------------------

        //Sales Home
        GoRoute(
          path: AppRoutes.salesHomeScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const SalesHomeScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),
        //Sales Daily
        GoRoute(
          path: AppRoutes.salesDailyScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: SalesDailyScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),

        //Sales Customers Details
        GoRoute(
          path: AppRoutes.salesDailyScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: SalesDailyScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),
        //Sales Invoices Customers
        GoRoute(
          path: AppRoutes.salesInvoicesCustomersScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: SalesInvoicesCustomersScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),
        //Sales Invoices Daily
        GoRoute(
          path: AppRoutes.salesInvoicesDailyScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: SalesInvoicesDailyScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),
        //Sales Customers
        GoRoute(
          path: AppRoutes.salesCustomersScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: SalesCustomersScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),
        //Sales Customers All
        GoRoute(
          path: AppRoutes.salesAllCustomersScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const SalesAllCustomersScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),
        //Sales Customers Info
        GoRoute(
          path: AppRoutes.salesCustomerInforamtionsScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const SalesCustomerInformationsScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),

        //-------------------------------------------
        // Employee
        //-------------------------------------------

        //Employee Home
        GoRoute(
          path: AppRoutes.employeeHomeScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const EmployeeHomeScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),
        //Employee Create
        GoRoute(
          path: AppRoutes.employeeCreateScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const EmployeeCreateScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),
        //Employee Information
        GoRoute(
          path: AppRoutes.EmployeesInformationsScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const EmployeesInformationsScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),
        //Employee Personal
        GoRoute(
          path: AppRoutes.employeePersonalScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const EmployeePersonalScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),
        //Employee Roles
        GoRoute(
          path: AppRoutes.employeeRolesScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const EmployeeRolesScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),

        //-------------------------------------------
        // Mointoring
        //-------------------------------------------

        //Mointoring Home
        GoRoute(
          path: AppRoutes.monitoringHomeScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const MonitoringHomeScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),
        //Mointoring SubActions
        GoRoute(
          path: AppRoutes.MonitoringSubactionScreen,
          pageBuilder: (context, state) => CustomTransitionPage(
            key: state.pageKey,
            child: const MonitoringSubactionScreen(),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              final tween = Tween(begin: const Offset(0, 1), end: Offset.zero);
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        ),
        //
      ],
      initialLocation: initialLocation,
    );
  }
}
