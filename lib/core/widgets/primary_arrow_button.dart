

import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class PrimaryArrowBackButton extends StatelessWidget {
  const PrimaryArrowBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () => GoRouter.of(context).pop(),
      child:  Icon(
                      Icons.arrow_back,
                      color: AppColors.black,
                      size: 30.dm,
                    ),
    );
  }
}