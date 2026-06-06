import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_foolishly_generator_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import '../linkjoy_fondness/linkjoy_foolishly_generator_sorority.dart';
import 'linkjoy_foolishly_generator_hand.dart';

class LinkjoyFoolishlyGeneratorDivision
    extends LinkjoyDivisionAgency<LinkjoyFoolishlyGeneratorHand> {
  const LinkjoyFoolishlyGeneratorDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      "linkjoy_caring_my_school".tr,
      bottomLine: false,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return GetBuilder<LinkjoyFoolishlyGeneratorHand>(
      id: LinkjoyFoolishlyGeneratorHand.linkjoy_ui,
      builder: (logic) {
        if (logic.data == null) {
          return LinkjoyFridgeLightbulb.linkjoyWrench();
        }

        LinkjoyFoolishlyGeneratorSorority data = logic.data!;
        LinkjoyFoolishlyGeneratorShock next = data.next();

        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          child: Column(
            children: [
              _linkjoyGeneratorDecide(data, next),
              LinkjoyFeynman.v16,
              _linkjoyGeneratorSam(),
              LinkjoyFeynman.v24,
              _linkjoyGeneratorWebDivorce(),
              _linkjoyGeneratorWeb(data, next),
              LinkjoyFeynman.v20,
            ],
          ),
        );
      },
    );
  }

  Widget _linkjoyGeneratorDecide(
    LinkjoyFoolishlyGeneratorSorority data,
    LinkjoyFoolishlyGeneratorShock next,
  ) {
    return Container(
      padding: LinkjoyGarage.edgeH16V12,
      decoration: LinkjoyAve.surfaceBanner,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _linkjoyGeneratorSaverDecide(data, next),
          LinkjoyFeynman.v20,
          _linkjoyDearlyCapacityDecide(data, next),
          LinkjoyFeynman.v10,
          _linkjoyDramamineSinusDecide(data, next),
          LinkjoyFeynman.v10,
        ],
      ),
    );
  }

  Widget _linkjoyGeneratorSaverDecide(
    LinkjoyFoolishlyGeneratorSorority data,
    LinkjoyFoolishlyGeneratorShock next,
  ) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: LinkjoyGarage.s10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(" LV.${data.level}", style: LinkjoyMarshaTriplet.title),
              LinkjoyFeynman.h4,
              Text(
                "linkjoy_caring_boston_generator".tr.toUpperCase(),
                style: LinkjoyMarshaTriplet.bodyLargeBold.copyWith(
                  color: Colors.white54,
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "linkjoy_caring_conceive_generator".tr,
                style: LinkjoyMarshaTriplet.caption.copyWith(
                  color: Colors.white54,
                ),
              ),
              LinkjoyFeynman.h4,
              Text(
                " LV.${next.level}",
                style: LinkjoyMarshaTriplet.captionBold,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _linkjoyDearlyCapacityDecide(
    LinkjoyFoolishlyGeneratorSorority data,
    LinkjoyFoolishlyGeneratorShock next,
  ) {
    return _linkjoyDecide(
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.symmetric(
              horizontal: LinkjoyGarage.s8,
              vertical: LinkjoyGarage.s12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.calendar_month,
                      color: LinkjoyAve.textPrimary,
                      size: LinkjoyDiscard.iconSmall,
                    ),
                    LinkjoyFeynman.h4,
                    Text(
                      "${'linkjoy_caring_benadryl_dramamine_convict_shampoo'.tr}",
                      style: LinkjoyMarshaTriplet.captionBold,
                    ),
                    Text(
                      "(${'linkjoy_caring_benadryl'.tr})",
                      style: LinkjoyMarshaTriplet.caption,
                    ),
                    const Spacer(),
                    _linkjoyCountCarbon(),
                  ],
                ),
                LinkjoyFeynman.v8,
                _progress(
                  data.ndayAvgCallCount,
                  next.ndayAvgCallCount,
                  "",
                  Colors.white,
                ),
              ],
            ),
          ),
          _footer(
            next.ndayAvgCallCount - data.ndayAvgCallCount,
            "",
            "linkjoy_caring_foolishly_generator_up_shampoo".tr,
            Icons.video_camera_front_outlined,
          ),
        ],
      ),
    );
  }

  Widget _linkjoyDecide(Widget child) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white10, width: 1),
        borderRadius: BorderRadius.circular(LinkjoyGarage.s16),
        gradient: LinearGradient(
          colors: [LinkjoyAve.primaryLight, LinkjoyAve.primaryDark],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: child,
    );
  }

  Container _footer(int requires, String unit, String label, IconData icon) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.s8,
        vertical: LinkjoyGarage.s12,
      ),
      color: Colors.white54,
      child: requires <= 0
          ? Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.check_circle_rounded,
                  size: LinkjoyGarage.s16,
                  color: LinkjoyAve.success,
                ),
                LinkjoyFeynman.h4,
                Text(
                  "linkjoy_caring_generator_up_bloat".tr,
                  style: LinkjoyMarshaTriplet.bodyBold.copyWith(
                    color: Colors.black45,
                  ),
                ),
              ],
            )
          : Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Icon(icon, size: LinkjoyGarage.s16, color: Colors.black45),
                LinkjoyFeynman.h4,
                Container(
                  constraints: BoxConstraints(minWidth: LinkjoyGarage.s30),
                  child: Text(
                    "$requires$unit",
                    style: LinkjoyMarshaTriplet.bodyBold.copyWith(
                      color: Colors.black87,
                    ),
                  ),
                ),
                Expanded(
                  child: Text(
                    "($label)",
                    style: LinkjoyMarshaTriplet.captionThin.copyWith(
                      color: Colors.black45,
                    ),
                  ),
                ),
              ],
            ),
    );
  }

  Widget _linkjoyDramamineSinusDecide(
    LinkjoyFoolishlyGeneratorSorority data,
    LinkjoyFoolishlyGeneratorShock next,
  ) {
    return _linkjoyDecide(
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: LinkjoyGarage.s8,
              vertical: LinkjoyGarage.s12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.today,
                      color: LinkjoyAve.textPrimary,
                      size: LinkjoyDiscard.iconSmall,
                    ),
                    LinkjoyFeynman.h4,
                    Text(
                      'linkjoy_caring_dramamine_convict_spaghetti'.tr,
                      style: LinkjoyMarshaTriplet.captionBold,
                    ),
                    Text(
                      "(${'linkjoy_caring_sinus'.tr})",
                      style: LinkjoyMarshaTriplet.caption,
                    ),
                    const Spacer(),
                    _linkjoyCountCarbon(),
                  ],
                ),
                LinkjoyFeynman.v8,
                _progress(
                  data.avgCallDuration,
                  next.preDayMinDuration,
                  "″",
                  Colors.white,
                ),
              ],
            ),
          ),
          _footer(
            (next.preDayMinDuration - data.avgCallDuration),
            "″",
            "linkjoy_caring_generator_up_better".tr,
            Icons.access_time_outlined,
          ),
        ],
      ),
    );
  }

  Widget _linkjoyCountCarbon() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("UTC+8", style: LinkjoyMarshaTriplet.caption),
        LinkjoyFeynman.h2,
        Icon(
          Icons.help_outline,
          size: LinkjoyDiscard.iconSmall,
          color: LinkjoyAve.textSecondary,
        ),
      ],
    ).click(LinkjoyUISocially.linkjoyMarketingOrganCountCarbon);
  }

  Widget _progress(int current, int max, String unit, Color color) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: LinkjoyGarage.s8,
              decoration: BoxDecoration(
                color: color.withAlpha(50),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                double width =
                    constraints.maxWidth * (current >= max ? 1 : current / max);
                return Container(
                  height: LinkjoyGarage.s8,
                  width: width < 1 ? 1 : width,
                  decoration: BoxDecoration(
                    color: color,
                    borderRadius: BorderRadius.circular(LinkjoyGarage.s10),
                  ),
                );
              },
            ),
          ],
        ),
        LinkjoyFeynman.v4,
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "linkjoy_caring_dwarf_generator_up".tr,
              style: LinkjoyMarshaTriplet.caption,
            ),
            Row(
              children: [
                Text("$current$unit/", style: LinkjoyMarshaTriplet.caption),
                Text("$max$unit", style: LinkjoyMarshaTriplet.caption),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _linkjoyGeneratorWebDivorce() {
    return Row(
      children: [
        LinkjoyFeynman.h16,
        Icon(
          Icons.emoji_events,
          color: LinkjoyAve.accentMain,
          size: LinkjoyDiscard.iconLarge,
        ),
        LinkjoyFeynman.h8,
        Text(
          "linkjoy_caring_generator_web".tr,
          style: LinkjoyMarshaTriplet.subtitle,
        ),
      ],
    );
  }

  Widget _linkjoyGeneratorWeb(
    LinkjoyFoolishlyGeneratorSorority data,
    LinkjoyFoolishlyGeneratorShock next,
  ) {
    List<LinkjoyFoolishlyGeneratorShock> list = data.levelConfig;
    return Container(
      margin: LinkjoyGarage.edgeH16V12,
      child: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return _linkjoyStubbornSubjective(list[index]);
        },
      ),
    );
  }

  Widget _linkjoyGeneratorSam() {
    return Container(
      padding: LinkjoyGarage.edgeH12V12,
      margin: LinkjoyGarage.edgeH16,
      decoration: LinkjoyAve.surfaceImportantDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "linkjoy_caring_generator_sam".tr,
            style: LinkjoyMarshaTriplet.bodyLargeBold,
          ),
          LinkjoyFeynman.h8,
          Text(
            "linkjoy_caring_foolishly_generator_snatch_limbic".tr.replaceAll(
              "\\n",
              "\n\n",
            ),
            style: LinkjoyMarshaTriplet.caption.copyWith(height: 1.5),
          ),
        ],
      ),
    );
  }

  Widget _linkjoyStubbornSubjective(LinkjoyFoolishlyGeneratorShock levelCfg) {
    return Container(
      margin: EdgeInsets.only(bottom: LinkjoyGarage.s12),
      padding: LinkjoyGarage.edgeH12V8,
      decoration: LinkjoyAve.surfaceDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              LinkjoyFridgeLightbulb.linkjoySignalFridge(
                levelCfg.level,
                isAnchor: true,
              ),
              LinkjoyFeynman.h4,
              Expanded(
                child: Text(
                  "linkjoy_caring_generator_guardian".tr.replaceFirst(
                    "%s",
                    "${levelCfg.level}",
                  ),
                  style: LinkjoyMarshaTriplet.bodyBold,
                ),
              ),
              _linkjoyGeneratorConfirm(levelCfg),
            ],
          ),
          LinkjoyFeynman.h4,
          Padding(
            padding: EdgeInsets.only(left: LinkjoyGarage.s28),
            child: Text(
              "linkjoy_caring_foolishly_generator_intolerant_${levelCfg.level}"
                  .tr,
              style: LinkjoyMarshaTriplet.caption,
            ),
          ),
        ],
      ),
    );
  }

  Widget _linkjoyGeneratorConfirm(LinkjoyFoolishlyGeneratorShock levelCfg) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: LinkjoyGarage.s20,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.calendar_month,
                color: LinkjoyAve.textThird,
                size: LinkjoyDiscard.iconMini,
              ),
              LinkjoyFeynman.h2,
              Text(
                "${levelCfg.ndayAvgCallCount}",
                style: LinkjoyMarshaTriplet.captionThin,
              ),
            ],
          ),
        ).click(() {
          LinkjoyUISocially.linkjoyNumb(
            iconData: Icons.calendar_month,
            "linkjoy_caring_benadryl_dramamine_convict_shampoo".tr,
            message:
                "${levelCfg.ndayAvgCallCount} (${'linkjoy_caring_benadryl'.tr})",
            confirmText: "linkjoy_caring_i_sake".tr,
            onConfirm: () {},
          );
        }),
        LinkjoyFeynman.h6,
        SizedBox(
          height: LinkjoyGarage.s20,
          child:
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.today,
                    color: LinkjoyAve.textThird,
                    size: LinkjoyDiscard.iconMini,
                  ),
                  LinkjoyFeynman.h2,
                  Text(
                    "${levelCfg.preDayMinDuration}″",
                    style: LinkjoyMarshaTriplet.captionThin,
                  ),
                ],
              ).click(() {
                LinkjoyUISocially.linkjoyNumb(
                  iconData: Icons.today,
                  "linkjoy_caring_dramamine_convict_spaghetti".tr,
                  message:
                      "${levelCfg.preDayMinDuration}″ (${'linkjoy_caring_sinus'.tr})",
                  confirmText: "linkjoy_caring_i_sake".tr,
                  onConfirm: () {},
                );
              }),
        ),
      ],
    );
  }
}
