import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_text_styles.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/features/Sales/presentation/cubit/sales_cubit.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DailyAndCustomersButton extends StatefulWidget {
   bool isDailyButton;  final PageController pageController;
   DailyAndCustomersButton({super.key, required this.pageController, required this.isDailyButton});

     
    
  @override
  State<DailyAndCustomersButton> createState() =>
      _DailyAndCustomersButtonState();
}

class _DailyAndCustomersButtonState extends State<DailyAndCustomersButton> {
   
  @override
 
  Widget build(BuildContext context) {
    
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              widget.pageController.previousPage(
                  duration: const Duration(milliseconds: 900),
                  curve: Curves.easeInOut);

              setState(() {
                if (!widget.isDailyButton) {
                  widget.isDailyButton = !widget.isDailyButton;
                }
              });
            },
            borderRadius: BorderRadius.circular(15),
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: AppColors.primary30,
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.grayAccent,
                        offset: Offset(1, 2),
                        blurRadius: 0.1,
                        spreadRadius: 0),
                    BoxShadow(
                        color: AppColors.grayAccent,
                        offset: Offset(-1, 2),
                        blurRadius: 0.1,
                        spreadRadius: 0),
                  ]),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
              child: Text(
                "Daily Sales",
                style: AppTextStyles.workSans(14, FontWeight.w600,
                    color: widget.isDailyButton ? AppColors.primary : AppColors.gray),
              ),
            ),
          ),
        ),
        horizantalSpace(20),
        Expanded(
          child: InkWell(
            borderRadius: BorderRadius.circular(15),
            onTap: () {
              widget.pageController.nextPage(
                  duration: const Duration(milliseconds: 900),
                  curve: Curves.easeInOut);
              setState(() {
                if (widget.isDailyButton) {
                  SalesCubit().reverse = false;
                  widget.isDailyButton = !widget.isDailyButton;
                }
              });
            },
            child: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: AppColors.primary30,
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.grayAccent,
                        offset: Offset(1, 2),
                        blurRadius: 0.1,
                        spreadRadius: 0),
                    BoxShadow(
                        color: AppColors.grayAccent,
                        offset: Offset(-1, 2),
                        blurRadius: 0.1,
                        spreadRadius: 0),
                  ]),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
              child: Text(
                "Customers Sales",
                style: AppTextStyles.workSans(14, FontWeight.w600,
                    color: widget.isDailyButton ? AppColors.gray : AppColors.primary),
              ),
            ),
          ),
        ),
      ],
    );
  }
  
}
