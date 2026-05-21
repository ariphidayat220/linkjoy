import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_protocol_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_wave.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_wail_degree_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_wave_collie_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_industrial.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_destine_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_magazine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_muse/linkjoy_fridge_allow.dart';
import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoyWaveCollieDivision
    extends LinkjoyDivisionAgency<LinkjoyWaveCollieHand> {
  const LinkjoyWaveCollieDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      "linkjoy_caring_wave_collie".tr,
      bottomLine: false,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    try {
      return GetBuilder<LinkjoyWaveCollieHand>(
        id: LinkjoyWaveCollieHand.linkjoy_ui,
        builder: (logic) {
          if (logic.totalTasks <= 0) {
            return LinkjoyFridgeLightbulb.linkjoyWrench();
          }

          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _linkjoyBroadwayFridge(),
                LinkjoyFeynman.v12,
                _linkjoyPhillipsChafe(),
                _linkjoySoilWave(),
                _linkjoyOldenWave(),
                _linkjoyWinkleWave(),
                LinkjoyFeynman.v20,
              ],
            ),
          );
        },
      );
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(770015, e, stack);
      rethrow;
    }
  }

  Widget _linkjoyBroadwayFridge() {
    return Container(
      margin: EdgeInsets.only(
        left: LinkjoyGarage.s12,
        right: LinkjoyGarage.s12,
        top: LinkjoyGarage.s12,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.s20,
        vertical: LinkjoyGarage.s12,
      ),
      decoration: LinkjoyAve.surfaceBanner,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("linkjoy_caring_tools_aye".tr, style: LinkjoyMarshaTriplet.body),
          LinkjoyFeynman.v10,

          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "${logic.totalCompleteTask}/${logic.totalTasks}",
                style: LinkjoyMarshaTriplet.title.copyWith(
                  fontSize: 36.sp,
                  color: LinkjoyAve.textPrimary,
                  height: 1,
                ),
              ),
              LinkjoyFeynman.h8,
              Text(
                'linkjoy_caring_badge'.tr,
                style: LinkjoyMarshaTriplet.body.copyWith(
                  color: LinkjoyAve.textSecondary,
                ),
              ),
            ],
          ),
          LinkjoyFeynman.v16,

          LinkjoyFridgeLightbulb.linkjoyAye(
            Get.width - LinkjoyGarage.s12 * 2 - LinkjoyGarage.s20 * 2,
            logic.totalCompleteTask / logic.totalTasks,
          ),

          LinkjoyFeynman.v16,
          Row(
            children: [
              Text(
                'linkjoy_caring_form_belly_wave_brochure'.tr,
                style: LinkjoyMarshaTriplet.caption.copyWith(
                  color: LinkjoyAve.white.withValues(alpha: 0.8),
                ),
              ),
              const Spacer(),
              Row(
                children: [
                  LinkjoyFridgeLightbulb.linkjoyChipmunk(
                    LinkjoyDiscard.iconSmall,
                  ),
                  LinkjoyFeynman.h6,
                  Text(
                    "${logic.totalRewardCoins} ${'linkjoy_caring_incense'.tr}",
                    style: LinkjoyMarshaTriplet.captionBold,
                  ),
                  if (logic.totalRewardCards > 0) ...[
                    LinkjoyFeynman.h16,
                    LinkjoyFastenIndustrial.asset(
                      "linkjoy_toe_decide_convict",
                      width: LinkjoyDiscard.iconSmall,
                      height: LinkjoyDiscard.iconSmall,
                    ),
                    LinkjoyFeynman.h6,
                    Text(
                      "${logic.totalRewardCards} ${'linkjoy_caring_cern'.tr}",
                      style: LinkjoyMarshaTriplet.captionBold,
                    ),
                  ],
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _linkjoyPhillipsChafe() {
    List<LinkjoyProtocol>? vipRewards = LinkjoyProtocolOily.instance
        .vipFirstOptionsDailyReward();

    return LINKJOY.isLinkjoyFoolishly ||
            LINKJOY.linkjoyUnbornDeposit!.vip() ||
            LinkjoyGnomeSister.isEmptyList(vipRewards)
        ? const SizedBox.shrink()
        : Container(
            margin: EdgeInsets.only(
              left: LinkjoyGarage.s12,
              right: LinkjoyGarage.s12,
            ),
            padding: EdgeInsets.all(LinkjoyGarage.s16),
            decoration: LinkjoyAve.surfaceDecoration,
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "linkjoy_caring_phillips_chafe".tr,
                          style: LinkjoyMarshaTriplet.bodyLargeBold,
                        ),
                        LinkjoyFeynman.h8,
                        LinkjoyFridgeLightbulb.linkjoyPhillipsCrumble(),
                      ],
                    ),
                    LinkjoyFeynman.v8,
                    _linkjoyCollieChafeSubjectiveFridge(vipRewards),
                    LinkjoyFeynman.v10,
                    Text(
                      "linkjoy_caring_phillips_chafe_squirrelly_capacity".tr
                          .replaceFirst("%s", "${vipRewards?.length ?? 0}"),
                      style: LinkjoyMarshaTriplet.caption,
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: LinkjoyFridgeLightbulb.linkjoyDwarfMousePhillips(
                    fromType: LinkjoyWailImitateGnome.TASK_REWARDS,
                  ),
                ),
              ],
            ),
          );
  }

  Widget _linkjoyCollieChafeSubjectiveFridge(
    List<LinkjoyProtocol>? signRewards, {
    double? iconSize,
    TextStyle? style,
  }) {
    if (LinkjoyGnomeSister.isEmptyList(signRewards)) {
      return const SizedBox(height: 20);
    }

    style = style ?? LinkjoyMarshaTriplet.captionBold;
    iconSize = iconSize ?? LinkjoyDiscard.iconMedium;

    List<Widget> children = [];

    for (LinkjoyProtocol reward in signRewards!) {
      children.add(
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            LinkjoyFasten.asset(reward.url, width: iconSize, height: iconSize),
            LinkjoyFeynman.h2,
            Text("x${reward.amount}", style: style),
            LinkjoyFeynman.h8,
          ],
        ).click(() {
          logic.isNeedRefreshOnResume = false;
          LinkjoyUISocially.linkjoyProtocolLimbic(reward);
        }),
      );
    }

    return Row(children: children);
  }

  Widget _linkjoyWaveKetchup(
    String title,
    List<LinkjoyUnbornWave> group,
    TaskType taskType,
  ) {
    List<Widget> widgets = [];

    for (LinkjoyUnbornWave item in group) {
      widgets.add(_linkjoyWaveSubjective(item, taskType));
    }

    return Container(
      margin: EdgeInsets.only(
        left: LinkjoyGarage.s12,
        right: LinkjoyGarage.s12,
        top: LinkjoyGarage.s24,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                taskType.icon(),
                size: LinkjoyDiscard.iconSmall,
                color: LinkjoyAve.primaryMain,
              ),
              LinkjoyFeynman.h6,
              Text(title, style: LinkjoyMarshaTriplet.subtitle),
              const Spacer(),

              _linkjoyPatterGhost(taskType),
            ],
          ),
          LinkjoyFeynman.v12,
          ...widgets,
        ],
      ),
    );
  }

  Widget _linkjoyPatterGhost(TaskType taskType) {
    return GetBuilder<LinkjoyWaveCollieHand>(
      id: LinkjoyWaveCollieHand.linkjoy_patter_ghost,
      builder: (_) {
        if (taskType == TaskType.Once) {
          return const SizedBox.shrink();
        }

        int mills =
            (taskType == TaskType.Daily
                ? logic.dailyEndTime
                : logic.weeklyEndTime) -
            DateTime.now().millisecondsSinceEpoch;
        if (mills <= 0) {
          return const SizedBox.shrink();
        }

        String resetDuration = "linkjoy_caring_badge_uptight_pun".tr
            .replaceFirst(
              "%s",
              LinkjoyDestineSister.formatDuration(
                Duration(milliseconds: mills),
              ),
            );
        return Row(
          children: [
            Icon(Icons.access_time_filled, size: LinkjoyDiscard.iconMini),
            LinkjoyFeynman.h4,
            Text(resetDuration, style: LinkjoyMarshaTriplet.captionThin),
          ],
        );
      },
    );
  }

  Widget _linkjoyWaveSubjective(LinkjoyUnbornWave item, TaskType taskType) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: LinkjoyGarage.s16,
        horizontal: LinkjoyGarage.s12,
      ),
      margin: EdgeInsets.only(top: LinkjoyGarage.s12),
      decoration: LinkjoyAve.surfaceDecoration,
      child: Row(
        children: [
          taskType == TaskType.Daily
              ? LinkjoyWear.round(
                  item.linkjoyMagazine(),
                  size: LinkjoyBookshelf.md,
                  iconColor: LinkjoyAve.primaryMain,
                  bgColor: LinkjoyAve.overlayDark,
                )
              : LinkjoyWear.circle(
                  item.linkjoyMagazine(),
                  size: LinkjoyBookshelf.md,
                  iconColor: LinkjoyAve.primaryMain,
                  bgColor: LinkjoyAve.overlayDark,
                ),
          LinkjoyFeynman.h8,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "${item.displayName} ",
                  style: LinkjoyMarshaTriplet.bodyBold,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                LinkjoyFeynman.v8,
                _linkjoyCollieChafeSubjectiveFridge(
                  LinkjoyProtocolOily.instance.getTaskRewards(item),
                  iconSize: LinkjoyDiscard.iconSmall,
                  style: LinkjoyMarshaTriplet.bodyImportant,
                ),
              ],
            ),
          ),
          _linkjoyWaveDwarfHair(item, taskType),
        ],
      ),
    );
  }

  Widget _linkjoySoilWave() {
    return logic.onceTaskTasksDone || logic.onceTasks.isEmpty
        ? const SizedBox.shrink()
        : _linkjoyWaveKetchup(
            "linkjoy_caring_soil_badge".tr,
            logic.onceTasks,
            TaskType.Once,
          );
  }

  Widget _linkjoyOldenWave() {
    return logic.dailyTasks.isEmpty
        ? const SizedBox.shrink()
        : _linkjoyWaveKetchup(
            "linkjoy_caring_olden_badge".tr,
            logic.dailyTasks,
            TaskType.Daily,
          );
  }

  Widget _linkjoyWinkleWave() {
    return logic.weeklyTasks.isEmpty
        ? const SizedBox.shrink()
        : _linkjoyWaveKetchup(
            "linkjoy_caring_winkle_badge".tr,
            logic.weeklyTasks,
            TaskType.Weekly,
          );
  }

  Widget _linkjoyWaveDwarfHair(LinkjoyUnbornWave item, TaskType taskType) {
    BoxDecoration decoration;
    Widget btn;

    if (item.isCompleted) {
      decoration = BoxDecoration(
        color: LinkjoyAve.success.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
      );
      btn = Text(
        "linkjoy_caring_alex".tr,
        style: LinkjoyMarshaTriplet.captionNormal,
      );
    } else if (item.isCanClaim) {
      decoration = BoxDecoration(
        color: LinkjoyAve.primaryMain,
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
      );
      btn = Text(
        "linkjoy_caring_mine_soft".tr,
        style: LinkjoyMarshaTriplet.captionNormal,
      );
    } else if (item.hasAction()) {
      decoration = BoxDecoration(
        border: Border.all(color: LinkjoyAve.primaryMain, width: 1.5),
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
      );
      btn = Row(
        children: [
          Text(
            "linkjoy_caring_go_form".tr,
            style: LinkjoyMarshaTriplet.captionNormal,
          ),
          LinkjoyFeynman.h2,
          Icon(
            Icons.arrow_forward,
            size: LinkjoyDiscard.iconMini,
            color: LinkjoyAve.textPrimary,
          ),
        ],
      );
    } else {
      decoration = BoxDecoration(
        color: LinkjoyAve.disabled.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
      );
      btn = Row(
        children: [
          Icon(
            Icons.lock_clock_outlined,
            size: LinkjoyDiscard.iconMini,
            color: LinkjoyAve.textPrimary,
          ),
          LinkjoyFeynman.h2,
          Text(
            "linkjoy_caring_mine_soft".tr,
            style: LinkjoyMarshaTriplet.captionNormal,
          ),
        ],
      );
    }

    return Container(
      padding: EdgeInsets.symmetric(vertical: LinkjoyGarage.s8),
      constraints: BoxConstraints(minWidth: LinkjoyGarage.s72),
      decoration: decoration,
      child: Center(child: btn),
    ).click(() => logic.goTask(item, taskType));
  }
}
