import 'package:pharma_app/core/constants/app_box_decoration.dart';
import 'package:pharma_app/core/widgets/PrimaryAbbpar.dart';
import 'package:pharma_app/core/widgets/primary_arrow_button.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/features/Drugs/presentation/widget/pharmacy_text_title.dart';
import 'package:pharma_app/features/pharmacy/features/order/presentation/widget/order_information.dart';
import 'package:flutter/material.dart';

class OrdersTypeScreen extends StatelessWidget {
  const OrdersTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 15, right: 15),
        child: Column(
          children: [
         const   PrimaryAppbar(
              leading:PrimaryArrowBackButton(),
              title: "Order",
              firstIcon: Icons.search,
              secondIcon: null,
            ),
            verticalSpace(20),
            const PharmacyTextTitleBlue(text: "Recently Orders"),
            Expanded(
              child: SizedBox(
                child: ListView.builder(itemCount: 10,
                  itemBuilder: (context, index) {
                    return Container(margin:const EdgeInsets.symmetric(vertical: 4),
                      decoration: ContainerBoxDecoration.pharmacyBox,
                      height: 70,
                      width: double.infinity,
                      child:const OrderInformation(name: "Pharmacy",date: "20-4-2022",price: 223,status: "sending",)
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
