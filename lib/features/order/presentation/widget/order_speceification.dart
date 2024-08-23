import 'package:pharma_app/core/constants/app_text_styles.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:flutter/material.dart';

class OrderSpeceification extends StatelessWidget {
  final String repository;
  final String status;
  final String price;

  const OrderSpeceification({super.key, required this.repository, required this.status, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Repository:",
                    style: AppTextStyles.workSans(16, FontWeight.w700),
                  )),
              verticalSpace(5),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Status;",
                    style: AppTextStyles.workSans(16, FontWeight.w700),
                  )),
              verticalSpace(5),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Total Price:",
                    style: AppTextStyles.workSans(16, FontWeight.w700),
                  )),
            ],
          ),
        ),
        Expanded(flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    repository,
                    style: AppTextStyles.workSans(14, FontWeight.w400),
                  )),
              verticalSpace(5),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    status,
                    style: AppTextStyles.workSans(14, FontWeight.w400),
                  )),
              verticalSpace(5),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    price,
                    style: AppTextStyles.workSans(14, FontWeight.w400),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
