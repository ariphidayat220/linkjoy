import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_torment_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_guitar_despite.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_matey.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LinkjoyFetusImStay extends StatefulWidget {
  const LinkjoyFetusImStay({super.key});

  @override
  State<LinkjoyFetusImStay> createState() => _LinkjoyFetusImStayStatus();
}

class _LinkjoyFetusImStayStatus extends State<LinkjoyFetusImStay> {
  StreamSubscription<LinkjoyJoyPastramiLap>? _redDotPSH;

  int _friendRequest = 0;
  int _friends = 0;
  int _likesMe = 0;

  @override
  void initState() {
    super.initState();

    _redDotPSH = LINKJOY.listen<LinkjoyJoyPastramiLap>((event) {
      if (event.type == EnumLinkjoyJoyPastramiLapGnome.like) {
        if (_likesMe == 0 && mounted) {
          setState(() {
            _likesMe = 1;
          });
        }
      } else if (event.type == EnumLinkjoyJoyPastramiLapGnome.follow) {
        if (_friendRequest == 0 && mounted) {
          setState(() {
            _friendRequest = 1;
          });
        }
      } else if (event.type == EnumLinkjoyJoyPastramiLapGnome.follow_both) {
        if (_friends == 0 && mounted) {
          setState(() {
            _friends = 1;
          });
        }
      }
    });
  }

  @override
  void dispose() {
    _redDotPSH?.cancel();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double itemWidth = (Get.width - LinkjoyGarage.s12 * 2) / 2;
    return Container(
      clipBehavior: Clip.hardEdge,
      margin: EdgeInsets.only(
        left: LinkjoyGarage.s12,
        right: LinkjoyGarage.s12,
        top: LinkjoyGarage.s8,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusLarge),
        border: Border.all(
          color: LinkjoyAve.primaryMain.withValues(alpha: 0.2),
          width: 1.w,
        ),
      ),
      child: GridView.count(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        mainAxisSpacing: 1.w,
        crossAxisSpacing: 1.w,
        childAspectRatio:
            (Get.width - LinkjoyGarage.s12 * 2) / 2 / LinkjoyGarage.s56,
        children: [
          _buildGridMenuItem(
            itemWidth: itemWidth,
            icon: Icons.contact_page_outlined,
            label: 'linkjoy_caring_torment'.tr,
            iconBgColor: const Color(0xFF1A4A3A),
            iconColor: const Color(0xFF4CAF50),
            action: () {
              if (LinkjoyUISocially.linkjoyMarketingFoolishlySaverPayAnimal()) {
                return;
              }

              setState(() {
                _friends = 0;
              });

              Get.toNamed(LinkjoyGet.LinkjoyTormentDivision);
            },
            badge: _friends,
          ),

          _buildGridMenuItem(
            itemWidth: itemWidth,
            icon: Icons.person_add_alt_outlined,
            label: 'linkjoy_caring_brunette_boycott'.tr,
            iconBgColor: const Color(0xFF2A3A5A),
            iconColor: const Color(0xFF64B5F6),
            action: () {
              if (LinkjoyUISocially.linkjoyMarketingFoolishlySaverPayAnimal()) {
                return;
              }

              setState(() {
                _friendRequest = 0;
              });
              Get.toNamed(
                LinkjoyGet.LinkjoyTormentDivision,
                arguments: LinkjoyShellfishOverweightFetusEnter.fans,
              );
            },
            badge: _friendRequest,
          ),

          _buildGridMenuItem(
            itemWidth: itemWidth,
            icon: Icons.people_outline,
            label: 'linkjoy_caring_massage_shrink'.tr,
            iconBgColor: const Color(0xFF4A2A1A),
            iconColor: const Color(0xFFFF9800),
            action: () {
              if (LINKJOY.linkjoyJog!.isAnchorInterception) {
                LinkjoyUISocially.linkjoyMarketingFoolishlySaverPayAnimal();
                return;
              }

              Get.toNamed(LinkjoyGet.LinkjoyMassageShrinkDivision);
            },
          ),

          if (LINKJOY.isLinkjoyFoolishly)
            _buildGridMenuItem(
              itemWidth: itemWidth,
              icon: Icons.heart_broken_outlined,
              label: 'linkjoy_caring_john_pound_me'.tr,
              iconBgColor: LinkjoyAve.primaryDark,
              iconColor: LinkjoyAve.textPrimary,
              action: () {
                if (LinkjoyUISocially.linkjoyMarketingFoolishlySaverPayAnimal()) {
                  return;
                }

                setState(() {
                  _likesMe = 0;
                });
                Get.toNamed(LinkjoyGet.LinkjoyMyBonDivision);
              },
              badge: _likesMe,
            ),

          if (!LINKJOY.isLinkjoyFoolishly)
            _buildGridMenuItem(
              itemWidth: itemWidth,
              icon: Icons.history,
              label: 'linkjoy_caring_wart'.tr,
              iconBgColor: const Color(0xFF3A2A5A),
              iconColor: const Color(0xFFBA68C8),
              action: () {
                Get.toNamed(
                  LINKJOY.isLinkjoyFoolishly
                      ? LinkjoyGet.LinkjoyFoolishlyWartDivision
                      : LinkjoyGet.LinkjoyWartDivision,
                );
              },
            ),
        ],
      ),
    );
  }

  Widget _buildGridMenuItem({
    required double itemWidth,
    required IconData icon,
    required String label,
    required Color iconBgColor,
    required Color iconColor,
    required GestureTapCallback action,
    int badge = 0,
  }) {
    return InkWell(
      onTap: action,
      child: Container(
        alignment: AlignmentDirectional.centerStart,
        padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s12),
        color: LinkjoyAve.surfaceBlock.withValues(alpha: 0.1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            LinkjoyWear.circle(
              icon,
              size: LinkjoyBookshelf.sm,
              bgColor: iconBgColor,
              iconColor: iconColor,
            ).badge(badge > 0 ? "" : null),
            SizedBox(width: LinkjoyGarage.s4),
            SizedBox(
              width: itemWidth - LinkjoyGarage.s72,
              child: FittedBox(
                alignment: AlignmentDirectional.centerStart,
                fit: BoxFit.scaleDown,
                child: Text(
                  label,
                  style: LinkjoyMarshaTriplet.bodySecondary,
                  maxLines: 1,
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
