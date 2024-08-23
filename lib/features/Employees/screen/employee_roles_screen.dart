import 'package:pharma_app/core/constants/app_assets.dart';
import 'package:pharma_app/core/constants/app_box_decoration.dart';
import 'package:pharma_app/core/widgets/PrimaryAbbpar.dart';
import 'package:pharma_app/core/widgets/primary_arrow_button.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_dailog.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharma_app/features/pharmacy/features/Employees/widget/employee_list_roles.dart';

class EmployeeRolesScreen extends StatelessWidget {
  const EmployeeRolesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40.h, left: 15.w, right: 15.w),
        child: Column(
          children: [
            PrimaryAppbar(
              leading: const PrimaryArrowBackButton(),
              title: 'Roles',
              firstIcon: Icons.plus_one,
              secondIcon: Icons.search,
              firstfunction: () {
                createRole(context);
              },
              secondfunction: () {
                editRole(context);
              },
            ),
            const Expanded(child: EmployeeListRoles())
          ],
        ),
      ),
    );
  }
}
