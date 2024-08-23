import 'package:pharma_app/core/constants/app_assets.dart';
import 'package:pharma_app/core/constants/app_box_decoration.dart';
import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/enums/type_show_drug.dart';
import 'package:pharma_app/features/pharmacy/PharmacyWidget/pharmacy_text_font_types.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DrugItem extends StatelessWidget {
  final DrugsShowType drugsShowType;
  const DrugItem({super.key, required this.drugsShowType});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ContainerBoxDecoration.pharmacyBox,
      child: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 6,
                child: Image.asset(
                  "assets/images/d6.png",
                  fit: BoxFit.fill,
                ),
              ),
              const Expanded(
                  flex: 4,
                  child: Column(
                    children: [
                      TextFont16Wight700(text: "Name"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [TextFont14Wight600(text: 'amount'), TextFont14Wight300(text: "12"),],
                          ),
                          Column(
                            children: [TextFont14Wight600(text: 'price'), TextFont14Wight300(text: "112\$")],
                          )
                        ],
                      ),
                    ],
                  )),
            ],
          ),
          Positioned(top: 5, right: 5, child: iconType(drugsShowType)),
        ],
      ),
    );
  }

  Widget iconType(DrugsShowType drugsShowType) {
    switch (drugsShowType) {
      case DrugsShowType.toCreateOrder:
        return CircleAvatar(
          radius: 15,
          backgroundColor: AppColors.primary20,
          child: FittedBox(
              child: SvgPicture.asset("${AppAssets.rootSVGIcons}/create.svg")),
        );
      case DrugsShowType.toSendOrder:
        return CircleAvatar(
          radius: 15,
          backgroundColor: AppColors.primary20,
          child: SvgPicture.asset("${AppAssets.rootSVGIcons}/send.svg"),
        );
      case DrugsShowType.toReceiveOrder:
        return CircleAvatar(
          radius: 15,
          backgroundColor: AppColors.primary20,
          child: SvgPicture.asset("${AppAssets.rootSVGIcons}/receive.svg"),
        );
      case DrugsShowType.normal:
        return Container();
    }
  }
}
