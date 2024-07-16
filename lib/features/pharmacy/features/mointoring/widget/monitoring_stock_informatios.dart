

import 'package:flutter/material.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';

class MonitoringStockInformatios extends StatelessWidget {
  const MonitoringStockInformatios({super.key});

  @override
  Widget build(BuildContext context) {
     List<String> stockdata = [
      "All Sales:",
      "All Buys:",
      "Drug Amount:",
      "Expire Amount:",
    ];
    return  Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: List.generate(
                        stockdata.length,
                        (index) => TextFont16Wight700(
                          text: stockdata[index],
                        ),
                      )),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                      children: List.generate(
                    stockdata.length,
                    (index) => const TextFont16Wight500(text: "data"),
                  )),
                )
              ],
            );
  }
}