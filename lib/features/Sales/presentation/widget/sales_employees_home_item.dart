import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_app/core/constants/app_assets.dart';
import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/widgets/secondary_button.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_dailog.dart';
import 'package:pharma_app/features/pharmacy/features/Drugs/presentation/widget/pharmacy_text_title.dart';

class SalesEmployeesHomeBox extends StatelessWidget {
  const SalesEmployeesHomeBox({super.key});

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
              flex: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const PharmacyTextTitleBlue(text: "Customers"),
                  Row(
                    children: [
                      SecondaryButton(
                          text: "All",
                          onPressed: () => GoRouter.of(context)
                              .push(AppRoutes.salesAllCustomersScreen)),
                      horizantalSpace(10),
                      SecondaryButton(
                          text: "Create",
                          onPressed: () => createCustomers(context))
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
                      "${AppAssets.rootSVGImages}/employees.svg",
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
