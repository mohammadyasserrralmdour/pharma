import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pharma_app/core/constants/app_assets.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_dailog.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';

import '../../../../../core/constants/app_box_decoration.dart';

class EmployeeListRoles extends StatelessWidget {
  const EmployeeListRoles({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
            margin: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
            height: 110.h,
            width: double.infinity,
            decoration: ContainerBoxDecoration.pharmacyBox,
            child: Column(
              children: [
                Row(
                  children: [
                    const TextFont18Wight600(text: 'Role name'),
                    const Spacer(),
                    IconButton(
                        onPressed: () {
                          editRole(context);
                        },
                        icon: SvgPicture.asset(
                          "${AppAssets.rootSVGIcons}/Edit.svg",
                          fit: BoxFit.fill,
                          height: 30.h,
                          width: 20.w,
                        ))
                  ],
                ),
                verticalSpace(10),
                const TextFont16Wight400(text: "data")
              ],
            ),
          );
        },
      ),
    );
  }
}
