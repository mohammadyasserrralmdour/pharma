import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pharma_app/core/constants/app_assets.dart';
import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';

class SalesCustomersItem extends StatelessWidget {
  const SalesCustomersItem({super.key});

  @override
  Widget build(BuildContext context) {
  // double height = MediaQuery.of(context).size.height;
    return Container(
      height: 150.h,
      padding: EdgeInsets.all(10.r),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
          color: AppColors.primary20,
          boxShadow: [
            BoxShadow(
                color: AppColors.grayAccent,
                offset: Offset(1.5, 3),
                blurRadius: 1,
                spreadRadius: 0),
            BoxShadow(
                color: AppColors.grayAccent,
                offset: Offset(-1.5, 3),
                blurRadius: 1,
                spreadRadius: 0),
          ],
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
          ),
          const Spacer(),
          Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "${AppAssets.rootSVGIcons}/Document.svg",
                    fit: BoxFit.fill,
                    height: 20.h,
                    width: 20.w,
                  ),
                  horizantalSpace(5),
                  const TextFont14Wight500(text: "15")
                ],
              ),
              //  Spacer()
            ],
          )
        ],
      ),
    );
  }
}
