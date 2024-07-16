import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/Auth/presentation/logic/register/cubit/register_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
    
class AccountTypeContainer extends StatelessWidget {
 final String name;
  final IconData iconData;
  final bool isSelect; 
  const AccountTypeContainer({super.key, required this.name,required this.iconData,required this.isSelect});
  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () {
      context.read<RegisterCubit>().accountType(name);  
    },
      child: Container(decoration: BoxDecoration(
                                color: AppColors.grayAccent,
                                border: Border(bottom: BorderSide(
                                  color:isSelect? AppColors.primaryButton:AppColors.grayAccent,width: 3))
                              ),
                                width: 130.w,
                                height: 120.h,
                                
                                alignment: Alignment.center,
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        name,
                                        style: GoogleFonts.workSans(
                                            textStyle: TextStyle(
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w400)),
                                      ),
                                      verticalSpace(5),
                                       Icon(iconData),
                                 //   const  Spacer(),
                                      
                                    ],),
                              ),
    );
  }
}



/*

*/
