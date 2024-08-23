import 'package:pharma_app/core/widgets/PrimaryAbbpar.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/features/Drugs/presentation/widget/pharmacy_text_title.dart';
import 'package:pharma_app/features/pharmacy/features/order/presentation/widget/order_all_box.dart';
import 'package:pharma_app/features/pharmacy/features/order/presentation/widget/order_opareations.dart';
import 'package:pharma_app/features/pharmacy/features/order/presentation/widget/order_reposatories.dart';
import 'package:flutter/material.dart';

class OrderHomeScreen extends StatelessWidget {
  const OrderHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PrimaryAppbar(
            title: "PharmaPlus",
            firstIcon: Icons.notifications_none_sharp,
            secondIcon: Icons.settings),
     Row(
          children: [
            const OrderOpareations(
                opareation: "Receive", iconData: Icons.pending_actions_rounded),
            horizantalSpace(15),
            const OrderOpareations(
                opareation: "Receive", iconData: Icons.pending_actions_rounded),
            horizantalSpace(15),
            const OrderOpareations(
                opareation: "Receive", iconData: Icons.pending_actions_rounded),
          ],
        ),
        const PharmacyTextTitleBlue(text: "Order Opareation"),
        verticalSpace(15),
       
        verticalSpace(10),
        const PharmacyTextTitleBlue(text: "Reposatories"),
        verticalSpace(10),
        const OrderReposatories(),
        verticalSpace(5),
        const PharmacyTextTitleBlue(text: "Order"),
        const AllOrderBox(),
      ],
    );
  }
}
