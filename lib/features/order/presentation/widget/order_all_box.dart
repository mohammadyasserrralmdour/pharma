import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/constants/app_text_styles.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AllOrderBox extends StatelessWidget {
  const AllOrderBox({super.key});

  @override
  Widget build(BuildContext context) {
    List orders = [
      "All",
      "Recent",
      "Buys",
      "Returns",
      "Accepted",
      "Rejected",
      "Postulate"
    ];
    return SizedBox(
      height: 260,
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 3),
        itemCount: 7,
        itemBuilder: (context, index) {
          return InkWell(onTap: () => GoRouter.of(context).push(AppRoutes.orderTypeScreen),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              margin: const EdgeInsets.only(top: 3,bottom: 3, right: 7),
              decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                        color: AppColors.grayAccent,
                        offset: Offset(1.5, 5),
                        blurRadius: 4,
                        spreadRadius: 0),
                    BoxShadow(
                        color: AppColors.grayAccent,
                        offset: Offset(-1.5, 5),
                        blurRadius: 4,
                        spreadRadius: 0),
                  ]),
              child: Row(children: [
                const Icon(
                  Icons.image_outlined,
                  color: AppColors.primaryButton,
                ),
                horizantalSpace(3),
                Text(
                  orders[index],
                  style: AppTextStyles.workSans(12, FontWeight.w500),
                ),
                const Spacer(),
                const CircleAvatar(
                  radius: 8,
                  backgroundColor: AppColors.danger,
                  child: FittedBox(child: Text("3")),
                )
              ]),
            ),
          );
        },
      ),
    );
  }
}
