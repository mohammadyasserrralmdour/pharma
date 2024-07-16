import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/enums/type_show_drug.dart';
import 'package:pharma_app/core/widgets/PrimaryAbbpar.dart';
import 'package:pharma_app/core/widgets/primary_arrow_button.dart';
import 'package:pharma_app/core/widgets/primary_text_field.dart';
import 'package:pharma_app/features/pharmacy/features/Drugs/presentation/widget/pharmacy_text_title.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_list_drugs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OrederCreateScreen extends StatelessWidget {
  const OrederCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40.h, left: 15.w, right: 15.w),
        child: Column(
          children: [
            PrimaryAppbar(
              leading: const PrimaryArrowBackButton(),
              title: "Create Order",
              firstIcon: Icons.bookmark_border_rounded,
              firstfunction: () {
           
                GoRouter.of(context).push(AppRoutes.orderSendScreen);
              },
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: PrimaryTextField(
                    hintText: "select  repository",
                    prefix: IconButton(
                        onPressed: () => null,
                        icon: const Icon(
                          size: 25,
                          Icons.search,
                          color: AppColors.gray,
                        )),
                  ),
                ),
                Expanded(flex: 1, child: Container())
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const PharmacyTextTitleBlue(text: "Drugs"),
                IconButton(
                    onPressed: () => null, icon: const Icon(Icons.search))
              ],
            ),
            const Expanded(
                child: SizedBox(
              child: PharmacyListDrugs(drugsShowType: DrugsShowType.toCreateOrder,),
            )),
          ],
        ),
      ),
    );
  }
}
