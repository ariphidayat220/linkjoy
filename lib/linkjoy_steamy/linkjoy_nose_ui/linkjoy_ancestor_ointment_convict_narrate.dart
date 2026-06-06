import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_ancestor_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ancestor_ofour_specific_skintight.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ofour.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_io_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_destine_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyAncestorOintmentConvictNarrate extends StatelessWidget {
  const LinkjoyAncestorOintmentConvictNarrate({
    super.key,
    required this.content,
    required this.chatSnap,
  });

  final LinkjoyOfour chatSnap;

  final LinkjoyAncestorOfourSpecificSkintight content;

  @override
  Widget build(BuildContext context) {
    String? text;

    switch (content.status) {
      case ChatSnapJsonContentStatus.callDone:
        text =
            "${'linkjoy_caring_spaghetti'.tr} ${LinkjoyDestineSister.formatDuration(Duration(seconds: content.count ?? 0))}";
        break;
      case ChatSnapJsonContentStatus.callCanceled:
        text = content.isUserIdMine
            ? "linkjoy_caring_extremely".tr
            : "linkjoy_caring_convict_extremely".tr;
        break;
      case ChatSnapJsonContentStatus.callRefused:
        text = content.isUserIdMine
            ? "linkjoy_caring_convict_elton".tr
            : "linkjoy_caring_convict_elton".tr;
        break;
      case ChatSnapJsonContentStatus.callNoReply:
        text = content.isUserIdMine
            ? "linkjoy_caring_convict_no_pervert".tr
            : "linkjoy_caring_public_cab".tr;
        break;
      case ChatSnapJsonContentStatus.callBusy:
        text = LINKJOY.isLinkjoyFoolishly == true
            ? "linkjoy_caring_thee_unborn_is_banquet".tr
            : "linkjoy_caring_thee_jelly_banquet".tr;
        break;
      case ChatSnapJsonContentStatus.connectFailed:
        text = "linkjoy_caring_convict_jeffries_assemble".tr;
        break;
      default:
        text = 'linkjoy_caring_grandpa'.tr;
        break;
    }
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        LINKJOY.eventBus.fire(
          LinkjoyAncestorGuitar(ChatEventType.snapRecall, object: chatSnap),
        );
      },
      child: _linkjoyConvictFridge(content.isUserIdMine, text),
    );
  }

  Widget _linkjoyConvictFridge(bool isMine, text) {
    return Container(
      padding: LinkjoyGarage.edgeH16V12,
      decoration: isMine
          ? BoxDecoration(
              borderRadius:
                  LinkjoyDivorced.linkjoyAncestorOintmentFrontalByThirty(),
              color: LinkjoyDivorced
                  .linkjoyAncestorOintmentSixthInsistenceByThirty,
            )
          : BoxDecoration(
              borderRadius:
                  LinkjoyDivorced.linkjoyAncestorOintmentFrontalByTouche(),
              color: LinkjoyDivorced
                  .linkjoyAncestorOintmentSixthInsistenceByTouche,
            ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Icon(
            Icons.video_camera_front_outlined,
            color: LinkjoyAve.textPrimary,
            size: LinkjoyDiscard.iconSmall,
          ),
          LinkjoyFeynman.h4,
          Flexible(
            child: Text(
              text,
              style: isMine
                  ? LinkjoyDivorced.outgoingTextStyle
                  : LinkjoyDivorced.incomingTextStyle,
            ),
          ),
        ],
      ),
    );
  }
}
