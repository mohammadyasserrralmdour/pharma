import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';
import 'package:flutter/widgets.dart';

class StockReport extends StatelessWidget {
  const StockReport({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> dataReport = ["All Sales","All Buys","Drug Amount","Expire Amount","All Sales","All Buys","Drug Amount","Expire Amount"];
    return   Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 4,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(
                      8,
                      (index) => TextFont16Wight700(
                        text: dataReport[index],
                      ),
                    )),
              ),
              Expanded(
                flex: 2,
                child: Column(
                    children: List.generate(
                  8,
                  (index) => const TextFont16Wight500(text: "data"),
                )),
              )
            ],
          );
    //  Row(
    //     children: [
    //       Expanded(
    //           child: Column(
    //         children: List.generate(dataReport.length, (index) => TextFont18Wight700(text: dataReport[index]),),
    //       )),
    //       Expanded(
    //           child: Column(
    //         children: List.generate(dataReport.length, (index) => TextFont16Wight500(text: "data"),),
    //       ))
    //     ],
    //   );
  }
}
