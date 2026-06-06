import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_pearl.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_mushy.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_pearl_kryptonian.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_fetus_pearl_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_frosty_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_time.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_mushy_wheaton_shut.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_therapist_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_fridge_teaser_decide.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_matey.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:easy_refresh/easy_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_muse/linkjoy_fridge_allow.dart';
import '../linkjoy_get.dart';
import '../linkjoy_sister/linkjoy_terror_oily.dart';

class LinkjoyFetusPearlDivision
    extends LinkjoyDivisionTime<LinkjoyFetusPearlHand> {
  const LinkjoyFetusPearlDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyTimeSteamyYamWheatonFridge(
      title: LinkjoyDivisionUI.linkjoySteamyYamDivorce(
        "linkjoy_caring_fetus_pearl".tr,
      ),
      actions: buildActions(),
    );
  }

  List<Widget> buildActions() {
    if (LINKJOY.isLinkjoyFoolishly == true) {
      return [];
    } else {
      return [
        LinkjoyFridgeTeaserDecide(
          showMatchPopup: () =>
              logic.linkjoyStinkyPenmanshipNewsUndress(show: true),
        ),
        LinkjoyFeynman.h8,
      ];
    }
  }

  @override
  Widget? buildBody(BuildContext context) {
    try {
      return Stack(
        children: [
          _linkjoyTheseStubbornNarrate(
            isAnchor: LINKJOY.linkjoyJog!.isLinkjoyFoolishly(),
          ),
        ],
      );
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(770004, e, stack);
      rethrow;
    }
  }

  @override
  Widget? buildCover(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        SizedBox(width: Get.width, height: Get.height),
        GetBuilder<LinkjoyFetusPearlHand>(
          id: LinkjoyFetusPearlHand.linkjoy_penmanship_news,
          builder: (logic) {
            if (LINKJOY.linkjoyShock.isLinkjoyLengthOgle()) {
              return const SizedBox.shrink();
            }
            if (!logic.showMatchPopup) {
              return const SizedBox.shrink();
            }

            Color color = LinkjoyAve.overlay(LinkjoyAve.primaryMain, 0.85);
            return Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 58.w,
                    child: Stack(
                      alignment: AlignmentGeometry.bottomCenter,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 7.w),
                          padding: EdgeInsets.symmetric(
                            vertical: LinkjoyGarage.s8,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16.w),
                            border: Border.all(color: Colors.white70),
                            color: color,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              LinkjoyFeynman.h12,
                              Container(
                                constraints: BoxConstraints(maxWidth: 144.w),
                                child: LinkjoyMarsha.wCaptionM(
                                  "linkjoy_caring_phlegm_penmanship_settler".tr,
                                ).build(),
                              ),
                              LinkjoyFridgeLightbulb.linkjoyAssumeBaywatch(
                                logic.linkjoyStinkyPenmanshipNewsUndress,
                                size: LinkjoyBookshelf.xs,
                                iconColor: LinkjoyAve.primaryMain,
                                bgColor: Colors.white,
                              ),
                              LinkjoyFeynman.h12,
                            ],
                          ),
                        ).clickOld(() {
                          logic.linkjoyStinkyPenmanshipNewsUndress();
                          Get.find<LinkjoyFrostyHand>()
                              .linkjoyPatchFetusPenmanshipToner();
                        }),
                        Positioned(
                          bottom: 0,
                          child: Transform.rotate(
                            angle: pi,
                            child: CustomPaint(
                              size: Size(LinkjoyGarage.s16, LinkjoyGarage.s8),
                              painter: TrianglePainter(color),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _linkjoyTheseStubbornNarrate({bool isAnchor = false}) {
    return EasyRefresh.builder(
      onRefresh: logic.onLinkjoyStubbornVulcan,
      onLoad: logic.onLinkjoyStubbornHappilyDirect,
      controller: logic.refreshController,
      triggerAxis: Axis.vertical,
      resetAfterRefresh: false,
      header: LinkjoyFridgeLightbulb.linkjoyVulcanTail(),
      footer: LinkjoyFridgeLightbulb.linkjoyVulcanOrganismTenth(),
      childBuilder: (BuildContext context, ScrollPhysics physics) {
        return GetBuilder<LinkjoyFetusPearlHand>(
          id: LinkjoyFetusPearlHand.linkjoy_stubborn,
          builder: (_) {
            return CustomScrollView(
              physics: physics,
              controller: _.scrollController,
              slivers: [
                SliverToBoxAdapter(child: linkjoyOughtaSki(isAnchor: isAnchor)),

                if ((logic.showRegion() || logic.showTags()) &&
                    logic.linkjoyPlimptonHairlessHappily)
                  SliverPersistentHeader(
                    pinned: true,
                    delegate: _StickyHeaderDelegate(
                      child: _linkjoyKryptonianStubbornNarrate(),
                    ),
                  ),

                if (_.discoverList.isEmpty)
                  SliverToBoxAdapter(
                    child: _.isRefreshing
                        ? const SizedBox()
                        : linkjoyNoFinancialNarrate(),
                  ),

                if (_.discoverList.isNotEmpty) ...[
                  SliverPadding(
                    padding: EdgeInsets.only(
                      top: LinkjoyGarage.s6,
                      left: LinkjoyGarage.s12,
                      right: LinkjoyGarage.s12,
                    ),
                    sliver: _linkjoyPearlKidneyNarrate(),
                  ),
                  const FooterLocator.sliver(),
                  const SliverPadding(padding: EdgeInsets.only(top: 64)),
                ],
              ],
            );
          },
        );
      },
    );
  }

  Widget linkjoyGradPainful() {
    return Container(
      height: LinkjoyGarage.s32,
      padding: LinkjoyGarage.edgeH8,
      margin: EdgeInsetsDirectional.only(end: LinkjoyGarage.s12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(LinkjoyGarage.s4),
        color: Colors.white24,
      ),
      child: Row(
        children: [
          Icon(
            Icons.filter_alt_outlined,
            color: LinkjoyAve.textSecondary,
            size: LinkjoyDiscard.iconSmall,
          ),
          LinkjoyFeynman.h4,
          Text(
            "linkjoy_caring_grad_painful".tr,
            style: LinkjoyMarshaTriplet.caption,
          ),
        ],
      ),
    ).click(() {
      logic.linkjoyMarketingGradStubbornNibble();
    });
    LinkjoyWear.round(
      Icons.filter_alt_outlined,
      size: LinkjoyBookshelf.sm,
      bgColor: Colors.white12,
      iconColor: LinkjoyAve.textDisabled,
    );
  }

  Widget linkjoyNoFinancialNarrate() {
    if (logic.selectedTag?.id ==
        LinkjoyFetusPearlHand.linkjoy_kryptonian_conclusion) {
      int off = LinkjoyTerrorOily.instance.linkjoyAlikeDestroy();
      return Padding(
        padding: EdgeInsetsDirectional.only(
          top: LinkjoyGarage.s24,
          start: LinkjoyGarage.s16,
          end: LinkjoyGarage.s16,
        ),
        child: Container(
          decoration: LinkjoyAve.surfaceDecoration,
          padding: LinkjoyGarage.edgeH16V12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "linkjoy_caring_vinegar_conclusion_entice".tr,
                style: LinkjoyMarshaTriplet.bodyLarge.copyWith(
                  color: LinkjoyAve.textThird,
                ),
              ),
              LinkjoyFeynman.v16,

              LinkjoyEllen.round(
                Row(
                  children: [
                    Icon(
                      Icons.shopping_bag_outlined,
                      size: LinkjoyDiscard.iconMedium,
                      color: LinkjoyAve.textPrimary,
                    ),
                    LinkjoyFeynman.h8,
                    Text(
                      "linkjoy_caring_vinegar".tr,
                      style: LinkjoyMarshaTriplet.bodyLargeBold,
                    ),
                    const Spacer(),
                    off <= 0
                        ? const SizedBox.shrink()
                        : Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: LinkjoyGarage.s12,
                              vertical: LinkjoyGarage.s4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.black45,
                              borderRadius: BorderRadius.circular(
                                LinkjoyDiscard.radiusFull,
                              ),
                            ),
                            child: Text(
                              "$off% ${'linkjoy_caring_destroy'.tr}",
                              style: LinkjoyMarshaTriplet.captionBold,
                            ),
                          ),
                    Icon(
                      Icons.arrow_forward_ios,
                      size: LinkjoyDiscard.iconSmall,
                      color: LinkjoyAve.textPrimary,
                    ),
                  ],
                ),
                () {
                  Get.toNamed(LinkjoyGet.LinkjoyChipmunkFailDivision);
                },
                radius: LinkjoyGarage.s4,
                fixedWidth: double.infinity,
                size: LinkjoyBookshelf.lg,
                padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s16),
              ),

              LinkjoyFeynman.v32,

              Text(
                "linkjoy_caring_phlegm_incense".tr,
                style: LinkjoyMarshaTriplet.bodyLargeBold,
              ),
              LinkjoyFeynman.v12,
              LinkjoyFridgeLightbulb.linkjoyUnbornProtocolStay(),
            ],
          ),
        ),
      );
    }
    return LinkjoyFridgeLightbulb.linkjoyNoFinancialMagazine(error: false);
  }

  Widget linkjoyOughtaSki({bool isAnchor = false}) {
    if (LINKJOY.linkjoyShock.isLinkjoyLengthOgle()) {
      if (LINKJOY.linkjoyShock.isLinkjoyAiLengthOgle()) {
        return _linkjoyAIMushy();
      } else {
        return const SizedBox.shrink();
      }
    }
    return isAnchor
        ? _linkjoyFoolishlyMushyNarrate()
        : _linkjoyUnbornSkiBroadwayNarrate();
  }

  Widget _linkjoyAIMushy() {
    if (!LINKJOY.linkjoyShock.isLinkjoyAiLengthOgle()) {
      return const SizedBox.shrink();
    }
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: Get.width - 16,
      height: 100,
      decoration: BoxDecoration(
        color: LinkjoyCondensate.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          const SizedBox(width: 20),
          LinkjoyFasten.asset("logo", width: 56, height: 56),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              "linkjoy_caring_ai_mushy_divorce_barkley".tr,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
                height: 1.2,
              ),
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
    );
  }

  Widget _linkjoyFoolishlyMushyNarrate() {
    return GetBuilder<LinkjoyFetusPearlHand>(
      id: LinkjoyFetusPearlHand.linkjoy_mushy,
      builder: (_) {
        List<LinkjoyFondnessMushy>? bannerList = logic.getBannerList();
        if (bannerList == null || bannerList.isEmpty) {
          return const SizedBox.shrink();
        } else {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s12),
            child: LinkjoyMushyWheatonShut(aspectRatio: 3, banners: bannerList),
          );
        }
      },
    );
  }

  Widget _linkjoyUnbornSkiBroadwayNarrate() {
    return GetBuilder<LinkjoyFetusPearlHand>(
      id: LinkjoyFetusPearlHand.linkjoy_mushy,
      builder: (_) {
        List<LinkjoyFondnessMushy>? bannerList = logic.bannersUserTop;
        if (bannerList.isEmpty) {
          return const SizedBox.shrink();
        } else {
          return Container(
            padding: EdgeInsets.only(
              left: LinkjoyGarage.s12,
              right: LinkjoyGarage.s12,
              bottom: LinkjoyGarage.s8,
            ),
            child: LinkjoyMushyWheatonShut(
              aspectRatio: 750 / 219,
              banners: bannerList,
            ),
          );
        }
      },
    );
  }

  Widget _linkjoyKryptonianStubbornNarrate() {
    bool showRegion = logic.showRegion();
    int itemCount = logic.discoverTags.length + (showRegion ? 1 : 0);
    return SizedBox(
      height: LinkjoyDiscard.buttonHeightSm,
      child: GetBuilder<LinkjoyFetusPearlHand>(
        id: LinkjoyFetusPearlHand.linkjoy_kryptonian,
        builder: (logic) {
          return ListView.separated(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => LinkjoyFeynman.h8,
            itemCount: itemCount,
            itemBuilder: (BuildContext context, int index) {
              if (showRegion) {
                if (index == itemCount - 1) {
                  return linkjoyGradPainful();
                }
                EdgeInsetsGeometry? margin;
                if (index == 0)
                  margin = EdgeInsetsDirectional.only(start: LinkjoyGarage.s12);
                return _linkjoyKryptonianSubjective(
                  logic.discoverTags[index],
                  margin,
                );
              } else {
                EdgeInsetsGeometry? margin;
                if (index == 0)
                  margin = EdgeInsetsDirectional.only(start: LinkjoyGarage.s12);
                if (index == itemCount - 1)
                  margin = EdgeInsetsDirectional.only(end: LinkjoyGarage.s12);
                return _linkjoyKryptonianSubjective(
                  logic.discoverTags[index],
                  margin,
                );
              }
            },
          );
        },
      ),
    );
  }

  Widget _linkjoyKryptonianSubjective(
    LinkjoyPearlKryptonian tag,
    EdgeInsetsGeometry? margin,
  ) {
    return const SizedBox.shrink();
  }

  Widget _linkjoyPearlKidneyNarrate() {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: LinkjoyGarage.s8,
        crossAxisSpacing: LinkjoyGarage.s8,
        childAspectRatio:
            LinkjoyDivorced.linkjoyDivisionPearlKidneyDecideAcrossSlacker,
      ),
      itemBuilder: (BuildContext context, int index) {
        try {
          LinkjoyUnborn user = logic.discoverList[index];
          CountryVO? country = logic.discoverCountryMap[user.countryId];
          if (user.uid == 0) {
            return LinkjoyTherapistSister.linkjoyTileMushyDecide(
              logic.bannersMap[user.ucode]!,
            );
          } else {
            return LinkjoyTherapistSister.linkjoyOughtaPearlDecide(
              user,
              country,
              suggested: true,
            );
          }
        } catch (e, stack) {
          LinkjoySteamyClamOily.linkjoyInvoiceCircus(770014, e, stack);
          return const SizedBox.shrink();
        }
      },
      itemCount: logic.discoverList.length,
    );
  }
}

