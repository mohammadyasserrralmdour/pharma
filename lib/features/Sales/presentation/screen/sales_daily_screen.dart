import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_app/core/widgets/PrimaryAbbpar.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';
import 'package:pharma_app/features/pharmacy/features/Sales/presentation/widget/sales_daily_customers_button.dart';
import 'package:pharma_app/features/pharmacy/features/Sales/presentation/widget/sales_daily_list.dart';
import 'package:pharma_app/features/pharmacy/features/Sales/presentation/widget/sales_date_and_totalprice_widget.dart';
import 'package:pharma_app/features/pharmacy/features/Sales/presentation/widget/sales_textformfield.dart';

// ignore: must_be_immutable
class SalesDailyScreen extends StatelessWidget {
  SalesDailyScreen({super.key});
  PageController pc = PageController(initialPage: 0);
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40.h, left: 15.w, right: 15.w),
        child: Column(
          children: [
            const PrimaryAppbar(title: "Sales",
             firstIcon: Icons.scanner,
              secondIcon: Icons.search,
            ),
            verticalSpace(20),
            DailyAndCustomersButton(
              pageController: pc,
              isDailyButton: true,
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

class SalesDaily extends StatelessWidget {
  const SalesDaily({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SalesDateAndTotalprice(
          date: "date",
          totalPrice: "data",
        ),
        const Expanded(
          child: SizedBox(child: SalesDailyList()),
        ),
        verticalSpace(20),
      ],
    );
  }
}

class SalesCustomers extends StatelessWidget {
  const SalesCustomers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextFont16Wight700(text: "Customers:"),
        const TextformfieldSearch(),
        verticalSpace(20),
        const SalesDateAndTotalprice(
          date: "date",
          totalPrice: "data",
        ),
        const Expanded(
          child: SizedBox(child: SalesDailyList()),
        ),
        verticalSpace(20),
      ],
    );
  }
}
