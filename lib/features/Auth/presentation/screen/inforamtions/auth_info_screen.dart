import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_app/core/constants/app_data.dart';
import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/widgets/primary_button.dart';
import 'package:pharma_app/core/widgets/primary_text_field.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/Auth/presentation/widget/auth_top_widget.dart';

class AuthInfoScreen extends StatelessWidget {
  const AuthInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double begainScreen=h*0.4;
    return Scaffold(
      body: Stack(
      children: [
       AuthHeadScreenWidget(dataAuthHeadScreen: listdataAuthHeadScreen["info"],),
        Container(
          margin: EdgeInsets.only(top: begainScreen),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.w),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const PrimaryTextField(
                        labelText: " name", hintText: "Enter your name"),
                    verticalSpace(15),
                    const PrimaryTextField(
                      labelText: " phone",
                      hintText: "Enter your phone",
                    ),
                    verticalSpace(15),
                    const PrimaryTextField(
                        labelText: " location", hintText: "Enter your location"),
                    verticalSpace(15),
                    const PrimaryTextField(
                        labelText: " policeies",
                        hintText: "Enter your policeies"),
              
                    verticalSpace(15),
                      PrimaryButton(
                text: 'Verify',
                onPressed: () {
                  GoRouter.of(context).push(AppRoutes.pharmacyScreen);
                }),
                  
                  ],
                ),
              ),
            )),
      ],
    ),
    );
  }
}

