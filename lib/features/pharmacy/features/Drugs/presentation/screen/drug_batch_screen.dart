import 'package:pharma_app/core/widgets/PrimaryAbbpar.dart';
import 'package:pharma_app/core/widgets/primary_arrow_button.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_dailog.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';
import 'package:pharma_app/features/pharmacy/features/Drugs/presentation/widget/drug_batch_box.dart';
import 'package:pharma_app/features/pharmacy/features/Drugs/presentation/widget/drug_brand_scientafic_name.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrugBatchScreen extends StatelessWidget {
  const DrugBatchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 15.w),
      child: Column(
        children: [
          PrimaryAppbar(
            leading: const PrimaryArrowBackButton(),
            title: "Batches",
            firstIcon: Icons.edit,
            secondIcon: Icons.add,
            firstfunction: () => changePrice(context),
            secondfunction: () => createBatch(context),
          ),
          verticalSpace(8.h),
          const BrandAndScientaficDrugName(
              brand: "brand", scientafic: "scientafic"),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Spacer(flex: 1),
              TextFont18Wight600(text: "Total Amount"),
              Spacer(flex: 4),
              TextFont16Wight500(text: "256"),
              Spacer(flex: 5)
            ],
          ),
          verticalSpace(6.h),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Spacer(flex: 1),
              TextFont18Wight600(text: "Current Price"),
              Spacer(flex: 4),
              TextFont16Wight500(text: "10\$"),
              Spacer(flex: 5)
            ],
          ),
          verticalSpace(10),
          Expanded(
              child: SizedBox(
            child: ListView(
              padding: const EdgeInsetsDirectional.all(0),
              children: List.generate(6, (index) => const DrugBatchBox()),
            ),
          ))
        ],
      ),
    ));
  }
}

/*
List.generate(
                    6,
                    (index) =>
                   const DrugBatchBox()
                  )*/