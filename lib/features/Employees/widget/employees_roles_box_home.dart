import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';

import '../../../../../core/constants/app_assets.dart';
import '../../../../../core/constants/app_box_decoration.dart';
import '../../../../../core/constants/app_routes.dart';

class EmployeesRolesBoxHome extends StatelessWidget {
  const EmployeesRolesBoxHome({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => GoRouter.of(context).push(AppRoutes.employeeRolesScreen),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 120.h,
        decoration: ContainerBoxDecoration.pharmacyBox,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                flex: 3,
                child:
                    SvgPicture.asset("${AppAssets.rootSVGImages}/roles.svg")),
            const Expanded(
                flex: 1,
                child: FittedBox(child: TextFont18Wight600(text: "Roles")))
          ],
        ),
      ),
    );
  }
}
