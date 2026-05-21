import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_flashy_silliness.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_ache_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_suspend.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_ache_fridge.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_martini.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';

class LinkjoyAcheDivision extends StatefulWidget {
  const LinkjoyAcheDivision({super.key});

  @override
  State<LinkjoyAcheDivision> createState() => _LinkjoyAcheDivisionStatus();
}

class _LinkjoyAcheDivisionStatus extends State<LinkjoyAcheDivision>
    with SingleTickerProviderStateMixin {
  late String url;

  LinkjoyFlashySilliness? giftAction;

  @override
  void initState() {
    super.initState();

    LinkjoyAcheJaw args = Get.arguments;
    url = args.url.imgURL;
    giftAction = args.giftAction;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: buildAnimation(),
    );
  }

  Widget buildAnimation() {
    VoGift? gift = giftAction?.gift;
    return Stack(
      alignment: Alignment.center,
      children: [
        Center(
          child: LinkjoyAcheFridge(
            url: url,

            onTap: (LinkjoyAcheFridgeHair status) {
              if (status == LinkjoyAcheFridgeHair.error) {
                Get.back();
              }
            },
            onAnimationError: () {
              Get.back();
            },
            onAnimationEnd: () {
              Get.back();
            },
          ),
        ),

        if (gift != null)
          Positioned(
            bottom: Get.height * 0.34,
            child: Container(
              constraints: BoxConstraints(maxWidth: Get.width * 3 / 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(LinkjoyGarage.s24),
                ),
                border: Border.all(color: const Color(0xFFFF3AA7), width: 2),
                color: LinkjoyCondensateSister.black_50p,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFFF3AA7),
                    blurRadius: 20.0,
                    blurStyle: BlurStyle.outer,
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(
                horizontal: LinkjoyGarage.s16,
                vertical: LinkjoyGarage.s4,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  LinkjoyFastenDance.small(
                    gift.icon,
                    width: 36.w,
                    height: 36.w,
                  ),
                  LinkjoyFeynman.h4,
                  LinkjoyMarsha.wCaptionM(giftAction!.action).build(),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
