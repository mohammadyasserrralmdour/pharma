import 'package:pharma_app/core/widgets/vertical_and_horizantail_space.dart';
import 'package:flutter/material.dart';

import '../../../../core/widgets/PharmacyWidget/pharmacy_home_appbar.dart';
import '../widget/drug_ranking_list.dart';
import '../widget/drug_report_box.dart';
import '../widget/pharmacy_text_title.dart';

class DrugHomeScreen extends StatelessWidget {
  const DrugHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            child: Column(
                  children: [
            const PharmacyHomeAppbar(),
            verticalSpace(5),
            verticalSpace(10),
            const PharmacyTextTitleBlue(text: "Drugs Report"),
            verticalSpace(10),
            const DrugsReportBox(),
            verticalSpace(10),
            const PharmacyTextTitleBlue(text: "Drugs"),
            verticalSpace(20),
            const Expanded(child: SizedBox(child: DrugsRankingList())),
                  ],
                ),
          ),
        ));
  }
}
