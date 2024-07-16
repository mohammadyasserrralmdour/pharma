import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_app/core/widgets/PrimaryAbbpar.dart';
import 'package:pharma_app/core/widgets/primary_arrow_button.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_dailog.dart';
import 'package:pharma_app/features/pharmacy/features/Sales/presentation/widget/sales_customers_item.dart';

import '../../../../../../core/constants/app_routes.dart';

class SalesAllCustomersScreen extends StatelessWidget {
  const SalesAllCustomersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Padding(
        padding: EdgeInsets.only(top: 40.h, left: 15.w, right: 15.w),
        child: Column(
          children: [
            PrimaryAppbar(leading:const PrimaryArrowBackButton(),
                title: "Customer",
                firstIcon: Icons.add,
                firstfunction:()=> createCustomers(context),
               secondIcon: Icons.search,

                ),
            Expanded(
                child: SizedBox(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () => GoRouter.of(context)
                          .push(AppRoutes.salesCustomerInforamtionsScreen),
                      child: const SalesCustomersItem());
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
