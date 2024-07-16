import 'package:pharma_app/core/enums/type_show_drug.dart';
import 'package:pharma_app/core/widgets/PrimaryAbbpar.dart';
import 'package:pharma_app/core/widgets/primary_arrow_button.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_list_drugs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DrugsTypesScreen extends StatelessWidget {
  const DrugsTypesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50.h, left: 20.w,right: 20.w),
        child: const Column(
          children: [
            PrimaryAppbar(leading: PrimaryArrowBackButton(),
                title: "Drugs",
                firstIcon: Icons.scanner_outlined,
                secondIcon: Icons.search),
            Expanded(
              child: SizedBox(child: PharmacyListDrugs(drugsShowType:DrugsShowType.normal ,)),
            )
          ],
        ),
      ),
    );
  }
}
