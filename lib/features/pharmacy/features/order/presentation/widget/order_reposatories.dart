
import 'package:pharma_app/core/constants/app_assets.dart';
import 'package:flutter/material.dart';

class OrderReposatories extends StatelessWidget {
  const OrderReposatories({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                6,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  child: const Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        foregroundImage:
                            AssetImage("${AppAssets.rootImages}/d66.png"),
                      ),
                      Text("data")
                    ],
                  ),
                ),
              ),
            ));
  }
}