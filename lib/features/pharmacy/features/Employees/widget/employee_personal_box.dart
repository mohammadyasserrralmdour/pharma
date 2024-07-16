import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';

class EmployeePersonalData extends StatelessWidget {
  const EmployeePersonalData({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> profileData = [
      "Name:",
      "Role:",
      "Address:",
      "Phone:",
      "Email:"
    ];
    return SizedBox(
      height: 130.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(width: 3.w, color: AppColors.black),
                    color: Colors.white,
                    shape: BoxShape.circle),
                width: 220,
                height: 220,
                alignment: Alignment.center,
                child: FittedBox(
                    child: Icon(
                  Icons.person,
                  size: 160.dm,
                  color: AppColors.black,
                ))),
          ),
          horizantalSpace(10),
          Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.centerLeft,
                child: FittedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(
                      5,
                      (index) => Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          TextFont16Wight700(
                            text: profileData[index],
                          ),
                          horizantalSpace(4),
                          const TextFont16Wight500(text: "data")
                        ],
                      ),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
