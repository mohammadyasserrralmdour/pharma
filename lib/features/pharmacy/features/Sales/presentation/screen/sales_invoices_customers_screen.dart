import 'package:pharma_app/core/widgets/PrimaryAbbpar.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/features/Sales/presentation/widget/sales_daily_customers_button.dart';
import 'package:pharma_app/features/pharmacy/features/Sales/presentation/widget/sales_invoices_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class SalesInvoicesCustomersScreen extends StatelessWidget {
  SalesInvoicesCustomersScreen({super.key});
  PageController pc = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40.h, left: 15.w, right: 15.w),
        child: Column(
          children: [
            const PrimaryAppbar(title: "Invoices",  
            secondIcon: Icons.search,),
            verticalSpace(15),
            DailyAndCustomersButton(pageController: pc, isDailyButton: false),
             verticalSpace(15),
            Expanded(
                child: SizedBox(
              child: PageView(
                controller: pc,
                children: [
                  SalesInvoicesList(),
                  SalesInvoicesList(
                    username: "Mohammad",
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