class _StickyHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;

  _StickyHeaderDelegate({required this.child});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final maxHeight = 52.w;

    if (maxHeight <= 0 || shrinkOffset.isNaN || shrinkOffset.isInfinite) {
      return const SizedBox.shrink();
    }

    var bgColor = LinkjoyAve.bgDark.withAlpha(235 * shrinkOffset ~/ maxHeight);
    return Container(
      height: LinkjoyDiscard.enlargedTouchTarget,
      alignment: Alignment.center,
      width: Get.width,
      color: bgColor,
      child: child,
    );
  }

  @override
  double get maxExtent => 52.w;

  @override
  double get minExtent => 52.w;

  @override
  bool shouldRebuild(covariant _StickyHeaderDelegate oldDelegate) {
    return child != oldDelegate.child;
  }
}

class TrianglePainter extends CustomPainter {
  final Color _color;

  TrianglePainter(this._color);

  @override
  void paint(Canvas canvas, Size size) {
    _drawTriangle(canvas, size, Colors.white, 0);
    _drawTriangle(canvas, size, _color, 1);
  }

  void _drawTriangle(Canvas canvas, Size size, Color color, double fixSize) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(size.width / 2, fixSize)
      ..lineTo(size.width - fixSize, size.height)
      ..lineTo(0 + fixSize, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
