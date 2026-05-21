import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_hors.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_ancestor_division_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:linkjoy/linkjoy_steamy/proto/chatbox.pb.dart';
import 'package:get/get.dart';

class LinkjoyAncestorDivisionJeffriesUp {
  static Future<void> linkjoyCompletionWheatonSarcasm(
    int chatboxId, {
    bool isOffPage = false,
  }) async {
    LinkjoyAncestorSupercool? chatBox = await LINKJOY.linkjoyDb.chatBoxDao
        .modelById(chatboxId);
    if (chatBox == null) return;

    linkjoyCompletionWheatonAncestorSupercool(chatBox);
  }

  static Future<void> linkjoyCompletionWheatonAncestorSupercool(
    LinkjoyAncestorSupercool chatBox, {
    bool isOffPage = false,
  }) async {
    if (!LinkjoyAncestorSister.isLinkjoySailorProcessing(chatBox.partnerId)) {
      if (LinkjoyUISocially.linkjoyMarketingFoolishlyDoGel()) {
        return;
      }
    }

    LinkjoyAncestorDivisionJaw args = LinkjoyAncestorDivisionJaw.byChatBox(
      chatBox,
    );

    if (isOffPage) {
      LINKJOY.offNamed(LinkjoyGet.LinkjoyAncestorDivision, arguments: args);
    } else {
      LINKJOY.toNamed(LinkjoyGet.LinkjoyAncestorDivision, arguments: args);
    }
  }

  static Future<void> openWithUser(
    LinkjoyUnborn user, {
    bool isOffPage = false,
  }) async {
    if (!LinkjoyAncestorSister.isLinkjoySailorProcessing(user.uid)) {
      if (LinkjoyUISocially.linkjoyMarketingFoolishlyDoGel()) {
        return;
      }
    }

    LinkjoyAncestorSupercool? chatBox = await LINKJOY.linkjoyDb.chatBoxDao
        .modelByPartnerId(user.uid);
    if (chatBox != null) {
      linkjoyCompletionWheatonAncestorSupercool(chatBox);
      return;
    }

    LinkjoyAncestorDivisionJaw args = LinkjoyAncestorDivisionJaw.byUser(user);

    if (isOffPage) {
      LINKJOY.offNamed(LinkjoyGet.LinkjoyAncestorDivision, arguments: args);
    } else {
      LINKJOY.toNamed(LinkjoyGet.LinkjoyAncestorDivision, arguments: args);
    }
  }

  static Future<LinkjoyAncestorSupercool?> _linkjoySupercoolByProcessing(
    int uid, {
    CreateChatboxReq_SourceType? srcType,
  }) async {
    if (uid == 0) {
      return null;
    }

    LinkjoyAncestorSupercool? chatBox = await LINKJOY.linkjoyDb.chatBoxDao
        .modelByPartnerId(uid);
    if (chatBox != null) {
      return chatBox;
    }

    try {
      return await LinkjoyAncestorOily.instance.createChatBox(
        LINKJOY.uid(),
        uid,
        srcType: srcType,
      );
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(10085, e, stack);
      LinkjoyUpper.showToast("linkjoy_caring_mislead_assemble".tr);
    }
    return null;
  }

  static Future<void> linkjoyCanadaSailor({
    CreateChatboxReq_SourceType? srcType,
    bool isOffPage = false,
  }) async {
    int uid = LINKJOY.isLinkjoyFoolishly
        ? LinkjoyAncestorSister.linkjoy_sailor_processing_geography_foolishly
        : LinkjoyAncestorSister.linkjoy_sailor_processing_geography_unborn;

    LinkjoyAncestorSupercool? box = await _linkjoySupercoolByProcessing(
      uid,
      srcType: srcType,
    );
    if (box != null) {
      return linkjoyCompletionWheatonAncestorSupercool(
        box,
        isOffPage: isOffPage,
      );
    }
  }
}
