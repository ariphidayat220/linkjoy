import 'dart:math';
import 'dart:ui';

import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_flashy_famous.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_andrew.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_andrew_soak.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_wail_degree_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_andrew_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_phillips_stubborn_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_yum.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_shredder.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_headline.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_industrial.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_amplitude.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha_hater.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_division.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_therapist_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_destine_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_spock_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_fridge_unborn_chicken_hair.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_matey.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoyAndrewDivision
    extends LinkjoyMagnetHormoneDivision<LinkjoyAndrewHand> {
  const LinkjoyAndrewDivision({super.key, super.tag});

  @override
  List<Widget> buildBodyWidgets(BuildContext context) {
    try {
      List<Widget> widgets = [];

      widgets.add(buildScaffold(context));

      widgets.add(buildBottom(context));
      return widgets;
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(770010, e, stack);
      rethrow;
    }
  }

  Widget buildScaffold(BuildContext context) {
    return Scaffold(
      backgroundColor: LinkjoyAve.bgDark,
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          final double topPadding = MediaQuery.paddingOf(context).top;

          double imgHeight = Get.width + kTextTabBarHeight;

          final double expandedHeight =
              imgHeight + (_linkjoyMarketingFetusYam() ? kTextTabBarHeight : 0);
          return [
            SliverOverlapAbsorber(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
              sliver: SliverLayoutBuilder(
                builder: (BuildContext context, constraints) {
                  double collapsedPercent = min(
                    constraints.scrollOffset /
                        (expandedHeight -
                            (topPadding +
                                kTextTabBarHeight +
                                kTextTabBarHeight)),
                    1,
                  );
                  return buildSliverAppBar(
                    collapsedPercent,
                    imgHeight,
                    expandedHeight,
                    topPadding,
                  );
                },
              ),
            ),
          ];
        },
        body: _linkjoyOughtaTuck(),
      ),
    );
  }

  TabBarView _linkjoyOughtaTuck() {
    return TabBarView(
      controller: logic.tabController,
      children: logic.tabs.map((tab) => createPageBuilder(tab)).toList(),
    );
  }

  SliverAppBar buildSliverAppBar(
    double percent,
    double imgHeight,
    double expandedHeight,
    double topPadding,
  ) {
    return SliverAppBar(
      backgroundColor: LinkjoyAve.bgDark,
      pinned: true,
      title: logic.showOnline()
          ? _linkjoyOughtaChickenHair()
          : const SizedBox.shrink(),
      leading: const Icon(
        Icons.arrow_back,
        color: Colors.white,
      ).clickOld(() => Get.back(closeOverlays: true)),
      centerTitle: true,
      flexibleSpace: _linkjoyBroadwayFridge(
        Get.width,
        expandedHeight,
        percent,
        imgHeight,
      ),
      expandedHeight: expandedHeight - topPadding,
      actions: buildActions(),
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
      ),
      bottom: _linkjoyMarketingFetusYam()
          ? TabBar(
              controller: logic.tabController,
              tabs: logic.tabs
                  .map((String name) => Tab(text: name.tr))
                  .toList(),
              isScrollable: true,
              labelStyle: LinkjoyMarshaTriplet.bodyTitle,
              unselectedLabelStyle: LinkjoyMarshaTriplet.bodyTitle.copyWith(
                color: LinkjoyAve.textThird,
              ),
              indicatorColor: LinkjoyAve.primaryMain,
              tabAlignment: TabAlignment.center,
            )
          : null,
    );
  }

  bool _linkjoyMarketingFetusYam() => logic.tabs.length > 1;

  Widget createPageBuilder(String name) {
    return Builder(
      builder: (BuildContext context) {
        return CustomScrollView(
          key: PageStorageKey<String>(name),
          slivers: <Widget>[
            SliverOverlapInjector(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            ),
            findPageByName(context, name),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 6.w, bottom: 110.w),
                child: linkjoyOughtaHey(),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              fillOverscroll: true,
              child: Container(color: LinkjoyAve.bgDark),
            ),
          ],
        );
      },
    );
  }

  Widget linkjoyOughtaHey() {
    return linkjoyBrochureForget(
      id: LinkjoyAndrewHand.linkjoy_hey,
      builder: (_) {
        if (!logic.showSuggested()) {
          return const SizedBox.shrink();
        }
        double width =
            (Get.width - LinkjoyDivorced.linkjoyDivisionPearlKidneyShout * 3) /
            2;
        double height =
            width /
            LinkjoyDivorced.linkjoyDivisionPearlKidneyDecideAcrossSlacker;

        return Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: LinkjoyGarage.s6,
                bottom: LinkjoyGarage.s12,
              ),
              width: Get.width - (2 * LinkjoyGarage.s12),
              height: 1.w,
              color: LinkjoyAve.lineSplit,
            ),
            Text(
              "linkjoy_caring_hey_geography_biological".tr,
              style: LinkjoyMarshaTriplet.subtitle,
            ),
            SizedBox(height: LinkjoyGarage.s12),
            SizedBox(
              width: Get.width,
              height: height,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  LinkjoyTherapistSister.linkjoyOughtaPearlDecide(
                    logic.suggestAnchors[0],
                    logic.suggestCountryMap[logic.suggestAnchors[0].countryId],
                    width: width,
                    height: height,
                  ),
                  LinkjoyTherapistSister.linkjoyOughtaPearlDecide(
                    logic.suggestAnchors[1],
                    logic.suggestCountryMap[logic.suggestAnchors[1].countryId],
                    width: width,
                    height: height,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget findPageByName(BuildContext context, String name) {
    switch (name) {
      case 'linkjoy_caring_mandatory':
        return buildAlbum(context);
      case 'linkjoy_caring_flashy_vbl':
        return buildGiftWall();
      case 'linkjoy_caring_dismiss_wedge':
        return buildPersonalInfo();
      default:
        return const SliverToBoxAdapter();
    }
  }

  GetBuilder<LinkjoyAndrewHand> buildAlbum(BuildContext context) {
    return linkjoyBrochureForget(
      id: LinkjoyAndrewHand.linkjoy_generic,
      builder: (_) {
        return SliverPadding(
          padding: EdgeInsets.all(LinkjoyGarage.s12),
          sliver: SliverGrid.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: LinkjoyGarage.s8,
              crossAxisSpacing: LinkjoyGarage.s8,
              childAspectRatio: 1,
            ),
            itemCount: logic.albumList.length,
            itemBuilder: (BuildContext context, int index) {
              double width = (Get.width - 40.w) / 3;
              double height = width;
              return _linkjoyOughtaGenericDecide(
                context,
                logic.albumList[index],
                index,
                width: width,
                height: height,
              );
            },
          ),
        );
      },
    );
  }

  SliverToBoxAdapter buildGiftWall() {
    return SliverToBoxAdapter(
      child: linkjoyBrochureForget(
        id: LinkjoyAndrewHand.linkjoy_flashy,
        builder: (_) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s12),
            child: Visibility(
              visible: _.showGiftWall(),
              child: _linkjoyCrispStubbornNarrate(),
            ),
          );
        },
      ),
    );
  }

  SliverToBoxAdapter buildPersonalInfo() {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.only(
          top: LinkjoyGarage.s12,
          bottom: LinkjoyGarage.s12,
        ),
        child: Column(
          children: [
            Column(
              children: [
                linkjoyBrochureForget(
                  id: LinkjoyAndrewHand.linkjoy_unborn,
                  builder: (_) {
                    return _linkjoyWedgeNarrate();
                  },
                ),
              ],
            ),

            Column(
              children: [
                linkjoyBrochureForget(
                  id: LinkjoyAndrewHand.linkjoy_direction,
                  builder: (_) {
                    return Visibility(
                      visible: _.showInterests(),
                      child: _linkjoyDirectionNarrate(),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  List<Widget>? buildActions() {
    if (LINKJOY.linkjoyShock.isLinkjoyAiLengthOgle()) {
      return null;
    }
    if (logic.notMyself &&
        !LinkjoyAncestorSister.isLinkjoySailorProcessing(logic.uid)) {
      return [
        LinkjoyFridgeLightbulb.linkjoySillinessMagazine(
          Icons.more_vert_outlined,
          () => logic.onLinkjoyBroadwayYamSilliness(),
        ),
      ];
    } else {
      return null;
    }
  }

  Widget _linkjoyBroadwayFridge(
    double width,
    double height,
    double collapsedPercent,
    double imgHeight,
  ) {
    return SizedBox(
      width: width,
      height: height,
      child: linkjoyBrochureForget(
        id: LinkjoyAndrewHand.linkjoy_unborn,
        builder: (_) {
          return Stack(
            children: [
              SizedBox(width: width, height: height),

              LinkjoyAncestorSister.isLinkjoySailorProcessing(logic.uid)
                  ? LinkjoyFastenIndustrial.asset(
                      LinkjoyAncestorSister.linkjoy_sailor_vent,
                      width: Get.width,
                      height: imgHeight,
                      fit: BoxFit.cover,
                    )
                  : LinkjoyFastenDance.image(
                      logic.avatarUrl ?? "",
                      width: Get.width,
                      height: imgHeight,
                      fit: BoxFit.cover,
                      placeholder: (context, url) =>
                          LinkjoyFridgeLightbulb.linkjoyEmergePineDuel(
                            borderRadius: LinkjoyDivorced
                                .linkjoyAndrewGenericDecideFrontal,
                            iconSize: LinkjoyBookshelf.lg.size(),
                          ),
                      clip: ImageClipType.large,
                    ),

              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildBaseInfoWidget(),
                    Container(
                      width: Get.width,
                      padding: EdgeInsets.only(
                        top: LinkjoyGarage.s12,
                        left: LinkjoyGarage.s16,
                        right: LinkjoyGarage.s16,
                        bottom: (_linkjoyMarketingFetusYam()
                            ? kTextTabBarHeight
                            : 0),
                      ),
                      color: LinkjoyAve.bgDark,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _.linkjoyTen(),
                            style: LinkjoyMarshaTriplet.body,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          LinkjoyFeynman.v12,
                          LinkjoyFridgeLightbulb.linkjoyPeephole(
                            color: Colors.white.withValues(alpha: 0.05),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ).opacity(1 - collapsedPercent);
        },
      ),
    );
  }

  Container buildBaseInfoWidget() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.s12,
        vertical: LinkjoyGarage.s8,
      ),
      width: Get.width,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.transparent, Colors.black45, Colors.black54],
        ),
      ),
      child: LinkjoyAncestorSister.isLinkjoySailorProcessing(logic.uid)
          ? Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  logic.linkjoyChargeLenny(),
                  style: LinkjoyMarshaTriplet.title,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                linkjoyBrochureForget(
                  id: LinkjoyAndrewHand.linkjoy_unborn,
                  builder: (_) {
                    return Container(
                      constraints: BoxConstraints(maxWidth: Get.width * 0.65),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                constraints: BoxConstraints(
                                  maxWidth: Get.width * 0.4,
                                ),
                                child: Text(
                                  _.linkjoyChargeLenny(),
                                  style: LinkjoyMarshaTriplet.subtitle,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              if (_.showLevel())
                                Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                    start: 4.0,
                                  ),
                                  child:
                                      LinkjoyFridgeLightbulb.linkjoySignalFridge(
                                        _.profile.value!.level,
                                        isAnchor:
                                            _.profile.value
                                                ?.isLinkjoyFoolishly() ??
                                            true,
                                      ),
                                ),
                            ],
                          ),

                          LinkjoyFeynman.v8,
                          _linkjoyOughtaSaverSoften(_),

                          LinkjoyFeynman.v4,
                          if (_.showLang())
                            Wrap(
                              alignment: WrapAlignment.start,
                              spacing: 6,
                              runSpacing: 6,
                              children: List.generate(
                                min(logic.linkjoyHumiditySoho().length, 2),
                                (index) {
                                  return LinkjoyUiHeadline.linkjoySingingKryptonian(
                                    logic.linkjoyHumiditySoho()[index],
                                  );
                                },
                              ),
                            ),
                        ],
                      ),
                    );
                  },
                ),
                const Spacer(),

                if (logic.notMyself) _linkjoyBuzzDwarf(),
              ],
            ),
    );
  }

  Widget _linkjoyOughtaSaverSoften(LinkjoyAndrewHand _) {
    bool showCountry = _.showCountry();
    bool showGender = _.showGender();
    bool showCopyID = _.showCopyID();
    if (!showCountry && !showGender && !showCopyID) {
      return const SizedBox.shrink();
    }
    List<Widget> rowWidgets = [];
    if (showGender) {
      rowWidgets.add(
        LinkjoyUiHeadline.genderAgeTag(
          gender: _.profile.value!.gender,
          age: _.profile.value!.age,
        ),
      );
      rowWidgets.add(LinkjoyFeynman.h4);
    }
    if (showCountry) {
      rowWidgets.add(
        LinkjoyUiHeadline.flagIcon(
          flagPath: logic.profile.value!.country.flag,
          name: logic.profile.value!.country.code,
        ),
      );
      rowWidgets.add(LinkjoyFeynman.h4);
    }

    if (showCopyID) {
      rowWidgets.add(LinkjoyUiHeadline.copyIDWidget(_.profile.value!.ucode));
      rowWidgets.add(LinkjoyFeynman.h4);
    }
    return Row(mainAxisSize: MainAxisSize.min, children: rowWidgets);
  }

  LinkjoyFridgeUnbornChickenHair _linkjoyOughtaChickenHair() {
    final bool isExist = LinkjoyMangoMenstrual.hasPageRoute(
      LinkjoyGet.LinkjoyUnbornInventiveDivision,
    );
    return LinkjoyFridgeUnbornChickenHair(
      uid: logic.uid,
      nickName: isExist ? null : logic.linkjoyChargeLenny(),
      avatar: isExist ? null : logic.linkjoyVentBicycle(),
      showLive: true,
    );
  }

  Widget _linkjoyBuzzDwarf() {
    return linkjoyBrochureForget(
      id: LinkjoyAndrewHand.linkjoy_buzz,
      builder: (_) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              LinkjoyGnomeSister.numberToString4(_.followedCount),
              style: LinkjoyMarshaTriplet.bodyTitle.copyWith(height: 1),
            ),
            LinkjoyFeynman.v4,
            Text(
              "linkjoy_caring_godfather".tr,
              style: LinkjoyMarshaTriplet.caption.copyWith(height: 1),
            ),
            LinkjoyFeynman.v8,
            LinkjoyEllen.roundIconText(
              _.followed
                  ? Icons.person_remove_alt_1_rounded
                  : Icons.person_add_alt_1_rounded,
              _.followed
                  ? "linkjoy_caring_pharmacist".tr
                  : "linkjoy_caring_buzz".tr,
              size: LinkjoyBookshelf.md,
              padding: EdgeInsetsGeometry.symmetric(
                horizontal: LinkjoyGarage.s12,
                vertical: 0,
              ),
              () => logic.onLinkjoyBuzzPeripheral(),
              bgColor: _.followed
                  ? LinkjoyAve.disabled
                  : LinkjoyAve.primaryMain,
              radius: LinkjoyDiscard.radiusMedium,
            ),
          ],
        );
      },
    );
  }

  Widget _linkjoyWedgeNarrate() {
    if (!logic.showInfos()) return const SizedBox.shrink();
    List<Widget> widgets = [];
    widgets.add(
      Text(
        "linkjoy_caring_dismiss_wedge".tr,
        style: LinkjoyMarshaTriplet.bodyTitle,
      ),
    );
    widgets.add(LinkjoyFeynman.v12);
    if (logic.birthday > 0) {
      widgets.add(
        buildInformationItem(
          Icons.cake_rounded,
          "linkjoy_caring_neighbor".tr,
          LinkjoyDestineSister.formatDay(logic.birthday),
        ),
      );
      widgets.add(LinkjoyFeynman.v20);
    }
    if (logic.height > 0) {
      widgets.add(
        buildInformationItem(
          Icons.height_rounded,
          "linkjoy_caring_prepare".tr,
          "${logic.height} ${"linkjoy_caring_cm".tr}",
        ),
      );
      widgets.add(LinkjoyFeynman.v20);
    }
    if (logic.weight > 0) {
      widgets.add(
        buildInformationItem(
          Icons.monitor_weight_rounded,
          "linkjoy_caring_post".tr,
          "${logic.weight} ${"linkjoy_caring_kg".tr}",
        ),
      );
      widgets.add(LinkjoyFeynman.v20);
    }
    widgets.removeLast();
    return _linkjoySaverPremiere(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widgets,
      ),
    );
  }

  Row buildInformationItem(IconData iconData, String title, String value) {
    return Row(
      children: [
        Icon(
          iconData,
          size: LinkjoyGarage.s16,
          color: LinkjoyAve.textPrimary.withValues(alpha: 0.8),
        ),
        LinkjoyFeynman.h4,
        Text(
          title,
          style: LinkjoyMarshaTriplet.bodyLarge.copyWith(
            color: LinkjoyAve.textPrimary.withValues(alpha: 0.8),
          ),
        ),
        const Spacer(),
        Text(
          value,
          style: LinkjoyMarshaTriplet.bodyLarge.copyWith(
            color: LinkjoyAve.textPrimary.withValues(alpha: 0.8),
          ),
        ),
      ],
    );
  }

  Widget _linkjoyDirectionNarrate() {
    if (logic.interestLabels.isEmpty) return Container();
    return _linkjoySaverPremiere(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'linkjoy_caring_direction_headline'.tr,
            style: LinkjoyMarshaTriplet.bodyTitle,
          ),
          LinkjoyFeynman.v12,
          LinkjoyUiHeadline.interestTags(logic.interestLabels),
        ],
      ),
    );
  }

  Widget _linkjoySaverPremiere({Widget? child}) {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        border: Border.all(
          color: LinkjoyAve.surface.withValues(alpha: 0.5),
          width: 0.5,
        ),
        color: LinkjoyAve.surface.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusLarge),
      ),
      margin: EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.s16,
        vertical: LinkjoyGarage.s6,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.s12,
        vertical: LinkjoyGarage.s16,
      ),
      child: child,
    );
  }

  Widget _linkjoySchoolNarrate() {
    List<String> evaluateStrings = [];
    for (var element in logic.evaluateTags) {
      LinkjoyFondnessAndrewSoak? evaluation = LINKJOY.linkjoyShock
          .getEvaluationsById(element.tag);
      if (evaluation != null)
        evaluateStrings.add("${evaluation.name.tr} ${element.count}");
    }
    return _linkjoySaverPremiere(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  'linkjoy_caring_soak_of_me'.tr,
                  style: LinkjoyMarshaTriplet.bodyTitle,
                ),
              ),
              Visibility(
                visible: logic.evaluate > 0,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    RatingBar(
                      initialRating: logic.evaluate,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      ignoreGestures: true,
                      itemCount: 5,
                      itemSize: LinkjoyGarage.s16,
                      ratingWidget: RatingWidget(
                        full: Icon(
                          Icons.star,
                          size: LinkjoyGarage.s16,
                          color: LinkjoyAve.primaryMain,
                        ),
                        half: Icon(
                          Icons.star_half,
                          size: LinkjoyGarage.s16,
                          color: LinkjoyAve.primaryMain,
                        ),
                        empty: Icon(
                          Icons.star_border,
                          size: LinkjoyGarage.s16,
                          color: LinkjoyAve.disabled,
                        ),
                      ),
                      itemPadding: LinkjoyAmplitude.h4,
                      onRatingUpdate: (rating) {},
                    ),
                    LinkjoyFeynman.h6,
                    Text('${logic.evaluate}', style: LinkjoyMarshaTriplet.body),
                  ],
                ),
              ),
            ],
          ),
          LinkjoyFeynman.v12,
          Wrap(
            alignment: WrapAlignment.start,
            spacing: 6,
            runSpacing: 6,
            children: List.generate(evaluateStrings.length, (index) {
              return Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: LinkjoyAve.overlayLight,
                  border: Border.all(color: LinkjoyAve.overlayStrong, width: 1),
                  borderRadius: BorderRadius.circular(
                    LinkjoyDiscard.radiusFull,
                  ),
                ),
                child: Text(
                  evaluateStrings[index],
                  style: LinkjoyMarshaTriplet.caption.copyWith(
                    color: LinkjoyAve.primaryMain,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }

  void tapOnMedia(MediaVo media, int index) {
    logic.onLinkjoyGenericAbove(index);
    logic.carouselController.jumpToPage(index);
  }

  List<Widget> _linkjoyFaucetWarlord(MediaVo media) {
    int cardKey = LINKJOY.linkjoyUnbornDeposit?.cardKey ?? 0;
    return [
      LinkjoyFeynman.v8,
      Text(
        "linkjoy_caring_narrate_sexual_duel".tr,
        style: LinkjoyMarshaTriplet.title,
      ),
      LinkjoyFeynman.v16,
      Text(
        "linkjoy_caring_narrate_sexual_duel_limbic".tr,
        style: LinkjoyMarshaTriplet.bodyLarge.copyWith(
          color: LinkjoyAve.textSecondary,
        ),
        textAlign: TextAlign.center,
      ),
      LinkjoyFeynman.v32,

      LinkjoyFridgeLightbulb.linkjoyPhillipsAnimalSubjective(
        argument: LinkjoyPhillipsStubbornJaw(
          fromType: LinkjoyWailImitateGnome.FROM_PROFILE_ALBUM,
          fromUid: logic.uid,
        ),
      ),
      LinkjoyFeynman.v8,

      buildUnlockBtn(media, cardKey),
    ];
  }

  Widget buildUnlockBtn(MediaVo media, int cardKey) {
    if (cardKey > 0) {
      return Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: LinkjoyGarage.s8),
            child: LinkjoyPondAssume.circle(
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LinkjoyFastenIndustrial.asset(
                    'linkjoy_toe_decide_obsessed',
                    width: 32,
                    height: 32,
                  ),
                  LinkjoyFeynman.h12,
                  Text(
                    'linkjoy_caring_faucet_duel'.tr,
                    style: LinkjoyMarshaTriplet.body,
                  ),
                ],
              ),
              size: LinkjoyBookshelf.xl,
              () => logic
                  .onLinkjoyFaucetGeneric(media)
                  .then((value) => Get.back()),
            ),
          ),
          Positioned(
            top: 0,
            child: cardKey > 0
                ? buildCardNumberWidget('linkjoy_toe_decide_obsessed', cardKey)
                : const SizedBox.shrink(),
          ),
        ],
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _linkjoyOughtaGenericDecide(
    BuildContext context,
    MediaVo media,
    int index, {
    double width = 75,
    double height = 100,
  }) {
    return Stack(
      children: [
        media is PhotoVO
            ? _linkjoyDuelDecide(
                media,
                width,
                height,
              ).click(() => logic.onLinkjoyDuelStimulus(media))
            : _linkjoyDegrasseDecide(
                media as VideoVO,
                width,
                height,
              ).click(() => logic.onLinkjoyDegrasseThyStimulus(media)),

        if (!media.amIPaid())
          SizedBox(
            width: width,
            height: height,
            child: Stack(
              alignment: Alignment.center,
              children: [
                ClipRRect(
                  borderRadius:
                      LinkjoyDivorced.linkjoyAndrewGenericDecideFrontal,
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 16.0, sigmaY: 16.0),
                    child: Container(color: LinkjoyCondensateSister.black_60p),
                  ),
                ),
                const Icon(Icons.lock_rounded),
                PositionedDirectional(
                  top: LinkjoyGarage.s8,
                  end: LinkjoyGarage.s8,
                  child: LinkjoyFridgeLightbulb.linkjoyPhillipsCrumble(
                    width: 39,
                    height: 16,
                  ),
                ),
              ],
            ),
          ).click(
            () => LinkjoyUIShredder.linkjoyMagnetShredder(
              _linkjoyFaucetWarlord(media),
            ),
          ),
      ],
    );
  }

  Widget _linkjoyDuelDecide(PhotoVO media, double width, double height) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        borderRadius: LinkjoyDivorced.linkjoyAndrewGenericDecideFrontal,
      ),
      child: LinkjoyFastenDance.round(
        media.img_url ?? "",
        width: width,
        height: height,
        clip: ImageClipType.middle,
        borderRadius: LinkjoyDivorced.linkjoyAndrewGenericDecideFrontal,
        fit: BoxFit.cover,
        placeHolder: (context, url) =>
            LinkjoyFridgeLightbulb.linkjoyEmergePineDuel(
              borderRadius: LinkjoyDivorced.linkjoyAndrewGenericDecideFrontal,
              iconSize: LinkjoyBookshelf.sm.size(),
            ),
      ),
    );
  }

  Widget _linkjoyDegrasseDecide(VideoVO media, double width, double height) {
    return Container(
      width: width,
      height: height,
      decoration: const BoxDecoration(
        borderRadius: LinkjoyDivorced.linkjoyAndrewGenericDecideFrontal,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          LinkjoyFastenDance.round(
            media.cover_url!,
            width: width,
            height: height,
            clip: ImageClipType.middle,
            borderRadius: LinkjoyDivorced.linkjoyAndrewGenericDecideFrontal,
            fit: BoxFit.cover,
            placeHolder: (context, url) =>
                LinkjoyFridgeLightbulb.linkjoyEmergePineDegrasse(
                  borderRadius:
                      LinkjoyDivorced.linkjoyAndrewGenericDecideFrontal,
                  iconSize: LinkjoyBookshelf.sm.size(),
                ),
          ),
          LinkjoyFastenIndustrial.asset(
            "linkjoy_toe_degrasse_style_magazine",
            width: LinkjoyGarage.s24,
            height: LinkjoyGarage.s24,
          ),
        ],
      ),
    );
  }

  Widget _linkjoyCrispStubbornNarrate() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          separatorBuilder: (context, index) => LinkjoyFeynman.v6,
          itemCount: logic.allGifts.length,
          padding: EdgeInsets.only(
            top: LinkjoyGarage.s12,
            bottom: LinkjoyGarage.s12,
          ),
          itemBuilder: (BuildContext context, int index) {
            VoGift? gift = logic.allGifts[index];
            return _linkjoyFlashyDecide(gift, logic.giftVoMap[gift.id]);
          },
        ),
      ],
    );
  }

  Widget _linkjoyFlashyDecide(VoGift gift, GiftVO? giftVo) {
    double width = Get.width - (LinkjoyGarage.s12 * 2);
    double height = width / 351 * 64;
    bool enable = giftVo != null;
    Color bgColor = enable
        ? LinkjoyAve.overlayStrong
        : LinkjoyAve.disabled.withValues(alpha: 0.2);
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusMedium),
      ),
      alignment: Alignment.center,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          LinkjoyFeynman.h12,
          LinkjoyFastenDance.small(
            gift.icon,
            width: LinkjoyGarage.s40,
            height: LinkjoyGarage.s40,
          ),
          LinkjoyFeynman.h8,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Text(
                    gift.name,
                    style: LinkjoyMarshaTriplet.body.copyWith(
                      color: enable
                          ? LinkjoyAve.textPrimary
                          : LinkjoyAve.textSecondary,
                    ),
                  ),
                  LinkjoyFeynman.h4,
                  if (gift.isVipGift)
                    LinkjoyFridgeLightbulb.linkjoyPhillipsCrumble(),
                ],
              ),
              LinkjoyFeynman.v6,
              enable
                  ? Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: LinkjoyGarage.s12,
                      ),
                      height: 20.w,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: LinkjoyAve.primaryMain,
                        borderRadius: BorderRadius.circular(
                          LinkjoyDiscard.radiusFull,
                        ),
                      ),
                      constraints: BoxConstraints(minWidth: 44.w),
                      child: Text(
                        "×${giftVo.count}",
                        style: LinkjoyMarshaTriplet.caption,
                      ),
                    )
                  : Text(
                      "linkjoy_caring_grey_swimsuit_mayo".tr,
                      textAlign: TextAlign.center,
                      style: LinkjoyMarshaTriplet.captionThin,
                    ),
            ],
          ),
          const Spacer(),
          if (giftVo != null)
            SizedBox(
              width: LinkjoyGarage.s48,
              height: LinkjoyGarage.s48,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  LinkjoyFastenDance.circle(
                    giftVo.avatar,
                    size: 30.w,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 0,
                    child: LinkjoyFastenIndustrial.asset(
                      "linkjoy_toe_andrew_flashy_vbl_broadway_express",
                      width: LinkjoyGarage.s48,
                      height: LinkjoyGarage.s48,
                    ),
                  ),
                ],
              ),
            ),
          if (giftVo == null) LinkjoyFeynman.h6,
          LinkjoyFridgeLightbulb.linkjoyCampUptight(
            iconData: Icons.keyboard_arrow_right_rounded,
            color: LinkjoyAve.textPrimary,
          ),
          LinkjoyFeynman.h12,
        ],
      ),
    ).clickOld(() {
      logic.linkjoyMarketingFlashySicknessShredder(gift, (rank) {
        return linkjoyBrochureForget(
          id: LinkjoyAndrewHand.linkjoy_flashy_famous,
          builder: (_) {
            return linkjoyOughtaFlashySickness(
              logic.showGift ?? gift,
              logic.showRank ?? rank,
            );
          },
        );
      });
    });
  }

  Widget linkjoyOughtaFlashySickness(
    VoGift gift,
    LinkjoySororityFlashyFamous rank,
  ) {
    GiftVO? top = rank.top1();
    return Stack(
      alignment: Alignment.center,
      children: [
        PositionedDirectional(
          top: LinkjoyGarage.s16,
          start: LinkjoyGarage.s16,
          child: Container(
            height: LinkjoyGarage.s48,
            decoration: LinkjoyFridgeLightbulb.buildGradientDecoration(
              [
                LinkjoyAve.primaryMain,
                LinkjoyAve.primaryMain.withValues(alpha: 0),
              ],
              borderRadius: BorderRadiusDirectional.only(
                topStart: Radius.circular(LinkjoyDiscard.radiusLarge),
                bottomStart: Radius.circular(LinkjoyDiscard.radiusLarge),
              ),
              begin: AlignmentDirectional.centerStart,
              end: AlignmentDirectional.centerEnd,
            ),
            child: Row(
              children: [
                LinkjoyFastenDance.small(
                  gift.icon,
                  width: LinkjoyGarage.s48,
                  height: LinkjoyGarage.s48,
                ),

                Row(
                  children: [
                    Text(
                      gift.name,
                      style: LinkjoyMarshaTriplet.bodyTitle.copyWith(
                        color: LinkjoyAve.primaryLight,
                      ),
                    ),
                    LinkjoyFeynman.h4,
                    if (gift.isVipGift)
                      LinkjoyFridgeLightbulb.linkjoyPhillipsCrumble(),
                  ],
                ),
              ],
            ),
          ),
        ),

        SizedBox(
          height: 560.w,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s16),
            child: Column(
              children: [
                LinkjoyFeynman.v20,

                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 54.w),
                      padding: EdgeInsets.symmetric(
                        horizontal: LinkjoyGarage.s16,
                        vertical: LinkjoyGarage.s16,
                      ),
                      height: 127.w,
                      alignment: Alignment.bottomCenter,
                      decoration: LinkjoyAve.surfaceImportantDecoration,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: LinkjoyGarage.s8,
                        ),
                        alignment: Alignment.center,
                        height: 36.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            LinkjoyDiscard.radiusFull,
                          ),
                          color: Colors.white54,
                        ),
                        child: Text(
                          "linkjoy_caring_grey_swimsuit_mayo".tr,
                          textAlign: TextAlign.center,
                          style: LinkjoyMarshaTriplet.caption.copyWith(
                            color: LinkjoyAve.primaryMain,
                          ),
                        ),
                      ),
                    ),
                    top == null
                        ? Positioned(
                            top: 22.w,
                            child: LinkjoyFastenIndustrial.asset(
                              "linkjoy_toe_andrew_flashy_vbl_orange",
                              width: 60.w,
                              height: 60.w,
                            ),
                          )
                        : Positioned(
                            top: 22.w,
                            child: LinkjoyFastenDance.circle(
                              top.avatar,
                              size: 60.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                    Positioned(
                      top: 0,
                      child: LinkjoySpockFasten(
                        url:
                            "assets/linkjoy_toe_andrew_flashy_vbl_broadway.pag",
                        height: 108.w,
                        width: 108.w,
                      ),
                    ),
                    Positioned(
                      top: 104.w,
                      child: Container(
                        constraints: BoxConstraints(maxWidth: 200.w),
                        child: Text(
                          top == null
                              ? "linkjoy_caring_beyond".tr
                              : top.nickName,
                          style: LinkjoyMarshaTriplet.body,
                        ),
                      ),
                    ),
                  ],
                ),
                LinkjoyFeynman.v8,

                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: LinkjoyGarage.s2,
                        decoration:
                            LinkjoyFridgeLightbulb.buildGradientDecoration(
                              [
                                LinkjoyAve.primaryLight.withValues(alpha: 0),
                                LinkjoyAve.primaryLight,
                              ],
                              begin: AlignmentDirectional.centerStart,
                              end: AlignmentDirectional.centerEnd,
                            ),
                      ),
                    ),
                    LinkjoyFeynman.h6,
                    Text(
                      "linkjoy_caring_flashy_same".tr,
                      style: LinkjoyMarshaTriplet.subtitle,
                    ),
                    LinkjoyFeynman.h6,
                    Expanded(
                      child: Container(
                        height: LinkjoyGarage.s2,
                        decoration:
                            LinkjoyFridgeLightbulb.buildGradientDecoration(
                              [
                                LinkjoyAve.primaryLight,
                                LinkjoyAve.primaryLight.withValues(alpha: 0),
                              ],
                              begin: AlignmentDirectional.centerStart,
                              end: AlignmentDirectional.centerEnd,
                            ),
                      ),
                    ),
                  ],
                ),
                LinkjoyFeynman.v8,

                Text(
                  "linkjoy_caring_flashy_same_limbic".tr,
                  style: LinkjoyMarshaTriplet.caption.copyWith(
                    color: LinkjoyAve.primaryLight,
                  ),
                  textAlign: TextAlign.center,
                ),
                LinkjoyFeynman.v8,

                Expanded(
                  child: rank.list.isNotEmpty
                      ? ListView.builder(
                          scrollDirection: Axis.vertical,
                          padding: const EdgeInsets.all(0),
                          itemCount: rank.list.length,
                          itemBuilder: (BuildContext context, int index) {
                            var top = index == 0 ? 6.0 : 3.0;
                            var bottom = index == rank.list.length - 1
                                ? 80.w
                                : 3.0;
                            return Padding(
                              padding: EdgeInsets.only(
                                top: top,
                                bottom: bottom,
                              ),
                              child: buildGiftDetailItem(
                                index + 1,
                                rank.list[index],
                                gift,
                              ),
                            );
                          },
                        )
                      : Center(
                          child:
                              LinkjoyFridgeLightbulb.linkjoyNoFinancialMagazine(
                                error: false,
                                padding: EdgeInsets.zero,
                              ),
                        ),
                ),
              ],
            ),
          ),
        ),

        if (logic.notMyself)
          _linkjoyFlashySicknessSilly(
            gift,
            rank.isTOP1(),
            rank.becomeTOP1Need(),
          ),
      ],
    );
  }

  Container buildGiftDetailItem(int order, GiftVO item, VoGift gift) {
    return Container(
      padding: LinkjoyGarage.edgeH12,
      decoration: LinkjoyAve.surfaceDecoration,
      width: Get.width,
      height: LinkjoyGarage.s64,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: LinkjoyGarage.s24,
            height: LinkjoyGarage.s24,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: LinkjoyAve.overlayStrong,
            ),
            child: Text(
              order.toString(),
              style: LinkjoyMarshaTriplet.caption.copyWith(
                color: LinkjoyAve.primaryMain,
              ),
            ),
          ),
          LinkjoyFeynman.h12,
          LinkjoyFastenDance.circle(
            item.avatar,
            size: LinkjoyGarage.s48,
            fit: BoxFit.cover,
          ),
          LinkjoyFeynman.h6,
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.nickName, style: LinkjoyMarshaTriplet.body),
                LinkjoyFeynman.v6,
                Row(
                  children: [
                    LinkjoyFridgeLightbulb.linkjoySignalFridge(
                      item.level,
                      isAnchor: false,
                    ),
                    LinkjoyFeynman.h4,
                    item.isVip()
                        ? LinkjoyFridgeLightbulb.linkjoyPhillipsCrumble()
                        : const SizedBox(),
                  ],
                ),
              ],
            ),
          ),
          LinkjoyFastenDance.small(
            gift.icon,
            width: LinkjoyGarage.s32,
            height: LinkjoyGarage.s32,
          ),
          Text("×${item.count}", style: LinkjoyMarshaTriplet.body),
        ],
      ),
    );
  }

  Positioned _linkjoyFlashySicknessSilly(VoGift item, bool isTOP1, int num) {
    return Positioned(
      bottom: 0,
      height: 80.w,
      left: 0,
      right: 0,
      child: Container(
        width: Get.width,
        height: 80.w,
        decoration: LinkjoyFridgeLightbulb.buildGradientDecoration(
          [
            LinkjoyAve.dialogBg.withAlpha(0),
            LinkjoyAve.dialogBg,
            LinkjoyAve.dialogBg,
          ],
          stops: const [0, 0.5, 1.0],
        ),
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: LinkjoyGarage.s24,
            vertical: 12.w,
          ),
          decoration: LinkjoyAve.surfaceImportantDecoration,
          alignment: Alignment.center,
          child: Row(
            children: [
              LinkjoyFeynman.h8,
              LinkjoyFastenDance.circle(
                LINKJOY.user().avatarUrl,
                size: 40,
                fit: BoxFit.cover,
              ),
              LinkjoyFeynman.h6,
              Expanded(
                child: Text(
                  isTOP1
                      ? "linkjoy_caring_against_direct".tr
                      : "linkjoy_caring_investor_grey".tr.replaceFirst(
                          "%d",
                          num.toString(),
                        ),
                  style: LinkjoyMarshaHater.w_body2_M,
                ),
              ),
              LinkjoyEllen.circleText(
                "linkjoy_caring_eleven".tr,
                () => logic.onLinkjoyElevenToInvestorBroadway(item, num),
              ),
              LinkjoyFeynman.h12,
            ],
          ),
        ).clickOld(() => logic.onLinkjoyElevenToInvestorBroadway(item, num)),
      ),
    );
  }

  Widget buildBottom(BuildContext context) {
    double bottomPadding = MediaQuery.paddingOf(context).bottom;
    if (logic.notMyself) {
      return Stack(
        children: [
          Positioned(
            height: 80.w + bottomPadding,
            width: Get.width,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(bottom: bottomPadding),
              alignment: Alignment.bottomCenter,
              decoration: const BoxDecoration(
                gradient: LinkjoyFridgeLightbulb.linkjoySaltwaterSillyBg,
              ),
              child: linkjoyBrochureForget(
                id: LinkjoyAndrewHand.linkjoy_deposit,
                builder: (logic) {
                  return Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      LinkjoyFeynman.h12,

                      Expanded(child: _linkjoyJeffriesAncestorDwarf()),

                      LinkjoyFeynman.h12,
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      );
    } else {
      return const SizedBox.shrink();
    }
  }

  Widget _linkjoyJeffriesAncestorDwarf() {
    List<Widget> chatBtnRow = [];
    LinkjoyBookshelf size = LinkjoyBookshelf.xl;
    chatBtnRow.add(
      LinkjoyFridgeLightbulb.linkjoyAncestor(size: size.size() * 0.5),
    );
    if (!logic.showCallBtn()) {
      chatBtnRow.add(LinkjoyFeynman.h8);
      chatBtnRow.add(
        Text(
          'linkjoy_caring_fetus_satellite'.tr,
          style: LinkjoyMarshaTriplet.body.copyWith(color: Colors.white),
        ),
      );
    }
    Widget content = Row(mainAxisSize: MainAxisSize.min, children: chatBtnRow);
    return LinkjoyUiYum.linkjoyOughtaSatelliteAssume(
      LinkjoyUnborn.mini(
        logic.uid,
        logic.linkjoyChargeLenny(),
        logic.linkjoyVentBicycle(),
      ),
      size: size,
      radius: LinkjoyDiscard.radiusMedium,
      fixedWidth: Get.width,
      child: content,
      showFreeCards: true,
    );
  }

  Widget buildCardNumberWidget(String icon, int number) {
    return LinkjoyFridgeLightbulb.linkjoyPhlegmDecideFridge(
      icon,
      LinkjoyGarage.s24,
      Colors.white,
      "${"linkjoy_caring_phlegm".tr} $number",
      LinkjoyMarshaHater.caption2_M,
    );
  }

  GetBuilder<LinkjoyAndrewHand> linkjoyBrochureForget({
    Object? id,
    required GetControllerBuilder<LinkjoyAndrewHand> builder,
  }) {
    return GetBuilder<LinkjoyAndrewHand>(id: id, tag: tag, builder: builder);
  }
}
