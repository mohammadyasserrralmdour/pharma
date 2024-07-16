import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_home_appbar.dart';
import 'package:pharma_app/features/pharmacy/features/Sales/presentation/cubit/sales_cubit.dart';
import 'package:pharma_app/features/pharmacy/features/Sales/presentation/widget/sales_employees_home_item.dart';
import 'package:pharma_app/features/pharmacy/features/Sales/presentation/widget/sales_home_item.dart';
import 'package:pharma_app/features/pharmacy/features/Sales/presentation/widget/sales_invoices_home_item.dart';

class SalesHomeScreen extends StatelessWidget {
  const SalesHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SalesCubit(),
      child: Scaffold(
        body: Column(
          children: [
            const PharmacyHomeAppbar(),
            verticalSpace(15.h),
            Expanded(
                child: SizedBox(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SalesHomeBox(),
                    verticalSpace(15.h),
                    const SalesInvoicesHomeBox(),
                    verticalSpace(15.h),
                    const SalesEmployeesHomeBox()
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
