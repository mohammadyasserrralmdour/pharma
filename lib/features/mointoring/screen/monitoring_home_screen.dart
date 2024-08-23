import 'package:pharma_app/core/constants/app_assets.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_home_appbar.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';
import 'package:pharma_app/features/pharmacy/features/Drugs/presentation/widget/pharmacy_text_title.dart';
import 'package:pharma_app/features/pharmacy/features/mointoring/widget/monitoring_stock_informatios.dart';
import 'package:pharma_app/features/pharmacy/features/mointoring/widget/monitoring_stock_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MonitoringHomeScreen extends StatelessWidget {
  const MonitoringHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PharmacyHomeAppbar(),
            verticalSpace(15.h),
            const PharmacyTextTitleBlue(text: "Stock"),
            verticalSpace(10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Expanded(child: MonitoringStockType(stock: "Drug")),
                horizantalSpace(15.w),
                const Expanded(child: MonitoringStockType(stock: "Employee")),
              ],
            ),
            verticalSpace(10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Expanded(child: MonitoringStockType(stock: "Sales")),
                horizantalSpace(15.w),
                Expanded(child: Container()),
              ],
            ),
            verticalSpace(10.h),
            const PharmacyTextTitleBlue(text: "Full Stocking"),
            verticalSpace(10.h),
            SizedBox(
              height: 200.h,
              child: Row(
                children: [
                  Expanded(
                      child: SvgPicture.asset(
                    "${AppAssets.rootSVGImages}/stock_3.svg",
                    fit: BoxFit.fill,
                    height: height * 0.25,
                  )),
                  horizantalSpace(10.w),
                  Expanded(
                      child: Column(
                    children: [
                      Expanded(
                          child: SvgPicture.asset(
                        "${AppAssets.rootSVGImages}/stock_1.svg",
                        fit: BoxFit.fill,
                        height: height * 0.25,
                      )),
                      verticalSpace(10),
                      Expanded(
                          child: SvgPicture.asset(
                        "${AppAssets.rootSVGImages}/stock_2.svg",
                        fit: BoxFit.fill,
                        height: height * 0.25,
                      )),
                    ],
                  )),
                ],
              ),
            ),
            verticalSpace(15),
            const MonitoringStockInformatios()
          ],
        ),
      ),
    );
  }
}
