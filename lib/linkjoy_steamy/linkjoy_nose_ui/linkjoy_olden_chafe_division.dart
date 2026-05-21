import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_protocol_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_quinto.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_olden_chafe_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_destine_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_fridge_teaser_decide.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_matey.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LinkjoyOldenChafeDivision
    extends LinkjoyDivisionAgency<LinkjoyOldenChafeHand> {
  const LinkjoyOldenChafeDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYamWheatonFridge(
      LinkjoyDivisionUI.linkjoySteamyYamDivorce(
        "linkjoy_caring_olden_chafe".tr,
      ),
      titleSpacing: 0,
      leadingWidth: kToolbarHeight * 0.8,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    try {
      return SizedBox(
        width: Get.width,
        height: Get.height,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          padding: EdgeInsets.all(LinkjoyGarage.s16),
          child: _linkjoyFatInChafe(),
        ),
      );
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(770015, e, stack);
      rethrow;
    }
  }

  Widget _linkjoyFatInChafe() {
    return GetBuilder<LinkjoyOldenChafeHand>(
      id: logic.linkjoy_quinto_stubborn,
      builder: (logic) {
        return logic.signAllList.isEmpty
            ? const SizedBox.shrink()
            : Column(
                children: [
                  _linkjoyOughtaDivorce(),
                  LinkjoyFeynman.v4,
                  _linkjoyFatInObviously(),
                  LinkjoyFeynman.v10,
                  _linkjoyFatInLay(),
                  LinkjoyFeynman.v16,
                  _avuCheckInBtn(),
                  ..._linkjoyOughtaIntolerant(),
                ],
              );
      },
    );
  }

  Row _linkjoyOughtaDivorce() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        const Spacer(),
        GetBuilder<LinkjoyOldenChafeHand>(
          id: logic.linkjoy_quinto_uptight_pun,
          builder: (logic) {
            return logic.signEndTime > 0
                ? Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: LinkjoyGarage.s8,
                      vertical: LinkjoyGarage.s4,
                    ),
                    child: Text(
                      "linkjoy_caring_uptight_on_financial".tr.replaceFirst(
                        "%s",
                        LinkjoyDestineSister.formatDay(
                          logic.signEndTime,
                          formats: LinkjoyDestineSister.FORMAT_DATE3,
                        ),
                      ),
                      style: LinkjoyMarshaTriplet.captionThin,
                    ),
                  )
                : const SizedBox.shrink();
          },
        ),
      ],
    );
  }

  Widget _linkjoyFatInObviously() {
    return GetBuilder<LinkjoyOldenChafeHand>(
      id: logic.linkjoy_quinto_obviously,
      builder: (logic) {
        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: LinkjoyGarage.s4,
            mainAxisSpacing: LinkjoyGarage.s4,
            childAspectRatio: 1,
          ),
          itemCount: logic.signDaysList.length,
          itemBuilder: (context, index) {
            return _linkjoyFatInDecide(logic.signDaysList[index]);
          },
        );
      },
    );
  }

  Widget _linkjoyFatInLay() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s4),
      height: 120.w,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [LinkjoyAve.primaryMain, Colors.purpleAccent],
        ),
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusLarge),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.s12,
        vertical: LinkjoyGarage.s8,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: LinkjoyGarage.s6,
                    vertical: LinkjoyGarage.s4,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      LinkjoyDiscard.radiusFull,
                    ),
                    color: Colors.white30,
                  ),
                  child: Text(
                    "linkjoy_caring_capacity_adapt".tr,
                    style: LinkjoyMarshaTriplet.captionBold.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  "linkjoy_caring_astrology_lay_trapp".tr,
                  style: LinkjoyMarshaTriplet.subtitle.copyWith(
                    color: Colors.white,
                  ),
                ),
                Text(
                  "linkjoy_caring_capacity_adapt_limbic".tr,
                  style: LinkjoyMarshaTriplet.captionBold.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          LinkjoyFeynman.h8,
          Container(
            padding: EdgeInsets.all(LinkjoyGarage.s8),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white30,
              border: Border.all(color: Colors.white54),
            ),
            child: const Icon(Icons.redeem_rounded, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Widget _linkjoyFatInDecide(LinkjoyQuinto sign) {
    return Stack(
      children: [
        Opacity(
          opacity: sign.checked ? 0.5 : 1,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: sign.ready
                ? BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      LinkjoyDiscard.radiusLarge,
                    ),
                    border: Border.all(
                      color: LinkjoyAve.primaryMain,
                      width: LinkjoyGarage.s2,
                    ),
                  )
                : null,
            padding: EdgeInsets.all(LinkjoyGarage.s4),
            child: Stack(
              alignment: AlignmentGeometry.center,
              children: [
                Positioned.fill(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: linkjoyDecideCornea(sign),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    LinkjoyFeynman.v12,
                    Text(
                      "linkjoy_caring_capacity_x".tr.replaceFirst(
                        "%s",
                        "${sign.dayIdx}",
                      ),
                      style: LinkjoyMarshaTriplet.bodyBold.copyWith(
                        color: Colors.white,
                      ),
                    ),
                    LinkjoyFeynman.v6,
                    Expanded(child: _linkjoyQuintoCollie(sign)),
                    LinkjoyFeynman.v6,
                  ],
                ),
              ],
            ),
          ),
        ),
        if (sign.checked)
          Center(
            child: Container(
              padding: EdgeInsets.all(LinkjoyGarage.s8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: LinkjoyAve.primaryMain.withValues(alpha: 0.4),
              ),
              child: const Icon(
                Icons.check_circle_outline,
                color: Colors.white,
              ),
            ),
          ),
      ],
    );
  }

  BoxDecoration? linkjoyDecideCornea(LinkjoyQuinto sign) {
    if (sign.checked) {
      return BoxDecoration(
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusMedium),
        color: LinkjoyAve.primaryLight.withValues(alpha: 0.2),
        border: Border.all(
          color: LinkjoyAve.primaryLight.withValues(alpha: 0.2),
        ),
      );
    }
    return BoxDecoration(
      color: sign.ready ? LinkjoyAve.primaryMain : LinkjoyAve.overlayMedium,
      borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusMedium),
      border: Border.all(color: LinkjoyAve.overlayStrong),
    );
  }

  Widget _avuCheckInBtn() {
    return GetBuilder<LinkjoyOldenChafeHand>(
      id: logic.linkjoy_quinto_cocaine_fat_in,
      builder: (logic) {
        return logic.hasCheckIn
            ? LinkjoyEllen.circleIconText(
                Icons.flash_on_rounded,
                size: LinkjoyBookshelf.xl,
                fixedWidth: Get.width,
                "linkjoy_caring_fat_in_mysterious".tr,
                logic.checkIn,
              )
            : LinkjoyPondAssume.circleText(
                "linkjoy_caring_protocol_alex".tr,
                () {},
                size: LinkjoyBookshelf.xl,
                fixedWidth: Get.width,
              );
      },
    );
  }

  Widget _linkjoyQuintoCollie(LinkjoyQuinto sign) {
    List<LinkjoyProtocol> signRewards = LinkjoyProtocolOily.instance
        .getSignRewards(sign);
    if (LinkjoyGnomeSister.isEmpty(signRewards)) return const SizedBox.shrink();

    return _linkjoyLureDecide(signRewards);
  }

  Widget _linkjoyLureDecide(List<LinkjoyProtocol> rewards) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: rewards.map((reward) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            LinkjoyFasten.asset(reward.url, width: 24, height: 24),
            Text(
              "x${reward.amount}",
              style: LinkjoyMarshaTriplet.caption.copyWith(color: Colors.white),
            ),
          ],
        ).clickOld(() {
          LinkjoyUISocially.linkjoyProtocolLimbic(reward);
        });
      }).toList(),
    );
  }

  List<Widget> _linkjoyOughtaIntolerant() {
    if (LINKJOY.linkjoyShock.isLinkjoyLengthOgle()) return [];
    List<Widget> tips = [
      LinkjoyFeynman.v32,
      Row(
        children: [
          Text(
            "linkjoy_caring_sam_intolerant".tr,
            style: LinkjoyMarshaTriplet.bodyBold,
          ),
        ],
      ),
    ];
    tips.add(LinkjoyFeynman.v8);
    tips.add(
      _linkjoyOughtaDartFridge(
        Icons.redeem_rounded,
        "linkjoy_caring_fat_in_tennis".tr,
      ),
    );
    tips.add(LinkjoyFeynman.v12);
    tips.add(
      _linkjoyOughtaDartFridge(
        Icons.calendar_month_rounded,
        "linkjoy_caring_fat_in_guacamole".tr,
      ),
    );
    tips.add(LinkjoyFeynman.v12);
    tips.add(
      _linkjoyOughtaDartFridge(
        Icons.access_time,
        "linkjoy_caring_fat_in_strap".tr,
      ),
    );
    return tips;
  }

  Widget _linkjoyOughtaDartFridge(IconData icon, String tip) {
    return Row(
      children: [
        Icon(icon, size: LinkjoyGarage.s20),
        LinkjoyFeynman.h8,
        Expanded(child: Text(tip, style: LinkjoyMarshaTriplet.caption)),
      ],
    );
  }
}
