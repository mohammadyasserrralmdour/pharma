import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/constants/app_text_styles.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class BrandAndScientaficDrugName extends StatelessWidget {
  final String brand;
  final String scientafic;
  const BrandAndScientaficDrugName(
      {super.key, required this.brand, required this.scientafic});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150.h,
      child: Row(
        children: [
          AspectRatio(
              aspectRatio: 1.3,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Padding(
                  padding: EdgeInsets.all(10.0.h),
                  child: Image.asset(
                    "assets/images/d6.png",
                    fit: BoxFit.fill,
                  ),
                ),
              )),
          horizantalSpace(5.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "Brand Name",
                    style: AppTextStyles.workSans(13, FontWeight.w600),
                  ),
                  Text(
                    brand,
                    style: AppTextStyles.workSans(12, FontWeight.w400),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Scientafic Name",
                    style: AppTextStyles.workSans(
                      13,
                      FontWeight.w600,
                    ),
                  ),
                  Text(
                    scientafic,
                    style: AppTextStyles.workSans(
                      12,
                      FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
          horizantalSpace(4.w),
          Expanded(
            child: Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  child:  Icon(Icons.info_outline_rounded,size: 20.dm,),
                  onTap: () =>
                      GoRouter.of(context).push(AppRoutes.drugsDetailesScreen),
                )),
          )
        ], //
      ),
    );
  }
}
