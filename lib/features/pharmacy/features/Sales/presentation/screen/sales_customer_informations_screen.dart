import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_app/core/widgets/primary_arrow_button.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_dailog.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';
import 'package:pharma_app/features/pharmacy/features/Sales/presentation/widget/sales_invoices_list.dart';

import '../../../../../../core/widgets/PrimaryAbbpar.dart';
import '../../../../../../core/widgets/vertical_and_horizantail_space.dart';

class SalesCustomerInformationsScreen extends StatelessWidget {
  const SalesCustomerInformationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40.h, left: 15.w, right: 15.w),
        child: Column(
          children: [
            PrimaryAppbar(
              leading: const PrimaryArrowBackButton(),
              title: "Customers",
              firstIcon: Icons.add,
              firstfunction: () => createCustomers(context),
              secondIcon: Icons.search,
            ),
            verticalSpace(20),
            SizedBox(
                height: 120.h,
                child: const Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextFont16Wight700(text: "Name:"),
                            TextFont16Wight700(text: "Phone:"),
                            TextFont16Wight700(text: "Address:"),
                          ],
                        )),
                    Expanded(
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextFont14Wight500(text: "Mohammad"),
                            TextFont14Wight500(text: "0981560395"),
                            TextFont14Wight500(text: "Douma")
                          ],
                        )),
                  ],
                )),
            Expanded(child: SizedBox(child: SalesInvoicesList()))
          ],
        ),
      ),
    );
  }
}
