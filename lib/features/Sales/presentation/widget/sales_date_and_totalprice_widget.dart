

import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/widgets/vertical_and_horizantail_space.dart';

class SalesDateAndTotalprice extends StatelessWidget {
  final String date;
  final String totalPrice;
  const SalesDateAndTotalprice({super.key, required this.date, required this.totalPrice});

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
              Row(children: [
              const  Expanded(child: TextFont16Wight700(text: "Date")),
                horizantalSpace(25.w),
                Expanded(child: TextFont14Wight500(text: date))
              ],),verticalSpace(10),
                Row(children: [
              const  Expanded(child: TextFont16Wight700(text: "TotalPrice")),
                horizantalSpace(25.w),
                Expanded(child: TextFont14Wight500(text: totalPrice))
              ],)
            ]);
  }
}