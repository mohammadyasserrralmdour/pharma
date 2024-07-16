import 'package:pharma_app/core/constants/app_box_decoration.dart';
import 'package:pharma_app/core/constants/app_text_styles.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrugBatchBox extends StatelessWidget {
  const DrugBatchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
      margin: EdgeInsets.symmetric(vertical: 10.h),
      decoration: ContainerBoxDecoration.pharmacyBox,
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [TextFont14Wight500(text: "#23"), TextFont14Wight500(text:"20-4-2022")],
          ),
          Align(
              alignment: Alignment.topLeft,
              child: Text(
                "amount:",
                style: AppTextStyles.workSans(16, FontWeight.w600),
              )),
          verticalSpace(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
              const   TextFont16Wight500(text: "text"),
                  verticalSpace(4),
                  const TextFont14Wight300(text:"data")
                ],
              ),
              //Container(width: 2.w,color: AppColors.primary,),
              Column(
                children: [
              const   TextFont16Wight500(text: "text"),
                  verticalSpace(4),
                  const TextFont14Wight300(text:"data")
                ],
              ),
              Column(
                children: [
              const   TextFont16Wight500(text: "text"),
                  verticalSpace(4),
                  const TextFont14Wight300(text:"data")
                ],
              )
            ],
          ),
          verticalSpace(10),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text("Price:",
                            style: AppTextStyles.workSans(16, FontWeight.w700)),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("expare data:",
                          style: AppTextStyles.workSans(16, FontWeight.w700)),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("barcode:",
                          style: AppTextStyles.workSans(16, FontWeight.w700)),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("25\$",
                          style: AppTextStyles.workSans(16, FontWeight.w500)),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("25\$",
                          style: AppTextStyles.workSans(16, FontWeight.w500)),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("25\$",
                          style: AppTextStyles.workSans(16, FontWeight.w500)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
