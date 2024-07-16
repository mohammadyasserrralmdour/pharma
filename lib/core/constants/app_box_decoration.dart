

import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContainerBoxDecoration{
  static Decoration pharmacyBox= BoxDecoration(
                          color: AppColors.primary20,
                          borderRadius: BorderRadius.all(Radius.circular(10.r)),
                          boxShadow:const  [
                            BoxShadow(
                                color: AppColors.grayAccent,
                                blurRadius: 4,
                                spreadRadius: 0.5,
                                offset: Offset(0, 1.9))
                          ]);
}