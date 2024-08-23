

import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/enums/type_show_drug.dart';
import 'package:pharma_app/features/pharmacy/features/Drugs/presentation/widget/drug_item_type.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PharmacyListDrugs extends StatelessWidget {
  final DrugsShowType drugsShowType ;
  const PharmacyListDrugs({super.key, required this.drugsShowType});

  @override
  Widget build(BuildContext context) {
   
    return GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.9,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 15,
                  ),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return InkWell(
                      child:  DrugItem(drugsShowType: drugsShowType,),
                      onTap: () => GoRouter.of(context)
                          .push(AppRoutes.drugsBatchesScreen,extra:1 ),
                    );
                  },
                );
  }
}