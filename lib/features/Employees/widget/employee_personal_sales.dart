import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_app/core/constants/app_box_decoration.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';

import '../../../../../core/widgets/vertical_and_horizantail_space.dart';

class EmployeePersonalSalesBox extends StatelessWidget {
  const EmployeePersonalSalesBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.h,
      width: double.infinity,
      decoration: ContainerBoxDecoration.pharmacyBox,
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      child: Column(
        children: [ 
          Row(
            children: [
              const TextFont18Wight600(text: "Sales"),
              const Spacer(),
              Row(
                children: [
                  Icon(
                    Icons.calendar_month,
                    size: 22.dm,
                  ),
                  horizantalSpace(5.w),
                  const TextFont12Wight500(text: "20-4-2023")
                ],
              )
            ],
          ),
          verticalSpace(10),
          const FittedBox(
            child: TextFont16Wight500(
              text: "he sale more than 110\$ in yesterday",
            ),
          )
        ],
      ),
    );
  }
}
