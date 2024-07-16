import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_app/core/constants/app_assets.dart';
import 'package:pharma_app/core/constants/app_box_decoration.dart';
import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/widgets/PrimaryAbbpar.dart';
import 'package:pharma_app/core/widgets/primary_arrow_button.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';
import 'package:pharma_app/features/pharmacy/features/Drugs/presentation/widget/pharmacy_text_title.dart';
import 'package:pharma_app/features/pharmacy/features/Employees/widget/employee_personal_box.dart';
import 'package:pharma_app/features/pharmacy/features/Employees/widget/employee_personal_sales.dart';

class EmployeePersonalScreen extends StatelessWidget {
  const EmployeePersonalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40.h, left: 15.w, right: 15.w),
        child: Column(
          children: [
            PrimaryAppbar(
              leading: const PrimaryArrowBackButton(),
              title: 'Employee',
              firstIcon: Icons.plus_one,
              secondIcon: Icons.search,
              firstfunction: () {
                GoRouter.of(context).push(AppRoutes.employeeCreateScreen);
              },
            ),
            verticalSpace(10.h),
            const EmployeePersonalData(),
            verticalSpace(15),
            const PharmacyTextTitleBlue(text: "Activities"),
            verticalSpace(15),
            const EmployeePersonalSalesBox(),
            verticalSpace(20),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
                child: FittedBox(
                    child: SvgPicture.asset(
                  "${AppAssets.rootSVGIcons}/personal.svg",
                  fit: BoxFit.fill,
                )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
