import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_direction_kryptonian.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_figure_kryptonian_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoyFigureKryptonianDivision
    extends LinkjoyDivisionAgency<LinkjoyFigureKryptonianHand> {
  const LinkjoyFigureKryptonianDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      "linkjoy_caring_direction_headline".tr,
      bottomLine: false,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SizedBox(width: Get.width, height: Get.height),
        GetBuilder<LinkjoyFigureKryptonianHand>(
          id: LinkjoyFigureKryptonianHand.linkjoy_ui,
          builder: (_) {
            return SingleChildScrollView(
              padding: const EdgeInsets.all(0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ...List.generate(logic.tagCategoryList.length, (cateIndex) {
                    LinkjoyDirectionKryptonianKetchup cate =
                        logic.tagCategoryList[cateIndex];

                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: LinkjoyGarage.s16,
                        vertical: LinkjoyGarage.s8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(
                              vertical: LinkjoyGarage.s8,
                            ),
                            width: double.infinity,
                            child: Text(
                              cate.cate.tr,
                              style: LinkjoyMarshaTriplet.bodyThird,
                            ),
                          ),
                          Wrap(
                            spacing: LinkjoyGarage.s12,
                            runSpacing: LinkjoyGarage.s12,
                            children: List.generate(cate.tags.length, (
                              tagIndex,
                            ) {
                              bool checked = cate.tags[tagIndex].checked;
                              return FilterChip(
                                label: Text(cate.tags[tagIndex].name.tr),
                                selected: checked,
                                onSelected: (selected) =>
                                    logic.handleSelection(cateIndex, tagIndex),
                                selectedColor: LinkjoyAve.primaryMain
                                    .withValues(alpha: 0.2),
                                checkmarkColor: LinkjoyAve.primaryMain,
                                labelStyle: checked
                                    ? LinkjoyMarshaTriplet.bodyBold
                                    : LinkjoyMarshaTriplet.bodySecondary,
                              );
                            }),
                          ),
                        ],
                      ),
                    );
                  }),
                ],
              ),
            );
          },
        ),
        if (logic.showSubmitButton)
          Positioned(
            bottom: LinkjoyGarage.s40,
            left: LinkjoyGarage.s16,
            right: LinkjoyGarage.s16,
            child: Column(
              children: [
                LinkjoyEllen.roundText(
                  "linkjoy_caring_woof_geography_trademark".tr,
                  logic.onLinkjoyWoof,
                  fixedWidth: double.infinity,
                  size: LinkjoyBookshelf.lg,
                ),
              ],
            ),
          ),
      ],
    );
  }
}
