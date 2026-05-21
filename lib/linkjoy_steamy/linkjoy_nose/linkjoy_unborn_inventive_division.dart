import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_unborn_inventive_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_division.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_inventive_unlock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_ohio_division_alphabet.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'linkjoy_unborn_inventive_hand.dart';

class LinkjoyUnbornInventiveDivision
    extends LinkjoyMagnetDivision<LinkjoyUnbornInventiveHand> {
  const LinkjoyUnbornInventiveDivision({super.key});

  @override
  Widget build(BuildContext context) {
    try {
      return PopScope(canPop: false, child: _linkjoyOughtaDivision(context));
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(130008, e, stack);
      rethrow;
    }
  }

  AnnotatedRegion<SystemUiOverlayStyle> _linkjoyOughtaDivision(
    BuildContext context,
  ) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: LinkjoyOhioDivisionAlphabet(
          backgroundColor: LinkjoyCondensateSister.color_0F0022,
          resizeToAvoidBottomInset: false,
          child: Container(
            color: LinkjoyCondensateSister.color_0F0022,
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).padding.bottom,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[_pages()],
            ),
          ),
        ),
      ),
    );
  }

  Widget _pages() {
    return GetBuilder<LinkjoyUnbornInventiveHand>(
      id: LinkjoyUnbornInventiveHand.linkjoy_division_narrate,
      builder: (logic) {
        return PageView.builder(
          controller: logic.pageController,
          onPageChanged: logic.onPageChanged,
          scrollDirection: Axis.vertical,
          physics: logic.lock
              ? const NeverScrollableScrollPhysics()
              : const BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            LinkjoyInventiveFondness live = logic.lives[index];
            return LinkjoyUnbornInventiveNarrate(
              index,
              live.liveId,
              live.uid,
              live.nickName,
              live.avatarUrl,
              live.status,
              live.videoId,
              logic.linkjoyInventiveNarrateMario,
            );
          },
          itemCount: logic.lives.length,
        );
      },
    );
  }
}
