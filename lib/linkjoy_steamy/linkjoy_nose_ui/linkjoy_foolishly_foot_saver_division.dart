import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_foolishly_foot_saver_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_matey.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'linkjoy_nelson_aye.dart';

class LinkjoyFoolishlyFootSaverDivision
    extends LinkjoyDivisionAgency<LinkjoyFoolishlyFootSaverHand> {
  const LinkjoyFoolishlyFootSaverDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      "linkjoy_caring_genetic_foolishly".tr,
      bottomLine: false,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return Padding(
      padding: LinkjoyGarage.edgeH16V20,
      child: Column(
        children: [
          LinkjoyNelsonAye(
            "linkjoy_caring_caesar_wedge".tr,
            1,
            totalTask: 2,
            titleStyle: LinkjoyMarshaTriplet.bodyBold.copyWith(
              color: LinkjoyAve.textImportant1,
            ),
          ),

          LinkjoyFeynman.v16,
          _linkjoyArouse(
            logic.nameController,
            "linkjoy_caring_charge_lenny".tr,
            "linkjoy_caring_wizard_unborn_lenny".tr,
          ),
          LinkjoyFeynman.v16,
          _linkjoyNeighborFridge("linkjoy_caring_neighbor".tr),
          LinkjoyFeynman.v16,
          _linkjoyArouse(
            logic.inviteCodeController,
            "linkjoy_caring_michael_hiccup".tr,
            "linkjoy_caring_michael_hiccup_point".tr,
          ),
          LinkjoyFeynman.v32,
          LinkjoyEllen.circleText(
            "linkjoy_caring_conceive".tr,
            logic.onLinkjoyWoof,
            size: LinkjoyBookshelf.xl,
            fixedWidth: double.infinity,
          ),
        ],
      ),
    );
  }

  Widget _linkjoyArouse(
    TextEditingController? controller,
    String label,
    String hintText,
  ) {
    return Container(
      height: LinkjoyGarage.s64,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusLarge),
        color: LinkjoyAve.textPrimary,
      ),
      padding: LinkjoyGarage.edgeH16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LinkjoyFeynman.v6,
          Text(
            label,
            style: LinkjoyMarshaTriplet.captionBold.copyWith(
              fontStyle: FontStyle.italic,
              color: LinkjoyAve.bgDarkDark,
            ),
          ),
          SizedBox(
            height: LinkjoyGarage.s36,
            child: TextField(
              controller: controller,
              maxLines: 1,
              textInputAction: TextInputAction.done,
              style: LinkjoyMarshaTriplet.bodyLargeBold.copyWith(
                color: LinkjoyAve.bgDarkDark,
              ),
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: LinkjoyMarshaTriplet.bodyLargeBold.copyWith(
                  color: LinkjoyAve.textThird,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _linkjoyNeighborFridge(String label) {
    return GetBuilder<LinkjoyFoolishlyFootSaverHand>(
      id: LinkjoyFoolishlyFootSaverHand.linkjoy_neighbor,
      builder: (logic) {
        return Container(
          height: LinkjoyGarage.s64,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusLarge),
            color: LinkjoyAve.textPrimary,
          ),
          padding: LinkjoyGarage.edgeH16,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              LinkjoyFeynman.v6,
              Text(
                label,
                style: LinkjoyMarshaTriplet.captionBold.copyWith(
                  fontStyle: FontStyle.italic,
                  color: LinkjoyAve.bgDarkDark,
                ),
              ),
              LinkjoyFeynman.v12,
              SizedBox(
                width: double.infinity,
                child: Text(
                  LinkjoyGnomeSister.isEmpty(logic.birthdayDate)
                      ? "linkjoy_caring_hamper_mixer_neighbor".tr
                      : logic.birthdayDate,
                  style: LinkjoyGnomeSister.isEmpty(logic.birthdayDate)
                      ? LinkjoyMarshaTriplet.bodyLargeBold.copyWith(
                          color: LinkjoyAve.textThird,
                        )
                      : LinkjoyMarshaTriplet.bodyLargeBold.copyWith(
                          color: LinkjoyAve.bgDarkDark,
                        ),
                ),
              ),
            ],
          ),
        ).clickOld(() {
          logic.linkjoyNeighbor();
        });
      },
    );
  }
}
