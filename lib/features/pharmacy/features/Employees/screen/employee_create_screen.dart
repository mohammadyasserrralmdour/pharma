import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/widgets/PrimaryAbbpar.dart';
import 'package:pharma_app/core/widgets/primary_arrow_button.dart';
import 'package:pharma_app/core/widgets/primary_image_picker.dart';
import 'package:pharma_app/core/widgets/primary_text_field.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class EmployeeCreateScreen extends StatelessWidget {
  const EmployeeCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40.h, left: 15.w, right: 15.w),
        child: Column(
          children: [
             PrimaryAppbar(
              leading:const PrimaryArrowBackButton(),
              title: 'Create Employee',
              firstIcon: Icons.shield_outlined,firstfunction: () {
                GoRouter.of(context).push(AppRoutes.employeePersonalScreen);
              },
            ),
            verticalSpace(10),
            Expanded(
                child: SizedBox(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const PrimaryTextField(
                        labelText: "Name", hintText: "Enter your Name"),
                    verticalSpace(4),
                    const PrimaryTextField(
                        labelText: "Phone", hintText: "Enter your Phone"),
                    verticalSpace(4),
                    const PrimaryTextField(
                        labelText: "Email", hintText: "Enter your Email"),
                    verticalSpace(4),
                    const PrimaryTextField(
                        labelText: "Password", hintText: "Enter your Password"),
                    verticalSpace(4),
                    const PrimaryTextField(
                        labelText: "Confirm Password",
                        hintText: "Enter your Confirm Password"),
                    verticalSpace(4),
                      const PrimaryImagePicker(labelText: "labelText"),
                    const PrimaryTextField(
                        labelText: "Address", hintText: "Enter your"),
                    verticalSpace(4),
                    const PrimaryTextField(
                        labelText: "roles", hintText: "Enter your roles")
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
