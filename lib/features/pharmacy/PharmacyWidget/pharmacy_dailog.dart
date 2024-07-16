import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_text_styles.dart';
import 'package:pharma_app/core/widgets/primary_text_field.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

createRequest(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Container(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FittedBox(
                child: Text(
                  "Create Request",
                  style: AppTextStyles.workSans(30, FontWeight.w700),
                ),
              ),
              verticalSpace(10),
              const PrimaryTextField(
                labelText: "Drugs names",
                hintText: "Enter full name",
              ),
              verticalSpace(5),
              const PrimaryTextField(
                labelText: "Detailes & notes",
                hintText: "Enter your notes",
              ),
            ],
          ),
        ),
        actions: [
          MaterialButton(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
            color: AppColors.primary30,
            onPressed: () => null,
            child: Text(
              "cancel",
              style: AppTextStyles.workSans(14, FontWeight.w600,
                  color: AppColors.primary),
            ),
          ),
          MaterialButton(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
            color: AppColors.primary,
            onPressed: () => null,
            child: Text(
              "send",
              style: AppTextStyles.workSans(14, FontWeight.w600,
                  color: AppColors.white),
            ),
          )
        ],
      );
    },
  );
}

createRole(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Container(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FittedBox(
                child: Text(
                  "Create Role",
                  style: AppTextStyles.workSans(30, FontWeight.w700),
                ),
              ),
              verticalSpace(10),
              const PrimaryTextField(
                labelText: "name",
                hintText: "Enter your name",
              ),
              verticalSpace(5),
              const PrimaryTextField(
                labelText: "permeations",
                hintText: "select permeations",
              ),
            ],
          ),
        ),
        actions: [
          MaterialButton(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
            color: AppColors.primary30,
            onPressed: () => null,
            child: Text(
              "cancel",
              style: AppTextStyles.workSans(14, FontWeight.w600,
                  color: AppColors.primary),
            ),
          ),
          MaterialButton(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
            color: AppColors.primary,
            onPressed: () => null,
            child: Text(
              "create",
              style: AppTextStyles.workSans(14, FontWeight.w600,
                  color: AppColors.white),
            ),
          )
        ],
      );
    },
  );
}

createCustomers(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Container(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FittedBox(
                child: Text(
                  "Create Customers",
                  style: AppTextStyles.workSans(27, FontWeight.w700),
                ),
              ),
              verticalSpace(10),
              const PrimaryTextField(
                labelText: "Name",
                hintText: "Enter your name",
              ),
              verticalSpace(5),
              const PrimaryTextField(
                labelText: "Phone",
                hintText: "Enter your phone ",
              ),
              verticalSpace(5),
              const PrimaryTextField(
                labelText: "Address",
                hintText: "Enter your Address ",
              ),
            ],
          ),
        ),
        actions: [
          MaterialButton(
            shape: const StadiumBorder(),
            padding:  EdgeInsets.symmetric(vertical: 8.h, horizontal: 6.w),
            color: AppColors.primary30,
            onPressed: () => null,
            child: Text(
              "cancel",
              style: AppTextStyles.workSans(14, FontWeight.w600,
                  color: AppColors.primary),
            ),
          ),
          MaterialButton(
            shape: const StadiumBorder(),
            padding:  EdgeInsets.symmetric(vertical: 8.h, horizontal: 6.w),
            color: AppColors.primary,
            onPressed: () => null,
            child: Text(
              "create",
              style: AppTextStyles.workSans(14, FontWeight.w600,
                  color: AppColors.white),
            ),
          )
        ],
      );
    },
  );
}

