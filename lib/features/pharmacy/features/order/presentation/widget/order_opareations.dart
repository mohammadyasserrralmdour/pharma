

import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_text_styles.dart';
import 'package:flutter/material.dart';

class OrderOpareations extends StatelessWidget {
  final String opareation;
  final IconData iconData; 
  const OrderOpareations({super.key, required this.opareation, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return   Expanded(
              child: Container(
                width: 130,
                height: 70,
                decoration: const BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    boxShadow: [
                      BoxShadow(
                          color: AppColors.grayAccent,
                          offset: Offset(1.5, 5),
                          blurRadius: 4,
                          spreadRadius: 0),
                      BoxShadow(
                          color: AppColors.grayAccent,
                          offset: Offset(-1.5, 5),
                          blurRadius: 4,
                          spreadRadius: 0),
                    ]),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly
                  ,children: [
                    Icon(iconData),
                  Text(opareation,style: AppTextStyles.workSans(13, FontWeight.w600),),
                
                ],),
              ),
            );
  }
}//Icons.pending_actions_rounded