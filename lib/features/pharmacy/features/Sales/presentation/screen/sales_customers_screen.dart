import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_app/core/widgets/PrimaryAbbpar.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/features/Sales/presentation/screen/sales_daily_screen.dart';
import 'package:pharma_app/features/pharmacy/features/Sales/presentation/widget/sales_daily_customers_button.dart';

// ignore: must_be_immutable
class SalesCustomersScreen extends StatelessWidget {
  SalesCustomersScreen({super.key});
  PageController pc = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40.h, left: 15.w, right: 15.w),
        child: Column(
          children: [
            const PrimaryAppbar(
              title: "Sales",
              firstIcon: Icons.scanner,
              secondIcon: Icons.search,
            ),
            verticalSpace(20),
            DailyAndCustomersButton(
              pageController: pc,
              isDailyButton: false,
            ),
            verticalSpace(20),
            Expanded(
              child: SizedBox(
                child: PageView(
                  controller: pc,
                  children: const [SalesDaily(), SalesCustomers()],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
