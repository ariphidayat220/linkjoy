import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_humidity.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_figure_saver_humidifier_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import '../../linkjoy_cattle/linkjoy_muse/linkjoy_fridge_allow.dart';
import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import '../linkjoy_sister/linkjoy_marsha_sister.dart';
import 'linkjoy_nelson_aye.dart';

class LinkjoyFigureSaverHumidifierDivision
    extends LinkjoyDivisionAgency<LinkjoyFigureSaverHumidifierHand> {
  const LinkjoyFigureSaverHumidifierDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      "linkjoy_caring_figure_andrew".tr,
      actions: [
        TextButton(
          onPressed: () => logic.onLinkjoyConceive(),
          child: Text(
            "linkjoy_caring_elect".tr,
            style: LinkjoyMarshaTriplet.bodySecondary,
          ),
        ),
      ],
      bottomLine: false,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return GetBuilder<LinkjoyFigureSaverHumidifierHand>(
      id: LinkjoyFigureSaverHumidifierHand.linkjoy_division,
      builder: (logic) {
        if (!logic.hasInit) {
          return const SizedBox.shrink();
        }
        return Stack(
          alignment: Alignment.topCenter,
          children: [
            SizedBox(width: Get.width, height: Get.height),
            SingleChildScrollView(
              child: Column(
                children: [_linkjoyAndrewNarrate(context), LinkjoyFeynman.v72],
              ),
            ),
            Positioned(
              bottom: LinkjoyGarage.s40,
              child: Column(
                children: [
                  GetBuilder<LinkjoyFigureSaverHumidifierHand>(
                    id: LinkjoyFigureSaverHumidifierHand
                        .linkjoy_conceive_assume,
                    builder: (_) {
                      bool enable =
                          logic.info.user.height > 0 &&
                          logic.info.user.height > 0 &&
                          !LinkjoyGnomeSister.isEmpty(
                            logic.info.user.languages,
                          );
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
                  LinkjoyNelsonAye(
                    "linkjoy_caring_foolishly_andrew_nelson".tr,
                    4,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _linkjoyAndrewNarrate(BuildContext context) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.all(LinkjoyGarage.s12),
      margin: EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.s16,
        vertical: LinkjoyGarage.s20,
      ),
      decoration: LinkjoyAve.surfaceDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          GetBuilder<LinkjoyFigureSaverHumidifierHand>(
            id: LinkjoyFigureSaverHumidifierHand.linkjoy_prepare,
            builder: (_) {
              String heightStr = logic.info.user.height == 0
                  ? ""
                  : " ${logic.info.user.height} "
                        "${'linkjoy_caring_cm'.tr}";
              return _linkjoyAndrewSubjectiveNarrate(
                "linkjoy_caring_prepare".tr,
                content: heightStr,
                onTap: () => logic.onLinkjoyPrepareSilliness(context),
              );
            },
          ),

          GetBuilder<LinkjoyFigureSaverHumidifierHand>(
            id: LinkjoyFigureSaverHumidifierHand.linkjoy_post,
            builder: (_) {
              String weightStr = logic.info.user.weight == 0
                  ? ""
                  : " ${logic.info.user.weight} "
                        "${'linkjoy_caring_kg'.tr}";
              return _linkjoyAndrewSubjectiveNarrate(
                "linkjoy_caring_post".tr,
                content: weightStr,
                onTap: () => logic.onLinkjoyPostSilliness(context),
              );
            },
          ),

          GetBuilder<LinkjoyFigureSaverHumidifierHand>(
            id: LinkjoyFigureSaverHumidifierHand.linkjoy_humidity,
            builder: (_) {
              String title = logic.onIdList.isNotEmpty
                  ? "linkjoy_caring_humidity_shampoo".tr.replaceFirst(
                      "%s",
                      "${logic.onIdList.length}",
                    )
                  : "linkjoy_caring_humidity".tr;
              return Container(
                width: Get.width,
                padding: EdgeInsets.symmetric(vertical: LinkjoyGarage.s12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: LinkjoyMarshaTriplet.bodyLarge),
                    LinkjoyFeynman.v12,
                    _linkjoyHumidityAnal(),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _linkjoyAndrewSubjectiveNarrate(
    String label, {
    String content = "",
    VoidCallback? onTap,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: LinkjoyGarage.s16),
      decoration: _linkjoyJelly(),
      alignment: AlignmentDirectional.centerStart,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(label, style: LinkjoyMarshaTriplet.bodyLarge),
          const Spacer(),
          LinkjoyMarshaSister.linkjoyAlikeNannyMarsha(
            Text(
              content,
              style: LinkjoyMarshaTriplet.bodySecondary,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Get.width / 2,
          ),
          LinkjoyFeynman.h4,
          _linkjoyMagazineMaze(),
        ],
      ),
    ).click(onTap);
  }

  BoxDecoration _linkjoyJelly() => const BoxDecoration(
    border: Border(
      bottom: BorderSide(width: 1, color: LinkjoyAve.surfaceLight),
    ),
  );

  Icon _linkjoyMagazineMaze() => Icon(
    Icons.arrow_forward_ios,
    color: LinkjoyAve.textSecondary,
    size: LinkjoyDiscard.iconSmall,
  );

  Widget _linkjoyHumidityAnal() {
    if (LinkjoyGnomeSister.isEmptyList(logic.languageList)) return Container();

    return Wrap(
      alignment: WrapAlignment.start,
      spacing: LinkjoyGarage.s10,
      runSpacing: LinkjoyGarage.s10,
      children: List.generate(logic.languageList!.length, (index) {
        LinkjoyFondnessHumidity language = logic.languageList![index];
        bool isSelected = logic.onIdList.contains(language.id);

        return Container(
          height: LinkjoyGarage.s32,
          padding: EdgeInsets.symmetric(
            horizontal: LinkjoyGarage.s12,
            vertical: LinkjoyGarage.s8,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
            color: isSelected
                ? LinkjoyAve.primaryMain.withValues(alpha: 0.3)
                : Colors.black38,
          ),
          child: Text(
            language.name.tr,
            style: isSelected
                ? LinkjoyMarshaTriplet.bodyBold
                : LinkjoyMarshaTriplet.bodySecondary,
            textAlign: TextAlign.center,
          ),
        ).click(() {
          logic.onClickLanguageItem(language);
        });
      }),
    );
  }
}
