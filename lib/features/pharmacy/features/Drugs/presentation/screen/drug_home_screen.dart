import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_home_appbar.dart';
import 'package:pharma_app/features/pharmacy/features/Drugs/presentation/widget/drug_ranking_list.dart';
import 'package:pharma_app/features/pharmacy/features/Drugs/presentation/widget/drug_report_box.dart';
import 'package:pharma_app/features/pharmacy/features/Drugs/presentation/widget/pharmacy_text_title.dart';
import 'package:flutter/material.dart';

class DrugHomeScreen extends StatelessWidget {
  const DrugHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
       const  PharmacyHomeAppbar(),
        verticalSpace(5),
       
        
        verticalSpace(10),
        const PharmacyTextTitleBlue(text: "Drugs Report"),
        verticalSpace(10),
        const DrugsReportBox(),
        verticalSpace(10),
        const PharmacyTextTitleBlue(text: "Drugs"),
        verticalSpace(20),
        const Expanded(child:  SizedBox(child: DrugsRankingList())),
      ],
    ));
  }
}
