import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/otp_field_style.dart';
import 'package:otp_text_field/style.dart';
import 'package:pharma_app/core/constants/app_colors.dart';

// ignore: must_be_immutable
class PrimaryOTPTextField extends StatefulWidget {
  final void Function(String)? onCompleted;
   
  const PrimaryOTPTextField({this.onCompleted, super.key});

  @override
  State<PrimaryOTPTextField> createState() => _PrimaryOTPTextFieldState();
}

class _PrimaryOTPTextFieldState extends State<PrimaryOTPTextField> {
  final FocusNode focusNode = FocusNode();
  final OtpFieldController otpFieldController = OtpFieldController();
  
  bool otpHasError = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: 240.w,
      height: 70.h,
      decoration: BoxDecoration(
        color: AppColors.primary20
        ,borderRadius: BorderRadius.circular(5.sp)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: OTPTextField(
            controller: otpFieldController,
            hasError: otpHasError,
            length: 6,
            textFieldAlignment: MainAxisAlignment.spaceBetween,
            outlineBorderRadius: 8.r,
            fieldWidth: 35.w,
            style: TextStyle(fontSize: 17.sp),
            fieldStyle: FieldStyle.box,
            otpFieldStyle: OtpFieldStyle(
              borderColor: AppColors.gray,
              disabledBorderColor: AppColors.gray,
              enabledBorderColor: AppColors.gray,
              errorBorderColor: AppColors.danger,
              focusBorderColor: AppColors.primary,
            ),
            width: 220.w,
            onChanged: (pin) {
              setState(() {
                
               
                otpHasError = false;
               
              });
            },
            onCompleted: widget.onCompleted,
            keyboardType: TextInputType.number,
          ),
        ),
      ),
    );
  }
}
