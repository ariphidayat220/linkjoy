import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_hail.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_yum.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_inventive.pb.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoyInventiveFarmNarrate extends StatelessWidget {
  final AnchorInfo userInfo;

  const LinkjoyInventiveFarmNarrate({super.key, required this.userInfo});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: Get.width - 56,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: LinkjoyCondensateSister.white,
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            14.hGap,
            Text(
              "linkjoy_caring_inventive_sexual_convict_michael".tr,
              style: LinkjoyMarshaGreen.style(
                color: "651FFF".toColor(),
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            LinkjoyFeynman.v8,
            Text(
              "linkjoy_caring_inventive_tile_dazzle_convict".tr,
              style: LinkjoyMarshaGreen.style(
                color: "000000".toColor(),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
            24.hGap,
            Container(
              height: 72,
              decoration: BoxDecoration(
                borderRadius: 12.rectBg,
                color: LinkjoyCondensateSister.black_05p,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: LinkjoyFasten.asset(
                      "linkjoy_toe_inventive_convict_calendar",
                      width: 42,
                      height: 42,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        18.wGap,
                        LinkjoyFasten.circle(
                          userInfo.avatarUrl,
                          size: 40,
                          fit: BoxFit.cover,
                        ),
                        12.wGap,
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                userInfo.nickName,
                                style: LinkjoyMarshaGreen.TextB1_14_Bold,
                              ),
                              2.hGap,
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "${userInfo.chatPrice}",
                                    style: LinkjoyMarshaGreen.TextB1_14_Bold,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 2,
                                    ),
                                    child:
                                        LinkjoyFridgeLightbulb.linkjoyChipmunk(
                                          LinkjoyDiscard.iconSmall,
                                        ),
                                  ),
                                  const Text(
                                    "/",
                                    style: LinkjoyMarshaGreen.TextB1_14_Bold,
                                  ),
                                  Text(
                                    "linkjoy_caring_hunter".tr,
                                    style: LinkjoyMarshaGreen.TextB1_14_Bold,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        6.wGap,
                      ],
                    ),
                  ),
                ],
              ),
            ),
            16.hGap,
            _linkjoyConvictWarlordAssume(),
            20.hGap,
            Text(
              "linkjoy_caring_alice".tr,
              textAlign: TextAlign.center,
              style: LinkjoyMarshaGreen.style(
                color: Colors.black,
                fontSize: 18,
              ),
            ).clickOld(() {
              Get.back();
            }),
          ],
        ),
      ),
    );
  }

  _linkjoyConvictWarlordAssume() {
    return LinkjoyUiYum.primaryLarge()
        .width(260)
        .click(() {
          Get.back();
        })
        .text("linkjoy_caring_inventive_jeffries_sexual_convict".tr);
  }
}
