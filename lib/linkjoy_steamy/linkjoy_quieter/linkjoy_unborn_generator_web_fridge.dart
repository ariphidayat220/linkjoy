import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_web.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_magazine.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_muse/linkjoy_fridge_allow.dart';
import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'linkjoy_unborn_generator_vicious_animal.dart';

class LinkjoyUnbornGeneratorWebFridge extends StatefulWidget {
  const LinkjoyUnbornGeneratorWebFridge({super.key});

  @override
  State<LinkjoyUnbornGeneratorWebFridge> createState() =>
      _LinkjoyUnbornGeneratorWebFridgeStatus();
}

class _LinkjoyUnbornGeneratorWebFridgeStatus
    extends State<LinkjoyUnbornGeneratorWebFridge> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.width,
      child: Column(
        children: [
          _linkjoyDivorceFridge(),
          LinkjoyFeynman.v20,
          buildPrivilegeGrid(),
        ],
      ),
    );
  }

  Widget _linkjoyDivorceFridge() {
    return Row(
      children: [
        LinkjoyFeynman.h16,
        Icon(
          Icons.emoji_events,
          color: LinkjoyAve.accentMain,
          size: LinkjoyDiscard.iconLarge,
        ),
        LinkjoyFeynman.h8,
        Text(
          "linkjoy_caring_generator_web".tr,
          style: LinkjoyMarshaTriplet.title,
        ),
      ],
    );
  }

  Widget buildPrivilegeGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s16),
      itemCount: LinkjoyDeliver.values.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 0.9,
        mainAxisSpacing: LinkjoyGarage.s10,
        crossAxisSpacing: LinkjoyGarage.s10,
      ),
      itemBuilder: (context, index) {
        LinkjoyDeliver item = LinkjoyDeliver.values[index];
        return buildPrivilegeItem(
          item,
          LINKJOY.linkjoyUnbornDeposit!.userCurrLevel.level >= item.minLevel,
          index,
        );
      },
    );
  }

  Widget buildPrivilegeItem(LinkjoyDeliver item, bool enabled, int index) {
    return Container(
      alignment: Alignment.center,
      decoration: enabled
          ? LinkjoyAve.surfaceImportantDecoration
          : LinkjoyAve.surfaceDecoration,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              LinkjoyFeynman.v20,
              LinkjoyWear.circle(
                item.icon,
                size: LinkjoyBookshelf.md,
                iconColor: enabled
                    ? LinkjoyAve.accentMain
                    : LinkjoyAve.textSecondary,
                bgColor: enabled
                    ? LinkjoyAve.accentMain.withValues(alpha: 0.2)
                    : LinkjoyAve.surface,
              ),
              LinkjoyFeynman.v12,
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s8),
                child: Text(
                  item.title.tr,
                  style: LinkjoyMarshaTriplet.captionBold.copyWith(
                    color: enabled
                        ? LinkjoyAve.textPrimary
                        : LinkjoyAve.textSecondary,
                  ),
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              LinkjoyFeynman.v4,
            ],
          ),

          Align(
            alignment: Alignment.topRight,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: LinkjoyGarage.s6,
                vertical: LinkjoyGarage.s2,
              ),
              decoration: BoxDecoration(
                color: enabled ? LinkjoyAve.accentMain : LinkjoyAve.bgDark,
                borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    enabled ? Icons.check : Icons.lock,
                    size: LinkjoyGarage.s10,
                    color: LinkjoyAve.white,
                  ),
                  LinkjoyFeynman.h2,
                  Text(
                    'Lv.${item.minLevel}',
                    style: LinkjoyMarshaTriplet.smallThin.copyWith(
                      color: LinkjoyAve.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ).click(() {
      LinkjoyUnbornGeneratorWebAnimal.show(index);
    });
  }
}
