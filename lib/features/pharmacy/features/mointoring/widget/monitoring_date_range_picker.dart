import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_text_styles.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class MonitoringDateRangePicker extends StatefulWidget {
  const MonitoringDateRangePicker({super.key});

  @override
  State<MonitoringDateRangePicker> createState() =>
      _MonitoringDateRangePickerState();
}

class _MonitoringDateRangePickerState extends State<MonitoringDateRangePicker> {
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Text(
              "Range Date",
              style: AppTextStyles.workSans(14, FontWeight.w500,
                  color: AppColors.gray),
            ),
            horizantalSpace(30.w),
            InkWell(
              splashColor: AppColors.white,
              onTap: () async {
                showDialog(
                  context: context,
                  builder: (context) {
                    return showDialogRangeDate();
                  },
                );
              },
              child: Icon(
                size: 24.dm,
                Icons.date_range_outlined,
                color: AppColors.primaryButton,
              ),
            )
          ],
        ),
        TextFont12Wight500(
            text: "${startDate.year} - ${startDate.month} - ${startDate.day}"),
        TextFont12Wight500(
          text: "${endDate.year} - ${endDate.month} - ${endDate.day}",
        ),
        verticalSpace(10)
      ],
    );
  }

  showDate(String dateType) async {
    context.pop();
    final DateTime? dateTime = await showDatePicker(
      context: context,
      initialDate: startDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(3000),
    );
    if (dateTime != null) {
      setState(() {
        dateType == "Start" ? startDate = dateTime : endDate = dateTime;
      });
    }
  }

  showDialogRangeDate() {
    return SimpleDialog(
      alignment: Alignment.center,
      children: [
        Center(
            child: Column(
          children: [
            //  const TextFont18Wight600(text: "Date Range"),
            Text(
              "Choose Range Date",
              style: AppTextStyles.workSans(
                25,
                FontWeight.w700,
              ),
            ),
            verticalSpace(30.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                MaterialButton(
                  shape: const StadiumBorder(),
                  padding:
                      EdgeInsets.symmetric(vertical: 12.h, horizontal: 15.w),
                  color: AppColors.primary20,
                  onPressed: () => showDate("Start"),
                  child: Text(
                    "Start Date",
                    style: AppTextStyles.workSans(14, FontWeight.w600,
                        color: AppColors.primary),
                  ),
                ),
                MaterialButton(
                  shape: const StadiumBorder(),
                  padding:
                      EdgeInsets.symmetric(vertical: 12.h, horizontal: 15.w),
                  color: AppColors.primary20,
                  onPressed: () => showDate("End"),
                  child: Text(
                    "End Date",
                    style: AppTextStyles.workSans(14, FontWeight.w600,
                        color: AppColors.primary),
                  ),
                ),
              ],
            ),
          ],
        ))
      ],
    );
  }
}
