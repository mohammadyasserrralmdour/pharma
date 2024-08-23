import 'package:pharma_app/core/constants/app_assets.dart';
import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/widgets/PrimaryAbbpar.dart';
import 'package:pharma_app/core/widgets/primary_arrow_button.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/features/Drugs/presentation/widget/pharmacy_text_title.dart';
import 'package:pharma_app/features/pharmacy/features/mointoring/widget/monitoring_date_range_picker.dart';
import 'package:pharma_app/features/pharmacy/features/mointoring/widget/monitoring_stock_report.dart';
import 'package:pharma_app/features/pharmacy/features/mointoring/widget/monitoring_text_form_filed.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class MonitoringSubactionScreen extends StatefulWidget {
  const MonitoringSubactionScreen({super.key});

  @override
  State<MonitoringSubactionScreen> createState() =>
      _MonitoringSubactionScreenState();
}
class _MonitoringSubactionScreenState extends State<MonitoringSubactionScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40.h, left: 15.w, right: 15.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const PrimaryAppbar(
                leading: PrimaryArrowBackButton(),
                title: ' Stock',
                firstIcon: Icons.plus_one,
                secondIcon: Icons.search,
              ),
              SizedBox(
                height: 110.h,
                child: Row(
                  children: [
                    const Expanded(flex: 6, child: MonitoringTextFormFiled()),
                    horizantalSpace(20.w),
                    const Expanded(
                      flex: 5,
                      child: MonitoringDateRangePicker(),
                    )
                  ],
                ),
              ),
              verticalSpace(10),
              Divider(
                color: AppColors.black,
                height: 20,
                thickness: 1.h,
              ),
              const PharmacyTextTitleBlue(text: "Report"),
              verticalSpace(10.h),
              SizedBox(
                height: 100.h,
                child: Row(
                  children: [
                    Expanded(
                        child: SvgPicture.asset(
                      "${AppAssets.rootSVGImages}/stock_1.svg",
                      fit: BoxFit.fill,
                      height: height * 0.25,
                    )),
                    horizantalSpace(10.w),
                    Expanded(
                        child: SvgPicture.asset(
                      "${AppAssets.rootSVGImages}/stock_2.svg",
                      fit: BoxFit.fill,
                      height: height * 0.25,
                    ))
                  ],
                ),
              ),
              verticalSpace(15),
              const StockReport()
            ],
          ),
        ),
      ),
    );
  }
}
