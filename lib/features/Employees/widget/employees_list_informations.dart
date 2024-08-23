import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_app/core/constants/app_assets.dart';
import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';

import '../../../../../core/constants/app_box_decoration.dart';

class EmployeesListInformations extends StatelessWidget {
  const EmployeesListInformations({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 10.h),
      itemCount: 10,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () =>
              GoRouter.of(context).push(AppRoutes.employeePersonalScreen),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            height: 110.h,
            width: double.infinity,
            margin: EdgeInsets.symmetric(vertical: 10.h),
            decoration: ContainerBoxDecoration.pharmacyBox,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 3.w, color: AppColors.black),
                          color: Colors.white,
                          shape: BoxShape.circle),
                      width: 120,
                      height: 120,
                      alignment: Alignment.center,
                      child: FittedBox(
                          child: Icon(
                        Icons.person,
                        size: 80.dm,
                        color: AppColors.black,
                      ))),
                ),
                horizantalSpace(15.w),
                Expanded(
                    flex: 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const TextFont18Wight600(text: "Mohammad Almdour"),
                        Row(children: [
                          SvgPicture.asset(
                            "${AppAssets.rootSVGIcons}/Call.svg",
                            fit: BoxFit.fill,
                            height: 20.h,
                            width: 20.w,
                          ),
                          horizantalSpace(5),
                          const TextFont14Wight500(
                            text: "0981560395",
                          ) //Text("0981560395")
                        ]),
                        Row(children: [
                          SvgPicture.asset(
                            "${AppAssets.rootSVGIcons}/Location.svg",
                            fit: BoxFit.fill,
                            height: 20.h,
                            width: 20.w,
                          ),
                          horizantalSpace(5),
                          const TextFont14Wight500(text: "Douma")
                        ])
                      ],
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}
