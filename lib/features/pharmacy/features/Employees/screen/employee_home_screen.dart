import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_app/core/constants/app_assets.dart';
import 'package:pharma_app/core/constants/app_box_decoration.dart';
import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_home_appbar.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_percentages.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';
import 'package:pharma_app/features/pharmacy/features/Drugs/presentation/widget/pharmacy_text_title.dart';
import 'package:pharma_app/features/pharmacy/features/Employees/widget/employees_box_home.dart';
import 'package:pharma_app/features/pharmacy/features/Employees/widget/employees_roles_box_home.dart';
import 'package:pie_chart/pie_chart.dart';

class EmployeeHomeScreen extends StatelessWidget {
  const EmployeeHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PharmacyHomeAppbar(),
        verticalSpace(30.h),
        Row(
          children: [
            const Expanded(child: EmployeesBoxHome()),
            horizantalSpace(10.w),
            const Expanded(child: EmployeesRolesBoxHome()),
          ],
        ),
        verticalSpace(40.h),
        const PharmacyTextTitleBlue(text: "Employees Activities"),
        verticalSpace(20),
        const PharmacyPercentages()
      ],
    );
  }
}
