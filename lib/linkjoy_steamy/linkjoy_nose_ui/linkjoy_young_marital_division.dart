import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_young_marital_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_muse/linkjoy_fridge_allow.dart';
import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoyYoungMaritalDivision
    extends LinkjoyDivisionAgency<LinkjoyYoungMaritalHand> {
  LinkjoyYoungMaritalDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      "linkjoy_caring_young_by_marital".tr,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.only(
          left: LinkjoyGarage.s24,
          right: LinkjoyGarage.s24,
          bottom: LinkjoyGarage.s40,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LinkjoyFeynman.v32,
            ...linkjoyTuckWireless(),
            LinkjoyFeynman.v20,
            _linkjoyOughtaPameron(),
          ],
        ),
      ),
    );
  }

  List<Widget> linkjoyTuckWireless() {
    return [
      _input(
        logic.nameController,
        "linkjoy_caring_cabinet".tr,
        "linkjoy_caring_young_sober_point_lenny".tr,
        false,
      ),
      LinkjoyFeynman.v16,
      _input(
        logic.passController,
        "linkjoy_caring_stereotype".tr,
        "linkjoy_caring_young_sober_point_glory".tr,
        true,
      ),
      LinkjoyFeynman.v16,
      LinkjoyEllen.circleText(
        "linkjoy_caring_young_sober_dwarf_young".tr,
        logic.onLogin,
        fixedWidth: double.infinity,
        size: LinkjoyBookshelf.xl,
      ),
    ];
  }

  Widget _input(
    TextEditingController? controller,
    String title,
    String hintText,
    bool isPsd,
  ) {
    return Container(
      height: LinkjoyGarage.s64,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusLarge),
        color: LinkjoyAve.textPrimary,
      ),
      padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          LinkjoyFeynman.v8,
          Text(
            title,
            style: LinkjoyMarshaTriplet.captionBold.copyWith(
              fontStyle: FontStyle.italic,
              color: LinkjoyAve.bgDarkDark,
            ),
          ),
          GetBuilder<LinkjoyYoungMaritalHand>(
            id: LinkjoyYoungMaritalHand.linkjoy_stereotype,
            builder: (logic) {
              Widget suffixIcon;
              if (isPsd) {
                suffixIcon = Icon(
                  logic.showPassword
                      ? Icons.visibility
                      : Icons.visibility_off_outlined,
                  size: LinkjoyDiscard.iconMedium,
                  color: LinkjoyAve.textThird,
                ).click(logic.changePsdMode);
              } else {
                suffixIcon = SizedBox(
                  width: LinkjoyDiscard.iconMini,
                  height: LinkjoyDiscard.iconMini,
                );
              }

              return SizedBox(
                height: LinkjoyGarage.s36,
                child: TextField(
                  controller: controller,
                  maxLines: 1,
                  obscureText: isPsd && !logic.showPassword,
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
                    suffixIcon: suffixIcon,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _linkjoyOughtaPameron() {
    return Center(
      child: Text.rich(
        TextSpan(
          children: [
            TextSpan(
              text: "linkjoy_caring_young_wildfire".tr,
              style: LinkjoyMarshaTriplet.bodySecondary,
            ),
            const TextSpan(text: '\n'),
            TextSpan(
              text: ' ${"linkjoy_caring_unborn_pameron".tr} ',
              style: LinkjoyMarshaTriplet.bodyImportant,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  LINKJOY.goto(LinkjoyDivorced.linkjoyBicycleUnbornPameron);
                },
            ),
            TextSpan(
              text: "linkjoy_caring_scratcher".tr,
              style: LinkjoyMarshaTriplet.bodySecondary,
            ),
            TextSpan(
              text: ' ${"linkjoy_caring_fruit_pameron".tr}',
              style: LinkjoyMarshaTriplet.bodyImportant,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  LINKJOY.goto(LinkjoyDivorced.linkjoyBicycleFruitCard);
                },
            ),
          ],
        ),
      ),
    );
  }
}
