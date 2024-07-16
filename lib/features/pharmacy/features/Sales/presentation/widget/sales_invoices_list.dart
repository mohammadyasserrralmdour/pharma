import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_text_styles.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class SalesInvoicesList extends StatelessWidget {
  String? username;

  SalesInvoicesList({
    super.key,
    this.username,
  });

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    return SizedBox(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Container(
            height: height*0.135,
            padding: EdgeInsets.all(10.r),
            margin: EdgeInsets.symmetric(vertical: 10.h),
            decoration:  BoxDecoration(
                color: AppColors.primary20,
                boxShadow:const [
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
                borderRadius: BorderRadius.all(Radius.circular(10.r))),
            child: Row(
              children: [
                const Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                       TextFont14Wight600(text: "123#"),
                      ],
                    )),
                 VerticalDivider(
                  color: AppColors.primaryButton,
                  thickness: 1,
                  width: 30,
                ),
                const Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFont16Wight700(text: "256\$"),
                        TextFont14Wight300(text: "20-6-2023")
                      ],
                    )),
                Expanded(flex: 2,
                    child: Column(children: [
                  Text(username??"",
                      style: AppTextStyles.workSans(14, FontWeight.w600,
                          color: AppColors.primary))
                ]))
              ],
            ),
          );
        },
      ),
    );
  }
}
