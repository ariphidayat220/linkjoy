import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_foolishly_famous.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_baseball_famous_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_industrial.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha_hater.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LinkjoyFoolishlyFamousDivision
    extends LinkjoyDivisionAgency<LinkjoyFoolishlyFamousHand> {
  const LinkjoyFoolishlyFamousDivision({super.key});

  @override
  Widget buildBackground() {
    return Container(
      width: Get.width,
      height: Get.height,
      alignment: Alignment.topCenter,
      color: const Color(0xFFF5F5F7),
      child: LinkjoyFastenIndustrial.asset(
        "linkjoy_toe_foolishly_famous_bg",
        width: Get.width,
        height: Get.width * 870 / 750,
      ),
    );
  }

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYamWheatonFridge(
      buildTabView(),
      leading: const Icon(
        Icons.arrow_back,
        color: Colors.white,
      ).clickOld(() => Get.back()),
      backgroundColor: Colors.transparent,
    );
  }

  GetBuilder<LinkjoyFoolishlyFamousHand> buildTabView() {
    return GetBuilder<LinkjoyFoolishlyFamousHand>(
      id: LinkjoyFoolishlyFamousHand.linkjoy_fetus,
      builder: (_) {
        return SizedBox(
          width: 220,
          height: LinkjoyGarage.s32,
          child: Row(
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: logic.dateType == LinkjoyFoolishlyFamousHand.TYPE_DAILY
                      ? Colors.white
                      : Colors.transparent,
                  borderRadius: BorderRadiusDirectional.only(
                    topStart: 20.radius,
                    bottomStart: 20.radius,
                  ),
                  border: Border.all(color: Colors.white, width: 1.w),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 6),
                width: 110,
                height: LinkjoyGarage.s32,
                child: LinkjoyMarsha.captionM("linkjoy_caring_olden_famous".tr)
                    .color(
                      logic.dateType == LinkjoyFoolishlyFamousHand.TYPE_DAILY
                          ? const Color(0xFFFF4188)
                          : Colors.white,
                    )
                    .build(),
              ).clickOld(
                () =>
                    logic.onTabSelected(LinkjoyFoolishlyFamousHand.TYPE_DAILY),
              ),

              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color:
                      logic.dateType == LinkjoyFoolishlyFamousHand.TYPE_WEEKLY
                      ? Colors.white
                      : Colors.transparent,
                  borderRadius: BorderRadiusDirectional.only(
                    topEnd: 20.radius,
                    bottomEnd: 20.radius,
                  ),
                  border: Border.all(color: Colors.white, width: 1.w),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 6),
                width: 110,
                height: 32,
                child: LinkjoyMarsha.captionM("linkjoy_caring_winkle_famous".tr)
                    .color(
                      logic.dateType == LinkjoyFoolishlyFamousHand.TYPE_WEEKLY
                          ? const Color(0xFFFF4188)
                          : Colors.white,
                    )
                    .build(),
              ).clickOld(
                () =>
                    logic.onTabSelected(LinkjoyFoolishlyFamousHand.TYPE_WEEKLY),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return GetBuilder<LinkjoyFoolishlyFamousHand>(
      id: LinkjoyFoolishlyFamousHand.linkjoy_stubborn,
      builder: (_) {
        LinkjoyFondnessFoolishlyFamous? me = logic.me;
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            EasyRefresh.builder(
              onRefresh: logic.onLinkjoyStubbornVulcan,
              controller: logic.refreshController,
              triggerAxis: Axis.vertical,
              resetAfterRefresh: false,
              header: LinkjoyFridgeLightbulb.linkjoyVulcanTail(),
              footer: LinkjoyFridgeLightbulb.linkjoyVulcanTenth(),
              childBuilder: (BuildContext context, ScrollPhysics physics) {
                if (logic.rankListData.isEmpty) {
                  return LinkjoyFridgeLightbulb.linkjoyNoFinancialMagazine(
                    error: false,
                  );
                }
                return CustomScrollView(
                  physics: physics,
                  slivers: [
                    SliverToBoxAdapter(child: _linkjoyFamousStubbornGoody()),

                    SliverPadding(
                      padding: EdgeInsets.only(
                        top: LinkjoyGarage.s8,
                        left: LinkjoyGarage.s24,
                        right: LinkjoyGarage.s24,
                        bottom: 88.w,
                      ),
                      sliver: _linkjoyFamousStubbornNarrate(),
                    ),
                  ],
                );
              },
            ),

            if (me != null) buildMe(me),
          ],
        );
      },
    );
  }

  Container buildMe(LinkjoyFondnessFoolishlyFamous me) {
    return Container(
      width: Get.width,
      height: 80.w,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0x00FFFFFF), Color(0xFFFFFFFF)],
          begin: Alignment.topCenter,
          end: Alignment.center,
        ),
        borderRadius: BorderRadius.all(Radius.circular(28.w)),
      ),
      alignment: Alignment.center,
      child: Container(
        width: Get.width - LinkjoyGarage.s16,
        height: 56.w,
        padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s8),
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFFFF5DB5), Color(0xFFFFACFA)],
            begin: Alignment.center,
            end: Alignment.bottomCenter,
          ),
          borderRadius: BorderRadius.all(Radius.circular(28.w)),
        ),
        child: Row(
          children: [
            LinkjoyFastenDance.circle(
              LINKJOY.user().avatarUrl,
              size: 40.w,
              fit: BoxFit.cover,
              clip: ImageClipType.middle,
            ),
            LinkjoyFeynman.h8,
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints(maxWidth: 180.w),
                  child: LinkjoyMarsha.wBody2M(LINKJOY.user().nickName).build(),
                ),
                2.hGap,
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("${me.coins}", style: LinkjoyMarshaHater.w_body2_B),
                    4.wGap,
                    LinkjoyFastenIndustrial.asset(
                      "linkjoy_toe_chipmunk",
                      width: 12,
                      height: 12,
                    ),
                  ],
                ),
              ],
            ),
            const Spacer(),
            me.num < 0
                ? LinkjoyMarsha.wBody2M(
                    'linkjoy_caring_greeting_horribly_examine'.tr,
                  ).build()
                : Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: LinkjoyFastenIndustrial.assetProvider(
                          "linkjoy_toe_foolishly_famous_main_me",
                        ),
                      ),
                    ),
                    width: 32.w,
                    height: 32.w,
                    child: LinkjoyMarsha.wCaptionB(
                      '${me.num}',
                    ).color(const Color(0xFFFF609D)).build(),
                  ),
          ],
        ),
      ),
    );
  }

  Widget _linkjoyFamousStubbornGoody() {
    LinkjoyFondnessFoolishlyFamous? first = logic.rankListData.firstWhereOrNull(
      (element) => element.num == 1,
    );
    LinkjoyFondnessFoolishlyFamous? second = logic.rankListData
        .firstWhereOrNull((element) => element.num == 2);
    LinkjoyFondnessFoolishlyFamous? third = logic.rankListData.firstWhereOrNull(
      (element) => element.num == 3,
    );

    return Container(
      width: Get.width,
      height: 280,
      margin: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s8),
      child: Row(
        children: [
          Flexible(
            flex: 12,
            child: Container(
              height: 280,
              width: Get.width,
              alignment: Alignment.topCenter,
              child: _linkjoyOughtaBroadway(second),
            ),
          ),
          Flexible(
            flex: 13,
            child: Container(
              height: 280,
              width: Get.width,
              alignment: Alignment.topCenter,
              child: _linkjoyOughtaBroadway(first),
            ),
          ),
          Flexible(
            flex: 12,
            child: Container(
              height: 280,
              width: Get.width,
              alignment: Alignment.topCenter,
              child: _linkjoyOughtaBroadway(third),
            ),
          ),
        ],
      ),
    );
  }

  Widget _linkjoyOughtaBroadway(LinkjoyFondnessFoolishlyFamous? data) {
    if (data == null) {
      return const SizedBox.shrink();
    }
    double width = 120.w;
    double height = 184.w;
    double top = 54;
    double bgWidth = 90.w;
    double bgHeight = 115.w;
    double avatarSize = 70.w;

    if (data.num == 1) {
      width = 130.w;
      height = 210.w;
      top = 0;
      bgWidth = 102.w;
      bgHeight = 130.w;
      avatarSize = 85.w;
    }

    if (data.num == 2) {
      top = 45;
    }

    return Container(
      margin: EdgeInsets.only(top: top),
      padding: const EdgeInsets.symmetric(horizontal: 6),
      width: width,
      height: height,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 24),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: LinkjoyFastenIndustrial.assetProvider(
                    "linkjoy_toe_foolishly_famous_bg_${data.num}",
                  ),
                ),
              ),
              width: bgWidth,
              height: bgHeight,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  LinkjoyMarsha.wBody2M(data.nickName).build(),
                  LinkjoyFeynman.v2,
                  LinkjoyFridgeLightbulb.linkjoySignalFridge(data.level),
                  LinkjoyFeynman.v2,
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "${data.coins}",
                        style: LinkjoyMarshaHater.w_body2_B,
                      ),
                      4.wGap,
                      LinkjoyFastenIndustrial.asset(
                        "linkjoy_toe_chipmunk",
                        width: 12,
                        height: 12,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            top: (width - avatarSize) / 2,
            child: LinkjoyFastenDance.circle(
              data.avatarUrl,
              size: avatarSize,
              fit: BoxFit.cover,
              clip: ImageClipType.middle,
            ),
          ),

          Positioned(
            top: 0,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: LinkjoyFastenIndustrial.assetProvider(
                    "linkjoy_toe_foolishly_famous_south_${data.num}",
                  ),
                ),
              ),
              width: width,
              height: width,
            ),
          ),
        ],
      ),
    );
  }

  Widget _linkjoyFamousStubbornNarrate() {
    if (logic.rankListData.length <= 3) {
      return const SizedBox.shrink();
    }
    return SliverList.builder(
      itemBuilder: (BuildContext context, int index) {
        LinkjoyFondnessFoolishlyFamous data = logic.rankListData[index + 3];
        BorderRadiusGeometry? borderRadius = index == 0
            ? const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )
            : null;
        return Container(
          decoration: BoxDecoration(
            color: LinkjoyCondensate.white_60p,
            borderRadius: borderRadius,
          ),
          height: 68.w,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: LinkjoyFastenIndustrial.assetProvider(
                      "linkjoy_toe_foolishly_famous_main",
                    ),
                  ),
                ),
                width: 32.w,
                height: 32.w,
                child: LinkjoyMarsha.wCaptionB('${data.num}').build(),
              ),
              LinkjoyFeynman.h4,
              LinkjoyFastenDance.circle(
                data.avatarUrl,
                size: 48.w,
                fit: BoxFit.cover,
                clip: ImageClipType.middle,
              ),
              LinkjoyFeynman.h8,
              Container(
                constraints: BoxConstraints(maxWidth: 120.w),
                child: LinkjoyMarsha.bodyM(data.nickName).build(),
              ),
              LinkjoyFeynman.h2,
              LinkjoyFridgeLightbulb.linkjoySignalFridge(data.level),
              const Spacer(),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("${data.coins}", style: LinkjoyMarshaHater.body2_B),
                  4.wGap,
                  LinkjoyFastenIndustrial.asset(
                    "linkjoy_toe_chipmunk",
                    width: 12,
                    height: 12,
                  ),
                ],
              ),
            ],
          ),
        );
      },
      itemCount: logic.rankListData.length - 3,
    );
  }
}
