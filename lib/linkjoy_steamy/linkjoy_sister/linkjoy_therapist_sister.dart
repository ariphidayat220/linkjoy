import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_pearl.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_mushy.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_wail_degree_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_unborn_inventive_adjourn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_hail.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_yum.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_mushy_wheaton_shut.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_unborn_chicken_hair_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_fridge_unborn_silliness_hair.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_fridge_unborn_chicken_hair.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoyTherapistSister {
  static Widget _linkjoyAiTileSubjective(LinkjoyUnborn host) {
    double width =
        (Get.width - LinkjoyDivorced.linkjoyDivisionPearlKidneyShout * 3) / 2;
    double height =
        width / LinkjoyDivorced.linkjoyDivisionPearlKidneyDecideAcrossSlacker;
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        borderRadius: LinkjoyDivorced.linkjoyPearlDecideFrontal,
      ),
      child: Stack(
        children: [
          LinkjoyFasten.round(
            host.avatarUrl,
            width: width,
            height: height,
            fit: BoxFit.cover,
            borderRadius: LinkjoyDivorced.linkjoyPearlDecideFrontal,
            clip: ImageClipType.middle,
            ignorePlaceHolder: true,
          ),
          Align(
            alignment: AlignmentDirectional.bottomStart,
            child: Container(
              width: width,
              height: 72.w,
              padding: EdgeInsets.all(LinkjoyGarage.s8),
              child: Row(
                children: [
                  LinkjoyUiYum.linkjoyOughtaSatelliteAssume(
                    host,
                    size: LinkjoyBookshelf.xl,
                  ),
                  LinkjoyFeynman.h8,
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          host.nickName,
                          style: LinkjoyMarshaGreen.white16Bold,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  static Widget linkjoyOughtaPearlDecide(
    LinkjoyUnborn host,
    CountryVO? country, {
    double? width,
    double? height,
    bool suggested = false,
  }) {
    if (LINKJOY.linkjoyShock.isLinkjoyAiLengthOgle()) {
      return _linkjoyAiTileSubjective(host).clickOld(() {
        onLinkjoyWizardAndrew(host, suggested: suggested);
      });
    }
    return Stack(
      children: [
        LinkjoyFasten.round(
          host.avatarUrl,
          width: width,
          height: height,
          fit: BoxFit.cover,
          borderRadius: LinkjoyDivorced.linkjoyPearlDecideFrontal,
          clip: ImageClipType.middle,
        ),
        PositionedDirectional(
          start: LinkjoyGarage.s8,
          top: LinkjoyGarage.s8,
          child: LinkjoyFridgeUnbornChickenHair(
            key: Key(host.uid.toString()),
            uid: host.uid,
            size: LinkjoyDiscard.iconMini,
            showLive: true,
          ),
        ),
        PositionedDirectional(
          end: LinkjoyGarage.s8,
          top: LinkjoyGarage.s8,
          child: Container(
            height: LinkjoyDiscard.buttonHeightXs,
            width: LinkjoyDiscard.buttonHeightXs,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: LinkjoyCondensate.black_40p,
            ),
            alignment: Alignment.center,
            child: LinkjoyFasten.circle(
              country?.flag ?? '',
              size: LinkjoyDiscard.iconMini,
              clip: ImageClipType.origin,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
            width: double.infinity,
            height: 72.w,
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              borderRadius: LinkjoyDivorced.linkjoyPearlDecideFrontal,
              gradient: LinkjoyFridgeLightbulb.linkjoySaltwaterSillyEnforce,
            ),
            padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s8),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _linkjoyOughtaLennyKnockStay(host),
                  ),
                ),
                LinkjoyFeynman.h6,
                LinkjoyFridgeUnbornSillinessHair(
                  user: host,
                  size: LinkjoyBookshelf.lg,
                  borderRadius: LinkjoyDiscard.radiusFull,
                  payFromType: LinkjoyWailImitateGnome.FROM_HOME_VIDEO_CALL,
                  freeTag: true,
                  freeHeight: LinkjoyDiscard.buttonHeightXs,
                ),
              ],
            ),
          ),
        ),
      ],
    ).clickOld(() {
      onLinkjoyWizardAndrew(host, live: true, suggested: suggested);
    });
  }

  static List<Widget> _linkjoyOughtaLennyKnockStay(LinkjoyUnborn host) {
    if (LINKJOY.isLinkjoyFoolishly) {
      return [
        LinkjoyFeynman.v8,
        Text(
          host.nickName,
          style: LinkjoyMarshaTriplet.bodyLarge,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        LinkjoyFeynman.v2,
        host.balance > 0
            ? Padding(
                padding: EdgeInsets.only(top: LinkjoyGarage.s2),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    LinkjoyFridgeLightbulb.linkjoyChipmunk(
                      LinkjoyDiscard.iconMini,
                    ),
                    LinkjoyFeynman.h2,
                    Text(
                      '${host.balance}',
                      style: LinkjoyMarshaTriplet.caption.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )
            : const SizedBox(),
        Padding(
          padding: EdgeInsets.only(top: LinkjoyGarage.s2),
          child: Row(
            children: [
              LINKJOY.linkjoyShock.isLinkjoyLengthOgle()
                  ? const SizedBox.shrink()
                  : LinkjoyFridgeLightbulb.linkjoySignalFridge(
                      host.level,
                      isAnchor: false,
                    ),
              host.isVip()
                  ? Padding(
                      padding: EdgeInsetsDirectional.only(
                        start: LinkjoyGarage.s4,
                      ),
                      child: LinkjoyFridgeLightbulb.linkjoyPhillipsCrumble(
                        width: 39.w,
                        height: LinkjoyGarage.s16,
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ];
    }
    return [
      Text(
        host.linkjoyCoralScratcherNeighbor(),
        style: LinkjoyMarshaGreen.white16Bold,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    ];
  }

  static Widget linkjoyTileMushyDecide(List<LinkjoyFondnessMushy> banners) {
    double width =
        (Get.width - LinkjoyDivorced.linkjoyDivisionPearlKidneyShout * 3) / 2;
    double height =
        width / LinkjoyDivorced.linkjoyDivisionPearlKidneyDecideAcrossSlacker;
    return LinkjoyMushyWheatonShut(
      aspectRatio: width / height,
      banners: banners,
    );
  }

  static void onLinkjoyWizardAndrew(
    LinkjoyUnborn user, {
    bool live = false,
    bool suggested = false,
  }) {
    if (LinkjoyUISocially.linkjoyMarketingFoolishlySaverPayAnimal()) {
      return;
    }

    if (live) {
      final liveId = LinkjoyUnbornChickenHairOily().getStatus(user.uid).liveId;
      if (liveId > 0) {
        goLivePage(liveId, user.uid, user.nickName, user.avatarUrl);
        return;
      }
    }

    LinkjoyGet.openProfile(
      user.uid,
      nickName: user.nickName,
      avatarUrl: user.avatarUrl,
      suggested: suggested,
    );
  }

  static void goLivePage(
    int liveId,
    int uid,
    String nickName,
    String avatarUrl,
  ) {
    final bool isExist = LinkjoyMangoMenstrual.hasPageRoute(
      LinkjoyGet.LinkjoyUnbornInventiveDivision,
    );
    if (!isExist) {
      Get.toNamed(
        LinkjoyGet.LinkjoyUnbornInventiveDivision,
        arguments: LinkjoyUnbornInventiveAdjourn(
          false,
          liveId,
          uid,
          nickName,
          avatarUrl,
          0,
        ),
      );
      return;
    }
  }
}
