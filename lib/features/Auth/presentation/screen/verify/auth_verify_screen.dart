import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_data.dart';
import 'package:pharma_app/core/widgets/primary_button.dart';
import 'package:pharma_app/core/widgets/primary_otp_text_field.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/Auth/presentation/screen/verify/cubit/verify_cubit.dart';
import 'package:pharma_app/features/Auth/presentation/widget/auth_top_widget.dart';
import 'package:pharma_app/features/Auth/presentation/widget/auth_verify_bloc_listener.dart';

// ignore: must_be_immutable

// ignore: must_be_immutable

class AuthVerifyScreen extends StatefulWidget {
     final String email;

   const AuthVerifyScreen({super.key, required this.email});


  @override
  State<AuthVerifyScreen> createState() => _AuthVerifyScreenState();
}

class _AuthVerifyScreenState extends State<AuthVerifyScreen> {
  @override
    String otp = "";
    @override
  void initState() {
    super.initState();
   // context.read<VerifyCubit>().sendCodeCubit(widget.email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AuthHeadScreenWidget(
            dataAuthHeadScreen: listdataAuthHeadScreen["verify"],
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                verticalSpace(150),
                
                Text(
                  "Verify Code",
                  style: TextStyle(
                      color: AppColors.primaryButton, fontSize: 23.sp),
                ),
                verticalSpace(20),
                PrimaryOTPTextField(
                  onCompleted: (p0) => otp = p0,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            left: 0,
            right: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: PrimaryButton(
                  text: 'Verify Code',
                  onPressed: () async {
                    context.read<VerifyCubit>().verifyCode(widget.email, otp);
                    //  
                  }),
            ),
          ),
           AuthVerifyBlocListener(email: widget.email,)
        ],
      ),
    );
  }
}

