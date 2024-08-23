import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/enums/type_show_drug.dart';
import 'package:pharma_app/core/widgets/PrimaryAbbpar.dart';
import 'package:pharma_app/core/widgets/primary_arrow_button.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/features/Drugs/presentation/widget/pharmacy_text_title.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_list_drugs.dart';
import 'package:pharma_app/features/pharmacy/features/order/presentation/widget/order_speceification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OrderSendScreen extends StatelessWidget {
  const OrderSendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 40.h, left: 15.w, right: 15.w),
        child: Column(
          children: [
             PrimaryAppbar(
              leading:const PrimaryArrowBackButton(),
              title: 'Send Order',
              firstIcon: Icons.send_rounded,
              firstfunction: () =>GoRouter.of(context).push(AppRoutes.orderReceiveScreen) ,
            ),
            const OrderSpeceification(
                repository: "data", status: "data", price: "data"),
            verticalSpace(5),
            const PharmacyTextTitleBlue(text: "Drugs"),
            const Expanded(
                child: SizedBox(
              child: PharmacyListDrugs(drugsShowType: DrugsShowType.toSendOrder,),
            )),
          ],
        ),
      ),
    );
  }
}
