import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_app/core/constants/app_data.dart';
import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/widgets/primary_button.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/Auth/presentation/logic/register/cubit/register_cubit.dart';
import 'package:pharma_app/features/Auth/presentation/widget/AccountTypeContainer.dart';
import 'package:pharma_app/features/Auth/presentation/widget/AuthTopWidget.dart';
import 'package:pharma_app/features/Auth/presentation/widget/ExplainingAboutAccount.dart';

class AuthAccountScreen extends StatelessWidget {
  const AuthAccountScreen({super.key});
  
  @override
  Widget build(BuildContext context) {
    double h=MediaQuery.of(context).size.height;
    double begainScreen=h*0.42;
    return Scaffold(body: 
    Stack(
      children: [
        AuthHeadScreenWidget(dataAuthHeadScreen: listdataAuthHeadScreen["account"],),
        Positioned(
            top: begainScreen,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  
                  BlocBuilder<RegisterCubit, RegisterState>(
                    builder: (context, state) {
                      state.whenOrNull(
                        initial: () {
                          Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AccountTypeContainer(
          name: "Repository",
          iconData: Icons.storage,
          isSelect: false,
        ),
        Container(width: 55),
        AccountTypeContainer(
          name: "Pharmacy",
          iconData: Icons.local_pharmacy_outlined,
          isSelect: false,
        ),
      ],
    );
                        },pharmacy: (){
                          Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AccountTypeContainer(
          name: "Repository",
          iconData: Icons.storage,
          isSelect: false,
        ),
        Container(width: 55),
        AccountTypeContainer(
          name: "Pharmacy",
          iconData: Icons.local_pharmacy_outlined,
          isSelect: true,
        ),
      ],
    );
                        },repository:(){
                          Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AccountTypeContainer(
          name: "Repository",
          iconData: Icons.storage,
          isSelect: true,
        ),
        Container(width: 55),
        AccountTypeContainer(
          name: "Pharmacy",
          iconData: Icons.local_pharmacy_outlined,
          isSelect: false,
        ),
      ],
    );
                        } 
                      );return Container();
  

},

                    ),
                  verticalSpace(40.h),
                  const ExplainingAboutAccount(text: "Drugs monitor"),
                  const ExplainingAboutAccount(text: "Manage employees"),
                  const ExplainingAboutAccount(
                      text: "Sales drug for customers"),
                  const ExplainingAboutAccount(
                      text: "Request Drug form repositories "),
                ],
              ),
            )),
        Positioned(
            bottom: 15,
            left: 0,
            right: 0,
            child: PrimaryButton(
                text: 'Verify',
                onPressed: () {
                  GoRouter.of(context).push(AppRoutes.authInfoScreen);
                }),
          ),
      ],
    ),);
  }
}

