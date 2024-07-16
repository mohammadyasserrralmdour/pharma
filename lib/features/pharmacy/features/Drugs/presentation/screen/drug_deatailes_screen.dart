import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/widgets/PrimaryAbbpar.dart';
import 'package:pharma_app/core/widgets/primary_arrow_button.dart';
import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_dailog.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrugDeatailesScreen extends StatelessWidget {
  const DrugDeatailesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> drugsDetailes = [
      "Dosage form:",
      "Capcity:",
      "Titer:",
      "Company:",
      "Catogary",
      "therapeutic effect:",
      "Compositions:",
      "prescription:"
    ];
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: 40.h, left: 18.w, right: 18.w),
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
          verticalSpace(10),
          SizedBox(
            height: 170.h,
            width: double.infinity,
            child: Image.asset(
              "assets/images/d66.png",
              fit: BoxFit.fill,
            ),
          ),
          verticalSpace(8),
          Expanded(
              child: SizedBox(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const TextFont16Wight700(text: "Name:"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          const TextFont16Wight400(text: "Brand"),
                          verticalSpace(5),
                          const TextFont14Wight500(text: "data")
                        ],
                      ),
                      Column(
                        children: [
                          const TextFont16Wight400(text: "Scientafic"),
                          verticalSpace(5),
                          const TextFont14Wight500(text: "data")
                        ],
                      )
                    ],
                  ),
                  Divider(
                    color: AppColors.primary,
                    height: 20,
                    thickness: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 4,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: List.generate(
                              8,
                              (index) => TextFont16Wight700(
                                text: drugsDetailes[index],
                              ),
                            )),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: List.generate(
                              8,
                              (index) => TextFont16Wight700(
                                text: "data",
                              ),
                            )),
                      ),
                    ],
                  ),
                  const Divider(
                    color: AppColors.primary,
                    height: 20,
                    thickness: 2,
                  ),
                  const Column(
                    children: [
                      TextFont16Wight700(text: "Indications:"),
                      TextFont16Wight400(text: "data"),
                      TextFont16Wight700(text: "Contraindications:"),
                      TextFont16Wight400(text: "data"),
                      TextFont16Wight700(text: "Side Effects:"),
                      TextFont16Wight400(text: "data"),
                    ],
                  ),
                ],
              ),
            ),
          ))
        ],
      ),
    ));
  }
}
