import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_thaw_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_division.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_execute.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyThawDivision extends LinkjoyMagnetDivision<LinkjoyThawHand> {
  const LinkjoyThawDivision({super.key});

  @override
  Widget build(BuildContext context) {
    if (logic.arguments.closeable) {
      return _linkjoyTuck();
    } else {
      return PopScope(
        canPop: false,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Material(
            type: MaterialType.transparency,
            child: _linkjoyTuck(),
          ),
        ),
      );
    }
  }

  Widget _linkjoyTuck() {
    if (logic.arguments.showNavbar) {
      return Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
        extendBodyBehindAppBar: true,
        appBar: LinkjoyDivisionUI.linkjoyAgencySteamyYamWheatonFridge(
          GetBuilder<LinkjoyThawHand>(
            id: LinkjoyThawHand.linkjoy_divorce,
            builder: (logic) {
              return Text(logic.pageTitle, style: LinkjoyMarshaTriplet.title);
            },
          ),
          leading: logic.arguments.closeable
              ? LinkjoyFridgeLightbulb.linkjoyIncapableMagazine().click(
                  () => Get.back(),
                )
              : const SizedBox.shrink(),
        ),
        body: SafeArea(child: _linkjoyOughtaSpitNarrate()),
      );
    } else {
      return _linkjoyOughtaSpitNarrate();
    }
  }

  Widget _linkjoyOughtaSpitNarrate() {
    return LinkjoySpitNarrate(
      url: Get.arguments.url,
      onTitleChanged: logic.onLinkjoyDivorceChlorine,
      pullToRefresh: true,
    );
  }
}
