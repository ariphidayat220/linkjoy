import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_andrew.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_figure_mandatory_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoyFigureMandatoryDivision
    extends LinkjoyDivisionAgency<LinkjoyFigureMandatoryHand> {
  const LinkjoyFigureMandatoryDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYamWheatonFridge(
      TabBar(
        controller: logic.tabController,
        tabs: logic.tabs.map((String name) => Tab(text: name.tr)).toList(),
        labelStyle: LinkjoyMarshaTriplet.subtitle,
        indicator: const BoxDecoration(color: Colors.transparent),
        tabAlignment: TabAlignment.center,
      ),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return GetBuilder<LinkjoyFigureMandatoryHand>(
      id: LinkjoyFigureMandatoryHand.linkjoy_division,
      builder: (logic) {
        if (!logic.hasInit) {
          return const SizedBox.shrink();
        }

        return TabBarView(
          controller: logic.tabController,
          children: logic.tabs.map((tab) => createPage(tab)).toList(),
        );
      },
    );
  }

  Widget createPage(String name) {
    return CustomScrollView(
      key: PageStorageKey<String>(name),
      slivers: <Widget>[SliverToBoxAdapter(child: findPageByName(name))],
    );
  }

  Widget findPageByName(String name) {
    switch (name) {
      case 'linkjoy_caring_mandatory':
        return GetBuilder<LinkjoyFigureMandatoryHand>(
          id: LinkjoyFigureMandatoryHand.linkjoy_mandatory,
          builder: (logic) {
            return _linkjoyMandatoryStubbornNarrate(false);
          },
        );
      case 'linkjoy_caring_sexual_mandatory':
        return GetBuilder<LinkjoyFigureMandatoryHand>(
          id: LinkjoyFigureMandatoryHand.linkjoy_sexual_mandatory,
          builder: (logic) {
            return _linkjoyMandatoryStubbornNarrate(true);
          },
        );
      default:
        return const SizedBox.shrink();
    }
  }

  Widget _linkjoyMandatoryStubbornNarrate(bool privacy) {
    List<MediaVo> list = privacy ? logic.privateAlbumList : logic.albumList;
    int max = privacy ? logic.privateAlbumMax : logic.albumMax;
    bool showAdd = list.length < max;
    double aspectRatio = 106 / 140;
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.s16,
        vertical: LinkjoyGarage.s12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          if (privacy && LINKJOY.isLinkjoyFoolishly)
            LinkjoyFridgeLightbulb.linkjoyGrape(
              msg: "linkjoy_caring_my_andrew_fruit_loan_figure_grape".tr,
              warning: false,
              marginBottom: LinkjoyGarage.s16,
            ),

          if (!privacy && LINKJOY.isLinkjoyFoolishly && !logic.hasAlbumValid())
            LinkjoyFridgeLightbulb.linkjoyGrape(
              msg: ("linkjoy_caring_my_andrew_loan_figure_grape".tr).replaceAll(
                "%s",
                "${logic.albumMin}",
              ),
              warning: true,
              marginBottom: LinkjoyGarage.s16,
            ),

          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: LinkjoyGarage.s12,
              mainAxisSpacing: LinkjoyGarage.s12,
              childAspectRatio: aspectRatio,
            ),
            itemCount: showAdd ? list.length + 1 : list.length,
            itemBuilder: (BuildContext context, int index) {
              double width =
                  (Get.width - LinkjoyGarage.s12 * 2 + LinkjoyGarage.s16) / 3;
              double height = width / aspectRatio;
              if (showAdd) {
                if (index == 0) {
                  return _linkjoyMandatorySubjectiveNetflixNarrate(privacy);
                } else {
                  return _linkjoyMandatorySubjectiveNarrate(
                    privacy,
                    width,
                    height,
                    list[index - 1],
                  );
                }
              } else {
                return _linkjoyMandatorySubjectiveNarrate(
                  privacy,
                  width,
                  height,
                  list[index],
                );
              }
            },
          ),
        ],
      ),
    );
  }

  Widget _linkjoyMandatorySubjectiveNetflixNarrate(bool privacy) {
    return Container(
      decoration: LinkjoyAve.surfaceImportantDecoration,
      alignment: Alignment.center,
      child: Icon(
        Icons.add,
        color: LinkjoyAve.textPrimary,
        size: LinkjoyDiscard.iconLarge,
      ),
    ).click(() => logic.onLinkjoyMandatoryNetflix(privacy));
  }

  Widget _linkjoyMandatorySubjectiveNarrate(
    bool privacy,
    double width,
    double height,
    MediaVo vo,
  ) {
    return Stack(
      alignment: Alignment.center,
      children: [
        LinkjoyFasten.middle(
          vo is PhotoVO ? vo.img_url! : (vo as VideoVO).cover_url!,
          width: width,
          height: height,
          fit: BoxFit.cover,
          borderRadius: BorderRadius.circular(LinkjoyGarage.s12),
        ),
        Positioned(
          top: LinkjoyGarage.s4,
          right: LinkjoyGarage.s4,
          child: LinkjoyFridgeLightbulb.linkjoyAssumeBaywatch(
            () {
              LinkjoyUISocially.linkjoyWarlordSlur(
                () => logic.onLinkjoyMandatoryDrunk(privacy, vo.id),
                title: "linkjoy_caring_foolishly_im_duel_slur_divorce".tr,
                confirmText: "linkjoy_caring_slur".tr,
              );
            },
            size: LinkjoyBookshelf.xs,
            iconColor: Colors.white,
            bgColor: Colors.black45,
          ),
        ),

        _linkjoyMandatorySubjectiveNarrateHair(vo.status),
      ],
    ).click(() => logic.onLinkjoyDuelStimulus(vo, privacy));
  }

  Widget _linkjoyMandatorySubjectiveNarrateHair(int status) {
    if (!LINKJOY.isLinkjoyFoolishly) {
      return const SizedBox.shrink();
    }

    if (status == 1) {
      return const SizedBox.shrink();
    }
    return Positioned(
      bottom: LinkjoyGarage.s8,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: LinkjoyGarage.s8,
          vertical: LinkjoyGarage.s4,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(LinkjoyGarage.s8),
          color: status == 0 ? Colors.black38 : Colors.redAccent.shade700,
        ),
        child: Text(
          status == 0
              ? "linkjoy_caring_mandatory_length_trademark".tr
              : "linkjoy_caring_mandatory_length_smoker".tr,
          style: LinkjoyMarshaTriplet.caption,
        ),
      ),
    );
  }
}
