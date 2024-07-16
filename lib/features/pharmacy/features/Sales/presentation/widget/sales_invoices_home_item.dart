import 'package:pharma_app/core/constants/app_assets.dart';
import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/widgets/secondary_button.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/features/Drugs/presentation/widget/pharmacy_text_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';

class SalesInvoicesHomeBox extends StatelessWidget {
  const SalesInvoicesHomeBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.h,
      padding:  EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      decoration: const BoxDecoration(
          color: AppColors.primary30,
          boxShadow: [
            BoxShadow(
                color: AppColors.grayAccent,
                offset: Offset(1.5, 5),
                blurRadius: 4,
                spreadRadius: 0),
            BoxShadow(
                color: AppColors.grayAccent,
                offset: Offset(-1.5, 5),
                blurRadius: 4,
                spreadRadius: 0),
          ],
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const PharmacyTextTitleBlue(text: "Invoice"),
                  Row(
                    children: [
                      SecondaryButton(
                          text: "Daily",
                          onPressed: () => GoRouter.of(context)
                              .push(AppRoutes.salesInvoicesDailyScreen)),
                      horizantalSpace(10),
                      SecondaryButton(
                          text: "Customers",
                          onPressed: () => GoRouter.of(context)
                              .push(AppRoutes.salesInvoicesCustomersScreen))
                    ],
                  )
                ],
              )),
          Expanded(
              flex: 2,
              child: Column(
                children: [
                  Expanded(
                    child: SvgPicture.asset(
                      "${AppAssets.rootSVGImages}/invoices.svg",
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
