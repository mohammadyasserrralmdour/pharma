import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_text_styles.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SalesDailyList extends StatelessWidget {
  const SalesDailyList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.symmetric(vertical: 20),
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10),
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
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
          child: Column(
            children: [
              Center(
                  child: Text(
                "Name",
                style: AppTextStyles.workSans(15, FontWeight.w700),
              )),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFont14Wight300(text: "amount"),
                  TextFont14Wight300(text: "price")
                ],
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFont14Wight500(text: "text"),
                  TextFont14Wight500(text: "text")
                ],
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                       Icon(size: 25.dm,
                        Icons.delete_outline_rounded,
                        color: AppColors.danger,
                      ),
                      horizantalSpace(5),
                       Icon(size: 25.dm,
                        Icons.edit,
                        color: AppColors.primaryButton,
                      )
                    ],
                  ),
                  Text(
                    "9:56 AM",
                    style: AppTextStyles.workSans(10, FontWeight.w400,
                        color: AppColors.gray),
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
