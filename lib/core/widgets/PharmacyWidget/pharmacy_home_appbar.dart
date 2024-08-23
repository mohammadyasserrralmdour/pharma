import 'package:pharma_app/core/constants/app_assets.dart';
import 'package:pharma_app/core/widgets/PrimaryAbbpar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PharmacyHomeAppbar extends StatelessWidget {
  const PharmacyHomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryAppbar(
        leading: FittedBox(
          child: Image.asset(fit: BoxFit.fill,
          height: 35.h,width:30.w ,
            "${AppAssets.rootImages}/drug.png"
            
          ),
        ),
        title: "PharmaPlus",
        firstIcon: Icons.notifications_none_sharp,
        secondIcon: Icons.settings);
  }
}
