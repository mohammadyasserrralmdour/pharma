

import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/features/pharmacy/features/Drugs/presentation/widget/drug_item_home.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrugsRankingList extends StatelessWidget {
  const DrugsRankingList({super.key});

  @override
  Widget build(BuildContext context) {
    List dataDrugRanking=["All","Recent","Litle","Aplenty","Expired","Requests"];
    return GridView.builder(
      
      padding:const EdgeInsets.all(0),
              itemCount: 6,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 18,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                childAspectRatio: 1.5,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  child:  DrugRankingItem(ranking: dataDrugRanking[index],),
                  onTap: () =>
                      GoRouter.of(context).push(AppRoutes.drugsTypesScreen),
                );
              },
            );
  }
}