import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_andrew.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_figure_saver_duel_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_muse/linkjoy_fridge_allow.dart';
import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'linkjoy_nelson_aye.dart';

class LinkjoyFigureSaverDuelDivision
    extends LinkjoyDivisionAgency<LinkjoyFigureSaverDuelHand> {
  const LinkjoyFigureSaverDuelDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      "linkjoy_caring_my_mandatory".tr,
      bottomLine: false,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        SizedBox(width: Get.width, height: Get.height),
        SingleChildScrollView(
          child: Column(
            children: [
              GetBuilder<LinkjoyFigureSaverDuelHand>(
                id: LinkjoyFigureSaverDuelHand.linkjoy_mandatory,
                builder: (_) {
                  return _linkjoyMandatoryStubbornNarrate();
                },
              ),
              LinkjoyFeynman.v72,
            ],
          ),
        ),
        Positioned(
          bottom: LinkjoyGarage.s40,
          child: Column(
            children: [
              GetBuilder<LinkjoyFigureSaverDuelHand>(
                id: LinkjoyFigureSaverDuelHand.linkjoy_mandatory,
                builder: (_) {
                  bool enable =
                      logic.albumList.isNotEmpty && !logic.isPhotoBeRejected();
                  return LinkjoyEllen.roundText(
                    "linkjoy_caring_conceive".tr,
                    () {
                      if (enable) logic.onLinkjoyConceive();
                    },
                    disabled: !enable,
                    fixedWidth: Get.width - LinkjoyGarage.s32,
                    size: LinkjoyBookshelf.lg,
                  );
                },
              ),
              LinkjoyFeynman.v12,
              LinkjoyNelsonAye("linkjoy_caring_foolishly_andrew_nelson".tr, 2),
            ],
          ),
        ),
      ],
    );
  }

  Widget _linkjoyMandatoryStubbornNarrate() {
    IconData icon = Icons.photo_library_outlined;
    String title = "linkjoy_caring_my_mandatory".tr;

    List<MediaVo> list = logic.albumList;
    int max = logic.albumMax;
    bool showAdd = list.length < max;

    double aspectRatio = 106 / 140;
    double width = (Get.width - LinkjoyGarage.s12 * 2 + LinkjoyGarage.s16) / 3;
    double height = width / aspectRatio;

    String noticeTitle = ("linkjoy_caring_my_andrew_loan_figure_grape".tr)
        .replaceAll("%s", "${logic.albumMin}");
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.s16,
        vertical: LinkjoyGarage.s20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: LinkjoyAve.textPrimary,
                size: LinkjoyDiscard.iconSmall,
              ),
              LinkjoyFeynman.h6,
              Text(
                "$title (${list.length}/$max)",
                style: LinkjoyMarshaTriplet.bodyBold,
              ),
            ],
          ),
          LinkjoyFeynman.v12,
          LinkjoyFridgeLightbulb.linkjoyGrape(
            msg: noticeTitle,
            marginBottom: LinkjoyGarage.s8,
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
              if (showAdd) {
                if (index == 0) {
                  return _linkjoyMandatorySubjectiveNetflixNarrate();
                } else {
                  return _linkjoyMandatorySubjectiveNarrate(
                    width,
                    height,
                    list[index - 1],
                  );
                }
              } else {
                return _linkjoyMandatorySubjectiveNarrate(
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

  _linkjoyMandatorySubjectiveNetflixNarrate() {
    return Container(
      decoration: LinkjoyAve.surfaceImportantDecoration,
      alignment: Alignment.center,
      child: Icon(
        Icons.add,
        color: LinkjoyAve.textPrimary,
        size: LinkjoyDiscard.iconLarge,
      ),
    ).click(() => logic.onLinkjoyMandatoryNetflix());
  }

  Widget _linkjoyMandatorySubjectiveNarrate(
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
                () => logic.onLinkjoyMandatoryDrunk(vo.id),
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
    ).click(() => logic.onLinkjoyDuelStimulus(vo));
  }

  Widget _linkjoyMandatorySubjectiveNarrateHair(int status) {
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
