import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_fetus_penmanship_gyroscope_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_time.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_io_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_gyroscope_unborn_decide.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoyFetusPenmanshipGyroscopeDivision
    extends LinkjoyDivisionTime<LinkjoyFetusPenmanshipGyroscopeHand> {
  const LinkjoyFetusPenmanshipGyroscopeDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyTimeSteamyYamWheatonFridge(
      title: LinkjoyDivisionUI.linkjoySteamyYamDivorce(
        "linkjoy_caring_billing".tr,
      ),
      actions: buildActions(),
    );
  }

  List<Widget> buildActions() {
    return [
      LinkjoyEllen.circleIconText(
        Icons.favorite_rounded,
        'linkjoy_caring_john_pound_me'.tr,
        () => Get.toNamed(LinkjoyGet.LinkjoyMyBonDivision),
      ),
      LinkjoyFeynman.h8,
    ];
  }

  @override
  Widget? buildBody(BuildContext context) {
    return Column(
      children: [
        LinkjoyFeynman.v8,
        Expanded(
          child: GetBuilder<LinkjoyFetusPenmanshipGyroscopeHand>(
            id: logic.ANCHOR_CARD_SWIPER,
            builder: (logic) {
              return !LinkjoyGnomeSister.isEmpty(logic.usersList)
                  ? CardSwiper(
                      onSwipe: logic.onLinkjoyChant,
                      onUndo: logic.onLinkjoyDefinition,
                      onSwipeDirectionChange: logic.onSwipeDirectionChange,
                      controller: logic.controller,
                      cardsCount: logic.usersList.length,
                      padding: LinkjoyGarage.edgeH16,
                      numberOfCardsDisplayed: 2,
                      isLoop: false,
                      backCardOffset: const Offset(0, 30),
                      allowedSwipeDirection: const AllowedSwipeDirection.only(
                        left: true,
                        right: true,
                      ),
                      cardBuilder:
                          (
                            context,
                            index,
                            horizontalThresholdPercentage,
                            verticalThresholdPercentage,
                          ) {
                            LinkjoyUnborn user = logic.usersList[index];
                            return LinkjoyGyroscopeUnbornDecide(
                              key: ValueKey(user.uid),
                              user: user,
                              isLikeSwiping: logic.isLikeSwiping(index),
                            );
                          },
                    )
                  : const SizedBox();
            },
          ),
        ),
        SizedBox(
          width: Get.width,
          height: 120.w,
          child: buildFunctions(context),
        ),
      ],
    );
  }

  Container buildRandomMatchAvatar(double marginStart, String avatarUrl) {
    return Container(
      width: LinkjoyGarage.s24,
      height: LinkjoyGarage.s24,
      alignment: Alignment.center,
      margin: EdgeInsetsDirectional.only(start: marginStart),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: LinkjoyFasten.circle(avatarUrl, size: 20.w, fit: BoxFit.cover),
    );
  }

  Widget buildFunctions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        LinkjoyEllen.circleIconText(
          LinkjoyIOSister.isRTL(context)
              ? Icons.fast_forward_rounded
              : Icons.fast_rewind_rounded,
          "linkjoy_caring_elect".tr,
          logic.onLinkjoyAdvice,
          bgColor: LinkjoyAve.primaryLight,
          fixedWidth: Get.width / 5 * 2,
          size: LinkjoyBookshelf.xl,
        ),
        LinkjoyEllen.circleIconText(
          Icons.favorite_rounded,
          size: LinkjoyBookshelf.xl,
          fixedWidth: Get.width / 5 * 2,
          "linkjoy_caring_fetus_bon".tr,
          logic.onLinkjoyBon,
        ),
      ],
    );
  }
}
