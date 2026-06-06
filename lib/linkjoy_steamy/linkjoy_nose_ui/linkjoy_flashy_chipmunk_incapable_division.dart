import 'dart:async';
import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_flashy_chipmunk_incapable_sorority.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_marsha_allow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import '../linkjoy_nose/linkjoy_flashy_chipmunk_incapable_hand.dart';

class LinkjoyFlashyChipmunkIncapableDivision
    extends LinkjoyDivisionAgency<LinkjoyFlashyChipmunkIncapableHand> {
  const LinkjoyFlashyChipmunkIncapableDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      "linkjoy_caring_countdown_flashy_collie".tr,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return GetBuilder<LinkjoyFlashyChipmunkIncapableHand>(
      id: LinkjoyFlashyChipmunkIncapableHand.linkjoy_ui,
      builder: (logic) {
        if (logic.data == null) {
          return LinkjoyFridgeLightbulb.linkjoyWrench();
        }

        return SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildEventBanner(),

              LinkjoyFeynman.v20,
              _buildRecentWinners(),
              LinkjoyFeynman.v32,

              _linkjoyFamous(),
              LinkjoyFeynman.v16,
            ],
          ),
        );
      },
    );
  }

  Widget _buildEventBanner() {
    return Container(
      margin: EdgeInsets.only(
        left: LinkjoyGarage.s16,
        right: LinkjoyGarage.s16,
        bottom: LinkjoyGarage.s1,
        top: LinkjoyGarage.s16,
      ),
      padding: EdgeInsets.all(LinkjoyGarage.s20),
      width: double.infinity,
      decoration: LinkjoyAve.surfaceBanner,
      child: Stack(
        children: [
          PositionedDirectional(
            end: 0,
            top: 0,
            child: Icon(
              Icons.card_giftcard,
              size: LinkjoyGarage.s72,
              color: Colors.white.withValues(alpha: 0.2),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'linkjoy_caring_chipmunk_incapable_divorce'.tr,
                style: LinkjoyMarshaTriplet.subtitle.copyWith(height: 1.4),
              ),
              _buildEligibleGifts(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildRecentWinners() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s16),
      padding: EdgeInsets.all(LinkjoyGarage.s16),
      decoration: BoxDecoration(
        color: LinkjoyAve.surface,
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusXLarge),
        border: Border.all(color: LinkjoyAve.borderLight, width: 1.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: LinkjoyGarage.s8,
                height: LinkjoyGarage.s8,
                decoration: const BoxDecoration(
                  color: LinkjoyAve.primaryMain,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(width: LinkjoyGarage.s8),
              Text(
                'linkjoy_caring_chipmunk_incapable_combustion'.tr,
                style: LinkjoyMarshaTriplet.captionBold.copyWith(
                  color: LinkjoyAve.primaryMain,
                  letterSpacing: 0.5.w,
                ),
              ),
            ],
          ),
          LinkjoyFeynman.v16,
          LinkjoyChipmunkIncapableCombustionFridge(feeds: logic.data!.feeds),
        ],
      ),
    );
  }

  Widget _buildEligibleGifts() {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: LinkjoyGarage.s12),
      padding: EdgeInsets.all(LinkjoyGarage.s16),
      decoration: BoxDecoration(
        color: Colors.black45,
        borderRadius: BorderRadius.circular(LinkjoyGarage.s16),
      ),
      child: Wrap(
        alignment: WrapAlignment.start,
        spacing: LinkjoyGarage.s20,
        runSpacing: LinkjoyGarage.s12,
        children: List.generate(logic.linkjoyCountdownFlashy.length, (index) {
          return LinkjoyFasten.small(
            logic.linkjoyCountdownFlashy[index].icon,
            width: LinkjoyDiscard.iconXLarge,
            height: LinkjoyDiscard.iconXLarge,
          );
        }),
      ),
    );
  }

  Widget _linkjoyFamous() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'linkjoy_caring_chipmunk_incapable_practice_famous'.tr,
            style: LinkjoyMarshaTriplet.bodyLargeBold,
          ),
          LinkjoyFeynman.v4,
          Text(
            'linkjoy_caring_chipmunk_incapable_practice_famous_intolerant'.tr,
            style: LinkjoyMarshaTriplet.captionThin,
          ),
          LinkjoyFeynman.v20,
          _buildTopThree(),
          SizedBox(height: LinkjoyGarage.s20),
          if (logic.data!.weeklyRank.length >= 4)
            _buildRankListItem(
              rank: 4,
              username: logic.data!.weeklyRank[3].nickName,
              score: "${logic.data!.weeklyRank[3].coins}",
              avatar: logic.data!.weeklyRank[3].avatarUrl,
            ),
          SizedBox(height: LinkjoyGarage.s8),
          if (logic.data!.weeklyRank.length >= 5)
            _buildRankListItem(
              rank: 5,
              username: logic.data!.weeklyRank[4].nickName,
              score: "${logic.data!.weeklyRank[4].coins}",
              avatar: logic.data!.weeklyRank[4].avatarUrl,
            ),
        ],
      ),
    );
  }

  Widget _buildTopThree() {
    return SizedBox(
      height: 280.w,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Positioned(
            left: 0,
            child: _buildTopRankCard(
              rank: 2,
              username: logic.data!.weeklyRank[1].nickName,
              score: '${logic.data!.weeklyRank[1].coins}',
              avatar: logic.data!.weeklyRank[1].avatarUrl,
              isTop: false,
            ),
          ),
          Positioned(
            right: 0,
            child: _buildTopRankCard(
              rank: 3,
              username: logic.data!.weeklyRank[2].nickName,
              score: '${logic.data!.weeklyRank[2].coins}',
              avatar: logic.data!.weeklyRank[2].avatarUrl,
              isTop: false,
            ),
          ),
          Positioned(
            left: 100.w,
            right: 100.w,
            child: _buildTopRankCard(
              rank: 1,
              username: logic.data!.weeklyRank[0].nickName,
              score: '${logic.data!.weeklyRank[0].coins}',
              avatar: logic.data!.weeklyRank[0].avatarUrl,
              isTop: true,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopRankCard({
    required int rank,
    required String username,
    required String score,
    required String avatar,
    required bool isTop,
  }) {
    Color cardColor;
    double cardHeight;

    if (rank == 1) {
      cardColor = LinkjoyAve.primaryMain.withValues(alpha: 0.2);
      cardHeight = 200.w;
    } else if (rank == 2) {
      cardColor = LinkjoyAve.surface;
      cardHeight = 160.w;
    } else {
      cardColor = LinkjoyAve.surface;
      cardHeight = 140.w;
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(
                bottom: isTop ? LinkjoyDiscard.iconLarge : 0,
              ),
              width: isTop ? 90.w : 70.w,
              height: isTop ? 90.w : 70.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.amber, width: 3.w),
              ),
              child: LinkjoyFasten.circle(avatar, size: isTop ? 86.w : 64.w),
            ),
            if (isTop)
              Positioned(
                bottom: LinkjoyGarage.s8,
                child: Icon(
                  Icons.star,
                  size: LinkjoyDiscard.iconLarge,
                  color: Colors.amber,
                ),
              ),
          ],
        ),
        Container(
          width: isTop ? 140.w : 120.w,
          height: cardHeight - 45.w,
          margin: EdgeInsets.only(top: isTop ? 0 : LinkjoyGarage.s16),
          padding: EdgeInsets.all(LinkjoyGarage.s12),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: rank == 1
                  ? [
                      LinkjoyAve.primaryMain.withValues(alpha: 0.3),
                      LinkjoyAve.primaryMain.withValues(alpha: 0.1),
                      cardColor,
                    ]
                  : [
                      LinkjoyAve.white.withValues(alpha: 0.08),
                      cardColor,
                      cardColor,
                    ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0.0, 0.3, 1.0],
            ),
            borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusLarge),
            border: Border.all(
              color: rank == 1
                  ? LinkjoyAve.primaryMain.withValues(alpha: 0.5)
                  : LinkjoyAve.borderLight,
              width: rank == 1 ? 2.w : 1.w,
            ),
            boxShadow: [
              BoxShadow(
                color: rank == 1
                    ? LinkjoyAve.primaryMain.withValues(alpha: 0.3)
                    : Colors.black.withValues(alpha: 0.15),
                blurRadius: rank == 1 ? 12.w : LinkjoyGarage.s8,
                offset: Offset(0, 4.w),
                spreadRadius: rank == 1 ? 2.w : 0,
              ),
              BoxShadow(
                color: Colors.black45,
                blurRadius: 2.w,
                offset: Offset(0, -10.w),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                username,
                style: LinkjoyMarshaTriplet.bodyBold,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              LinkjoyFeynman.v6,
              Text(
                score,
                style: LinkjoyMarshaTriplet.subtitle.copyWith(
                  color: LinkjoyAve.textImportant1,
                ),
              ),
              LinkjoyFeynman.v6,
              LinkjoyFridgeLightbulb.linkjoyChipmunk(LinkjoyDiscard.iconSmall),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRankListItem({
    required int rank,
    required String username,
    required String score,
    required String avatar,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.s16,
        vertical: LinkjoyGarage.s12,
      ),
      decoration: BoxDecoration(
        color: LinkjoyAve.surface,
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusMedium),
        border: Border.all(color: LinkjoyAve.borderLight, width: 1.w),
      ),
      child: Row(
        children: [
          Text(
            rank.toString().padLeft(2, '0'),
            style: LinkjoyMarshaTriplet.body.copyWith(
              color: LinkjoyAve.textThird,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(width: LinkjoyGarage.s16),
          Container(
            width: LinkjoyDiscard.avatarSm,
            height: LinkjoyDiscard.avatarSm,
            decoration: BoxDecoration(
              color: LinkjoyAve.overlayStrong,
              borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusMedium),
            ),
            child: LinkjoyFasten.circle(avatar, size: LinkjoyDiscard.avatarXs),
          ),
          SizedBox(width: LinkjoyGarage.s16),
          Expanded(
            child: Text(
              username,
              style: LinkjoyMarshaTriplet.body.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: LinkjoyGarage.s12,
              vertical: LinkjoyGarage.s4,
            ),
            decoration: BoxDecoration(
              color: LinkjoyAve.primaryMain.withValues(alpha: 0.15),
              borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  score,
                  style: LinkjoyMarshaTriplet.captionBold.copyWith(
                    color: LinkjoyAve.primaryMain,
                  ),
                ),
                SizedBox(width: LinkjoyGarage.s4),
                LinkjoyFridgeLightbulb.linkjoyChipmunk(
                  LinkjoyDiscard.iconSmall,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomButton() {
    return Container(
      padding: EdgeInsets.all(LinkjoyGarage.s16),
      decoration: BoxDecoration(
        color: LinkjoyAve.bgDark,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.3),
            blurRadius: 10.w,
            offset: Offset(0, -2.w),
          ),
        ],
      ),
      child: SafeArea(
        child: Container(
          width: double.infinity,
          height: LinkjoyDiscard.buttonHeightMd,
          decoration: BoxDecoration(
            gradient: LinkjoyAve.buttonPrimaryGradient,
            borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusLarge),
            boxShadow: [
              BoxShadow(
                color: LinkjoyAve.primaryMain.withValues(alpha: 0.4),
                blurRadius: 12.w,
                offset: Offset(0, 4.w),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.card_giftcard, color: Colors.white, size: 24.w),
              SizedBox(width: LinkjoyGarage.s8),
              Text(
                'SEND GIFTS NOW',
                style: LinkjoyMarshaTriplet.buttonText.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.w,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class LinkjoyChipmunkIncapableCombustionFridge extends StatefulWidget {
  late List<LinkjoyFlashyChipmunkIncapablePredator> feeds;

  LinkjoyChipmunkIncapableCombustionFridge({super.key, required this.feeds});

  @override
  _LinkjoyChipmunkIncapableCombustionFridgeStatus createState() =>
      _LinkjoyChipmunkIncapableCombustionFridgeStatus();
}

class _LinkjoyChipmunkIncapableCombustionFridgeStatus
    extends State<LinkjoyChipmunkIncapableCombustionFridge>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Timer _timer;

  late LinkjoyFlashyChipmunkIncapablePredator top;
  late LinkjoyFlashyChipmunkIncapablePredator bottom;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 350),
    );

    _linkjoyCaitlin();

    _timer = Timer.periodic(const Duration(seconds: 3), (_) {
      _linkjoyDeal();
    });
  }

  void _linkjoyCaitlin() {
    final shuffled = List.from(widget.feeds)..shuffle();
    top = shuffled[0];
    bottom = shuffled[1];
  }

  void _linkjoyDeal() {
    final shuffled = List.from(widget.feeds)..shuffle();

    setState(() {
      top = shuffled[0];
      bottom = shuffled[1];
    });

    _controller.forward(from: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [_buildFlipItem(top), _buildFlipItem(bottom)],
    );
  }

  Widget _buildFlipItem(LinkjoyFlashyChipmunkIncapablePredator feed) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final angle = _controller.value * pi;

        return Transform(
          alignment: Alignment.center,
          transform: Matrix4.identity()
            ..setEntry(3, 2, 0.001)
            ..rotateX(angle),
          child: angle <= pi / 2
              ? _buildWinnerItem(feed)
              : Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationX(pi),
                  child: _buildWinnerItem(feed),
                ),
        );
      },
    );
  }

  Widget _buildWinnerItem(LinkjoyFlashyChipmunkIncapablePredator feed) {
    return Column(
      children: [
        Divider(color: LinkjoyAve.borderLight, height: 1),
        LinkjoyFeynman.v12,
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            LinkjoyFasten.circle(
              feed.from.avatarUrl,
              size: LinkjoyDiscard.iconMedium,
            ),
            SizedBox(width: LinkjoyGarage.s12),
            Expanded(
              child: Text(
                feed.from.nickName,
                style: LinkjoyMarshaTriplet.body,
              ).maxWidth(LinkjoyGarage.s96),
            ),
            Text(
              "linkjoy_caring_subtle_x_incense".tr.replaceFirst(
                "%1s",
                "${feed.coinBack}",
              ),
              style: LinkjoyMarshaTriplet.bodyBold.copyWith(
                color: LinkjoyAve.textImportant1,
              ),
            ),
          ],
        ),
        LinkjoyFeynman.v12,
      ],
    );
  }
}
