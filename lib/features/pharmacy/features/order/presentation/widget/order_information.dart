import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OrderInformation extends StatelessWidget {
  final String name;
  final int price;
  final String date;
  final String status;
  const OrderInformation(
      {super.key,
      required this.name,
      required this.price,
      required this.date,
      required this.status});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () => GoRouter.of(context).push(AppRoutes.orderCreateScreen),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 9),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  name,
                  style: AppTextStyles.workSans(15, FontWeight.w700),
                ),
                Text("$price\$")
              ],
            ),
            Column(
              children: [
                Text(status,style: AppTextStyles.workSans(15, FontWeight.w500,color: AppColors.gray),),
                 Text(date,style: AppTextStyles.workSans(12, FontWeight.w500,color: AppColors.gray),)],
            )
          ],
        ),
      ),
    );
  }
}
