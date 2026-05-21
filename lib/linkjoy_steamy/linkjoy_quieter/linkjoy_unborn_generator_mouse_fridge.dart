import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_unborn_vent.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_suspend.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_thrilled.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_marsha_hater.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_martini.dart';

class LinkjoyUnbornGeneratorMouseFridge extends StatelessWidget {
  final int uid;
  final String avatar;
  final int coinsTotal;
  final double width;

  const LinkjoyUnbornGeneratorMouseFridge({
    super.key,
    required this.uid,
    required this.avatar,
    required this.coinsTotal,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: EdgeInsets.only(
        left: LinkjoyGarage.s16,
        right: LinkjoyGarage.s16,
        bottom: LinkjoyGarage.s16,
        top: LinkjoyGarage.s24,
      ),
      decoration: LinkjoyAve.surfaceDecoration,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              LinkjoyUnbornVent(
                size: LinkjoyDiscard.avatarMd,
                uid: uid,
                avatarUrl: avatar,
                level: LINKJOY.linkjoyUnbornDeposit!.userCurrLevel.level,
                transFrame: false,
              ),
              LinkjoyFeynman.h8,
              Text(
                'Lv.${LINKJOY.linkjoyUnbornDeposit!.userCurrLevel.level}',
                style: LinkjoyMarshaTriplet.title,
              ),
              const Spacer(),
              LinkjoyEllen.circleIconText(
                Icons.arrow_forward,
                "linkjoy_caring_dwarf_generator_up".tr,
                () {
                  LINKJOY.goto(LinkjoyGet.LinkjoyChipmunkFailDivision);
                },
                direction: LinkjoyThrilled.RTL,
              ),
            ],
          ),
          LinkjoyFeynman.v12,
          Row(
            children: [
              Text(
                "linkjoy_caring_aye_to".tr.replaceFirst(
                  "%d",
                  "${LINKJOY.linkjoyUnbornDeposit!.userNextLevel.level}",
                ),
                style: LinkjoyMarshaTriplet.bodyBold,
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: LinkjoyGarage.s12,
                  vertical: LinkjoyGarage.s2,
                ),
                decoration: BoxDecoration(
                  color: LinkjoyAve.accentMain.withValues(alpha: 0.2),
                  borderRadius: BorderRadius.circular(
                    LinkjoyDiscard.radiusFull,
                  ),
                ),
                child: Text(
                  '${coinsTotal} / ${LINKJOY.linkjoyUnbornDeposit!.userNextLevel.charged}',
                  style: LinkjoyMarshaTriplet.smallThin.copyWith(
                    color: LinkjoyAve.accentMain,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          LinkjoyFeynman.v12,
          LinkjoyFridgeLightbulb.linkjoyAye(
            width - LinkjoyGarage.s16 * 2,
            coinsTotal / LINKJOY.linkjoyUnbornDeposit!.userNextLevel.charged,
          ),
          LinkjoyFeynman.v12,
          Row(
            children: [
              Icon(
                Icons.flash_on,
                color: LinkjoyAve.accentMain,
                size: LinkjoyDiscard.iconSmall,
              ),
              Text(
                "linkjoy_caring_generator_up_incense".tr.replaceFirst(
                  "%d",
                  "${LINKJOY.linkjoyUnbornDeposit!.userNextLevel.charged - coinsTotal}",
                ),
                style: LinkjoyMarshaTriplet.smallThin.copyWith(
                  color: LinkjoyAve.textSecondary,
                ),
              ),
            ],
          ).click(() {
            LINKJOY.goto(LinkjoyGet.LinkjoyChipmunkFailDivision);
            ;
          }),
        ],
      ),
    );
  }
}