editRole(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Container(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FittedBox(
                child: Text(
                  "Edit Role",
                  style: AppTextStyles.workSans(30, FontWeight.w700),
                ),
              ),
              verticalSpace(10),
              const PrimaryTextField(
                labelText: "name",
                hintText: "Enter your name",
              ),
              verticalSpace(5),
              const PrimaryTextField(
                labelText: "permeations",
                hintText: "select permeations",
              ),
            ],
          ),
        ),
        actions: [
          MaterialButton(
            shape: const StadiumBorder(),
            padding:  EdgeInsets.symmetric(vertical: 8.h, horizontal: 6.w),
            color: AppColors.primary30,
            onPressed: () => null,
            child: Text(
              "cancel",
              style: AppTextStyles.workSans(14, FontWeight.w600,
                  color: AppColors.primary),
            ),
          ),horizantalSpace(5.w),
          MaterialButton(
            shape: const StadiumBorder(),
            padding:  EdgeInsets.symmetric(vertical: 8.h, horizontal: 6.w),
            color: AppColors.primary,
            onPressed: () => null,
            child: Text(
              "edit",
              style: AppTextStyles.workSans(14, FontWeight.w600,
                  color: AppColors.white),
            ),
          )
        ],
      );
    },
  );
}

createBatch(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Container(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          
          child: Column(mainAxisSize: MainAxisSize.min,
            children: [
              FittedBox(
                child: Text(
                  "Create Batch",
                  style: AppTextStyles.workSans(30, FontWeight.w700),
                ),
              ),
              verticalSpace(10),
              const PrimaryTextField(
                labelText: "Drugs",
                hintText: "Search about drug",
              ),
              verticalSpace(5),
              Row(
                children: [
                  const Expanded(
                      child: PrimaryTextField(
                    labelText: "Amount",
                    hintText: "Enter amount",
                  )),
                  horizantalSpace(5),
                  const Expanded(
                      child: PrimaryTextField(
                    labelText: "Price",
                    hintText: "Enter price",
                  ))
                ],
              ),
              verticalSpace(5),
              Row(
                children: [
                  const Expanded(
                      child: PrimaryTextField(
                    labelText: "Expire Date",
                    hintText: "click to chose",
                  )),
                  horizantalSpace(5),
                  const Expanded(
                      child: PrimaryTextField(
                          labelText: "Barcode", hintText: "click to scan"))
                ],
              ),
            ],
          ),
        ),
        actions: [
          MaterialButton(
            shape: const StadiumBorder(),
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
            color: AppColors.primary30,
            onPressed: () => null,
            child: Text(
              "cancel",
              style: AppTextStyles.workSans(14, FontWeight.w600,
                  color: AppColors.primary),
            ),
          ),
          MaterialButton(
            shape: const StadiumBorder(),
            padding:  EdgeInsets.symmetric(vertical: 8.h, horizontal: 6.w),
            color: AppColors.primary,
            onPressed: () => null,
            child: Text(
              "create",
              style: AppTextStyles.workSans(14, FontWeight.w600,
                  color: AppColors.white),
            ),
          )
        ],
      );
    },
  );
}

changePrice(BuildContext context) {
  return showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: Container(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          child: Column(mainAxisSize: MainAxisSize.min,
            children: [
              FittedBox(
                child: Text(
                  "Change Price",
                  style: AppTextStyles.workSans(30, FontWeight.w700),
                ),
              ),
              verticalSpace(10),
              const PrimaryTextField(
                labelText: "New Price",
                hintText: "Enter your price",
              ),
            ],
          ),
        ),
        actions: [
          MaterialButton(
            shape: const StadiumBorder(),
            padding:  EdgeInsets.symmetric(vertical: 8.h, horizontal: 6.w),
            color: AppColors.primary30,
            onPressed: () => null,
            child: Text(
              "cancel",
              style: AppTextStyles.workSans(14, FontWeight.w600,
                  color: AppColors.primary),
            ),
          ),horizantalSpace(5.w),
          MaterialButton(
            shape: const StadiumBorder(),
            padding:  EdgeInsets.symmetric(vertical: 8.h, horizontal: 6.w),
            color: AppColors.primary,
            onPressed: () => null,
            child: Text(
              "change",
              style: AppTextStyles.workSans(14, FontWeight.w600,
                  color: AppColors.white),
            ),
          )
        ],
      );
    },
  );
}
