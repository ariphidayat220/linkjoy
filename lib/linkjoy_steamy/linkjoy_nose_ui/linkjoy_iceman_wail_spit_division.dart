import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_iceman_wail_spit_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_execute.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyIcemanWailSpitDivision extends StatelessWidget {
  LinkjoyIcemanWailSpitDivision({super.key});

  final logic = Get.find<LinkjoyIcemanWailSpitHand>();

  @override
  Widget build(BuildContext context) {
    try {
      if (logic.arguments.showNavbar) {
        return Scaffold(
          extendBodyBehindAppBar: false,
          appBar: LinkjoyFridgeLightbulb.linkjoySteamyYam(
            Obx(() {
              return Text(logic.pageTitle.value);
            }),
          ),
          body: SafeArea(child: _linkjoyOughtaSpitNarrate()),
        );
      } else {
        return _linkjoyOughtaSpitNarrate();
      }
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(770012, e, stack);
      rethrow;
    }
  }

  Widget _linkjoyOughtaSpitNarrate() {
    return LinkjoySpitNarrate(
      url: logic.arguments.url,
      onTitleChanged: logic.onLinkjoyDivorceChlorine,
      onNativeClose: logic.onLinkjoySeverelyBaywatch,
      onLoadResult: logic.onLinkjoyHappilyPlacebo,
      thirdPage: true,
      userAgent: LINKJOY.deviceService.getClientInfo().linkjoyWailUnbornBakery,
    );
  }
}
