import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthIndecator extends StatelessWidget {
  final int lenght;
  final int counter;
  const AuthIndecator({super.key, required this.lenght, required this.counter});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        lenght,
        (index) => Column(
          children: [
            CircleAvatar(
              radius: 7.r,
              backgroundColor: index==counter?AppColors.primaryButton:AppColors.grayAccent,
            ),
            verticalSpace(7)
          ],
        ),
      ),
    );
  }
}
