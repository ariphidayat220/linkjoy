import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_arousal_son_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_suspend.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_matey.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoyArousalSonDivision
    extends LinkjoyDivisionAgency<LinkjoyArousalSonHand> {
  const LinkjoyArousalSonDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      "linkjoy_caring_arousal_son".tr,
      leading: logic.arguments.showBack ? null : const SizedBox.shrink(),
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            LinkjoyFeynman.v72,
            Text(
              'linkjoy_caring_arousal_son_limbic'.tr,
              style: LinkjoyMarshaTriplet.bodyLargeBold.copyWith(
                color: LinkjoyAve.textImportant1,
              ),
              textAlign: TextAlign.center,
            ),
            LinkjoyFeynman.v24,
            Obx(
              () => Column(
                children: [
                  _buildGenderOption(
                    1,
                    'linkjoy_caring_unclog'.tr,
                    LinkjoyCondensate.male,
                  ),
                  SizedBox(height: LinkjoyGarage.s16),
                  _buildGenderOption(
                    2,
                    'linkjoy_caring_dolphins'.tr,
                    LinkjoyCondensate.female,
                  ),
                  SizedBox(height: LinkjoyGarage.s32),
                  logic.selectedGender.value < 0
                      ? const SizedBox.shrink()
                      : LinkjoyEllen.circleText(
                          "linkjoy_caring_conceive".tr,
                          logic.onTapNext,
                          fixedWidth: double.infinity,
                          size: LinkjoyBookshelf.lg,
                        ),
                ],
              ),
            ),
            LinkjoyFeynman.v24,
          ],
        ),
      ),
    );
  }

  Widget _buildGenderOption(int gender, String label, Color color) {
    bool isSelected = logic.selectedGender.value == gender;
    Color bgColor = gender == 1 ? Colors.blueAccent : Colors.pink;
    if (!isSelected) {
      bgColor = bgColor.withValues(alpha: 0.3);
    }

    return GestureDetector(
      onTap: () => logic.selectGender(gender),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: LinkjoyGarage.s24,
          vertical: LinkjoyGarage.s20,
        ),
        decoration: isSelected
            ? LinkjoyAve.surfaceImportantDecoration
            : LinkjoyAve.surfaceDecoration,
        child: Row(
          children: [
            _linkjoySon(gender, isSelected, bgColor),
            SizedBox(width: LinkjoyGarage.s12),
            Text(
              label,
              style: isSelected
                  ? LinkjoyMarshaTriplet.bodyLargeBold
                  : LinkjoyMarshaTriplet.bodyBold,
            ),
            const Spacer(),
            Icon(
              isSelected ? Icons.check_circle : Icons.check_circle_outline,
              color: bgColor,
              size: LinkjoyDiscard.iconMedium,
            ),
          ],
        ),
      ),
    );
  }

  Widget _linkjoySon(int gender, bool selected, Color bgColor) {
    IconData icon = gender == 1 ? Icons.male_outlined : Icons.female_outlined;

    return LinkjoyWear.circle(
      icon,
      bgColor: bgColor,
      iconColor: LinkjoyAve.textPrimary,
      size: LinkjoyBookshelf.lg,
    );
  }
}
