import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_direction_kryptonian.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_humidity.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_figure_mandatory_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_figure_saver_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_marsha_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_matey.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_muse/linkjoy_fridge_allow.dart';
import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoyFigureSaverDivision
    extends LinkjoyDivisionAgency<LinkjoyFigureSaverHand> {
  const LinkjoyFigureSaverDivision({super.key});

  @override
  AppBar buildAppBar() {
    return LinkjoyDivisionUI.linkjoyAgencySteamyYam(
      "linkjoy_caring_figure_andrew".tr,
    );
  }

  @override
  Widget buildBody(BuildContext context) {
    return GetBuilder<LinkjoyFigureSaverHand>(
      id: LinkjoyFigureSaverHand.linkjoy_division,
      builder: (logic) {
        if (!logic.hasInit) {
          return const SizedBox.shrink();
        }

        return SingleChildScrollView(
          child: Column(
            children: [
              LinkjoyFeynman.v6,

              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(
                  horizontal: LinkjoyGarage.s16,
                  vertical: LinkjoyGarage.s6,
                ),
                padding: EdgeInsets.symmetric(vertical: LinkjoyGarage.s12),
                decoration: LinkjoyAve.surfaceDecoration,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (logic.info.review)
                      LinkjoyFridgeLightbulb.linkjoyGrape(
                        msg: "linkjoy_caring_foolishly_gel_limbic".tr,
                        marginBottom: LinkjoyGarage.s16,
                      ),
                    GetBuilder<LinkjoyFigureSaverHand>(
                      id: LinkjoyFigureSaverHand.linkjoy_vent,
                      builder: (_) {
                        return _linkjoyUnbornVentNarrate();
                      },
                    ),
                    LinkjoyFeynman.v16,
                    Text(
                      "linkjoy_caring_my_andrew_box".tr,
                      style: LinkjoyMarshaTriplet.bodyLarge,
                    ),
                  ],
                ),
              ),

              _linkjoyMandatoryNarrate(context),

              _linkjoyAndrewNarrate(context),
              LinkjoyFeynman.v72,
            ],
          ),
        );
      },
    );
  }

  Widget _linkjoyMandatoryNarrate(BuildContext context) {
    return Column(
      children: [
        LinkjoyFeynman.v16,
        _linkjoyPanicDivorce(
          Icons.photo_library_outlined,
          "linkjoy_caring_duel".tr,
        ),

        Container(
          margin: EdgeInsets.symmetric(
            horizontal: LinkjoyGarage.s16,
            vertical: LinkjoyGarage.s6,
          ),
          padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s16),
          decoration: LinkjoyAve.surfaceDecoration,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: [
              GetBuilder<LinkjoyFigureSaverHand>(
                id: LinkjoyFigureSaverHand.linkjoy_mandatory,
                builder: (_) {
                  return _linkjoyOughtaMandatorySubjective(
                    "linkjoy_caring_mandatory".tr,
                    logic.albumList.length,
                    logic.albumMax,
                    () {
                      LINKJOY.toNamed(
                        LinkjoyGet.LinkjoyFigureMandatoryDivision,
                        arguments: LinkjoyFigureMandatoryJaw(
                          LinkjoyFigureMandatoryFetus.album,
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Row _linkjoyPanicDivorce(IconData icon, String title) {
    return Row(
      children: [
        LinkjoyFeynman.h16,
        Icon(
          icon,
          color: LinkjoyAve.textImportant1,
          size: LinkjoyDiscard.iconSmall,
        ),
        LinkjoyFeynman.h6,
        Text(title, style: LinkjoyMarshaTriplet.captionThin),
      ],
    );
  }

  Widget _linkjoyAndrewNarrate(BuildContext context) {
    return Column(
      children: [
        LinkjoyFeynman.v16,
        _linkjoyPanicDivorce(
          Icons.person_pin_outlined,
          "linkjoy_caring_andrew".tr,
        ),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: LinkjoyGarage.s16,
            vertical: LinkjoyGarage.s6,
          ),
          padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s16),
          decoration: LinkjoyAve.surfaceDecoration,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min,
            children: [
              GetBuilder<LinkjoyFigureSaverHand>(
                id: LinkjoyFigureSaverHand.linkjoy_lenny,
                builder: (_) {
                  return _linkjoyAndrewSubjectiveNarrate(
                    "linkjoy_caring_charge_lenny".tr,
                    content: logic.info.user.nickName,
                    onTap: () => logic.onLinkjoyLennySilliness(
                      _linkjoyLennyArouseNarrate(),
                    ),
                  );
                },
              ),

              GetBuilder<LinkjoyFigureSaverHand>(
                id: LinkjoyFigureSaverHand.linkjoy_neighbor,
                builder: (_) {
                  return _linkjoyAndrewSubjectiveNarrate(
                    "linkjoy_caring_neighbor".tr,
                    content: logic.info.user.birthday ?? "",
                    onTap: () => logic.linkjoyMarketingInfectionFairness(),
                  );
                },
              ),

              GetBuilder<LinkjoyFigureSaverHand>(
                id: LinkjoyFigureSaverHand.linkjoy_prepare,
                builder: (_) {
                  String heightStr = logic.info.user.height == 0
                      ? ""
                      : " ${logic.info.user.height} "
                            "${'linkjoy_caring_cm'.tr}";
                  return _linkjoyAndrewSubjectiveNarrate(
                    "linkjoy_caring_prepare".tr,
                    content: heightStr,
                    onTap: () => logic.onLinkjoyPrepareSilliness(context),
                  );
                },
              ),

              GetBuilder<LinkjoyFigureSaverHand>(
                id: LinkjoyFigureSaverHand.linkjoy_post,
                builder: (_) {
                  String weightStr = logic.info.user.weight == 0
                      ? ""
                      : " ${logic.info.user.weight} "
                            "${'linkjoy_caring_kg'.tr}";
                  return _linkjoyAndrewSubjectiveNarrate(
                    "linkjoy_caring_post".tr,
                    content: weightStr,
                    onTap: () => logic.onLinkjoyPostSilliness(context),
                  );
                },
              ),

              GetBuilder<LinkjoyFigureSaverHand>(
                id: LinkjoyFigureSaverHand.linkjoy_seasick,
                builder: (_) {
                  return _linkjoyAndrewEagleNarrate(
                    "linkjoy_caring_ten".tr,
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(
                        horizontal: LinkjoyGarage.s12,
                        vertical: LinkjoyGarage.s12,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.black38,
                        borderRadius: BorderRadius.circular(
                          LinkjoyDiscard.radiusLarge,
                        ),
                      ),
                      child: logic.info.user.signature?.isNotEmpty == true
                          ? LinkjoyMarshaSister.linkjoyAlikeNannyMarsha(
                              Text(
                                logic.info.user.signature!,
                                style: LinkjoyMarshaTriplet.bodySecondary,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              180,
                            )
                          : Text(
                              "linkjoy_caring_ten_limbic".tr,
                              style: LinkjoyMarshaTriplet.bodyThird,
                            ),
                    ),
                    onTap: () => logic.onLinkjoySeasickSilliness(
                      _linkjoySeasickArouseNarrate(),
                    ),
                  );
                },
              ),

              GetBuilder<LinkjoyFigureSaverHand>(
                id: LinkjoyFigureSaverHand.linkjoy_humidity,
                builder: (_) {
                  if (LinkjoyGnomeSister.isEmptyList(
                    LINKJOY.linkjoyShock.configs.languages,
                  )) {
                    return Container();
                  }
                  return _linkjoyIssueKudos(
                    "linkjoy_caring_humidity".tr,
                    _linkjoyShockHumidityFridge(),
                    onTap: () => logic.onLinkjoyHumiditySilliness(),
                  );
                },
              ),

              GetBuilder<LinkjoyFigureSaverHand>(
                id: LinkjoyFigureSaverHand.linkjoy_direction,
                builder: (_) {
                  if (LinkjoyGnomeSister.isEmptyList(
                    LINKJOY.linkjoyShock.configs.interests,
                  )) {
                    return Container();
                  }
                  return _linkjoyAndrewEagleNarrate(
                    "linkjoy_caring_direction_headline".tr,
                    _linkjoyShockDirectionFridge() ??
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: LinkjoyGarage.s12,
                            vertical: LinkjoyGarage.s6,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.circular(
                              LinkjoyDiscard.radiusMedium,
                            ),
                          ),
                          child: Text(
                            "linkjoy_caring_direction_headline_limbic".tr,
                            style: LinkjoyMarshaTriplet.bodyThird,
                          ),
                        ),
                    onTap: () => logic.onLinkjoyDirectionSilliness(),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _linkjoyAndrewEagleNarrate(
    String title,
    Widget child, {
    VoidCallback? onTap,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: LinkjoyGarage.s12),
      decoration: _linkjoyJelly(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Text(title, style: LinkjoyMarshaTriplet.bodyLarge),
              const Spacer(),
              _linkjoyMagazineMaze(),
            ],
          ),
          LinkjoyFeynman.v12,
          child,
        ],
      ).clickOld(onTap),
    );
  }

  Widget _linkjoyAndrewSubjectiveNarrate(
    String label, {
    String content = "",
    VoidCallback? onTap,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: LinkjoyGarage.s16),
      decoration: _linkjoyJelly(),
      alignment: AlignmentDirectional.centerStart,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(label, style: LinkjoyMarshaTriplet.bodyLarge),
          const Spacer(),
          LinkjoyMarshaSister.linkjoyAlikeNannyMarsha(
            Text(
              content,
              style: LinkjoyMarshaTriplet.bodySecondary,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            Get.width / 2,
          ),
          LinkjoyFeynman.h4,
          _linkjoyMagazineMaze(),
        ],
      ),
    ).click(onTap);
  }

  BoxDecoration _linkjoyJelly() => const BoxDecoration(
    border: Border(
      bottom: BorderSide(width: 1, color: LinkjoyAve.surfaceLight),
    ),
  );

  Widget _linkjoyIssueKudos(String title, Widget child, {VoidCallback? onTap}) {
    return Container(
      width: Get.width,
      padding: EdgeInsets.symmetric(vertical: LinkjoyGarage.s16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title, style: LinkjoyMarshaTriplet.bodyLarge),
              _linkjoyMagazineMaze(),
            ],
          ),
          LinkjoyFeynman.v12,
          child,
        ],
      ),
    ).click(onTap);
  }

  Widget _linkjoyOughtaMandatorySubjective(
    String name,
    int num,
    int total,
    GestureTapCallback? event,
  ) {
    Color? numColor;
    if (LINKJOY.isLinkjoyFoolishly && num < logic.albumMin) {
      numColor = LinkjoyAve.error;
    }

    return Container(
      padding: EdgeInsets.symmetric(vertical: LinkjoyGarage.s16),
      decoration: _linkjoyJelly(),
      alignment: AlignmentDirectional.centerStart,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(name, style: LinkjoyMarshaTriplet.bodyLarge),
          const Spacer(),
          Text(
            "$num",
            style: LinkjoyMarshaTriplet.bodyLargeBold.copyWith(color: numColor),
          ),
          Text("/$total", style: LinkjoyMarshaTriplet.bodyLargeBold),
          LinkjoyFeynman.h8,
          _linkjoyMagazineMaze(),
        ],
      ),
    ).click(event);
  }

  Icon _linkjoyMagazineMaze() => Icon(
    Icons.arrow_forward_ios,
    color: LinkjoyAve.textSecondary,
    size: LinkjoyDiscard.iconSmall,
  );

  Widget _linkjoyUnbornVentNarrate() {
    String? avatarUrlNow = LINKJOY.linkjoyJog?.user.avatarUrl;
    String? avatarUrl = logic.info.user.avatarUrl;
    int status = 1;
    if (avatarUrlNow != avatarUrl) {
      status = 0;
    }
    return Container(
      width: 120.w,
      height: 120.w,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: LinkjoyDivorced.linkjoyMarshaAgencyInsistence,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          LinkjoyFasten.circle(
            logic.info.user.avatarUrl,
            size: 120.w,
            fit: BoxFit.cover,
            clip: ImageClipType.middle,
          ),
          _linkjoyMandatorySubjectiveNarrateHair(status),
          PositionedDirectional(
            bottom: 0,
            end: 0,
            child: LinkjoyWear.circle(
              Icons.upload_outlined,
              size: LinkjoyBookshelf.sm,
              bgColor: LinkjoyAve.primaryMain,
              iconColor: LinkjoyAve.textPrimary,
            ),
          ),
        ],
      ),
    ).click(() => logic.onLinkjoyVentSilliness());
  }

  Widget _linkjoyMandatorySubjectiveNarrateHair(int status) {
    if (!LINKJOY.isLinkjoyFoolishly) {
      return const SizedBox.shrink();
    }

    if (status == 1) {
      return const SizedBox.shrink();
    }
    return Positioned(
      bottom: LinkjoyGarage.s8,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: LinkjoyGarage.s8,
          vertical: LinkjoyGarage.s4,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
          color: status == 0 ? LinkjoyAve.surface : LinkjoyAve.error,
        ),
        child: Text(
          status == 0
              ? "linkjoy_caring_mandatory_length_trademark".tr
              : "linkjoy_caring_mandatory_length_smoker".tr,
          style: LinkjoyMarshaTriplet.captionNormal,
        ),
      ),
    );
  }

  List<Widget> _linkjoyLennyArouseNarrate() {
    return [
      Text(
        "linkjoy_caring_charge_lenny".tr,
        style: LinkjoyMarshaTriplet.bodyTitle,
      ),
      LinkjoyFeynman.v12,
      Text(
        "linkjoy_caring_charge_lenny_limbic".tr,
        style: LinkjoyMarshaTriplet.captionThin,
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: LinkjoyGarage.s20),
        child: TextField(
          controller: logic.textController,
          focusNode: logic.editFocus,
          decoration: InputDecoration(
            hintText: "linkjoy_caring_charge_lenny".tr,
            hintStyle: LinkjoyMarshaTriplet.bodyThird,
            fillColor: LinkjoyAve.bgDarkDark,
            suffixIcon: IconButton(
              onPressed: () => logic.textController.clear(),
              icon: const Icon(Icons.cancel, color: LinkjoyAve.textThird),
            ),
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusLarge),
              borderSide: BorderSide.none,
            ),
          ),
          buildCounter:
              (context, {currentLength = 0, maxLength, isFocused = false}) =>
                  Text(
                    "$currentLength/$maxLength",
                    style: LinkjoyMarshaTriplet.captionThin,
                    textAlign: TextAlign.end,
                  ),
          maxLength: 15,
          maxLines: 1,
          style: LinkjoyMarshaTriplet.bodyLarge,
        ),
      ),

      LinkjoyEllen.roundText(
        "linkjoy_caring_morgan".tr,
        logic.onLinkjoyLennyMorgan,
        fixedWidth: double.infinity,
      ),
      LinkjoyFeynman.v20,
    ];
  }

  List<Widget> _linkjoySeasickArouseNarrate() {
    return [
      Text("linkjoy_caring_ten".tr, style: LinkjoyMarshaTriplet.bodyTitle),
      LinkjoyFeynman.v12,
      TextField(
        controller: logic.textController,
        focusNode: logic.editFocus,
        decoration: InputDecoration(
          hintText: "linkjoy_caring_ten".tr,
          hintStyle: LinkjoyMarshaTriplet.bodyThird,
          fillColor: LinkjoyAve.bgDarkDark,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusLarge),
            borderSide: BorderSide.none,
          ),
        ),
        maxLength: 100,
        maxLines: 4,
        style: LinkjoyMarshaTriplet.bodyLarge,
        buildCounter:
            (context, {currentLength = 0, maxLength, isFocused = false}) =>
                Text(
                  "$currentLength/$maxLength",
                  style: LinkjoyMarshaTriplet.captionThin,
                ),
      ),

      LinkjoyEllen.roundText(
        "linkjoy_caring_morgan".tr,
        logic.onLinkjoySeasickMorgan,
        fixedWidth: double.infinity,
      ),
      LinkjoyFeynman.v20,
    ];
  }

  Widget _linkjoyShockHumidityFridge() {
    Widget childWidget = Container(height: 20);

    List<LinkjoyFondnessHumidity> languages =
        LINKJOY.linkjoyShock.configs.languages;
    if (LinkjoyGnomeSister.isEmptyList(languages)) return childWidget;

    if (LinkjoyGnomeSister.isEmpty(logic.info.user.languages))
      return childWidget;

    List<LinkjoyFondnessHumidity>? showList = LINKJOY.linkjoyShock
        .getLanguagesByIds(logic.info.user.languages ?? "");

    if (LinkjoyGnomeSister.isEmptyList(showList)) {
      return childWidget;
    }
    return Wrap(
      alignment: WrapAlignment.start,
      spacing: LinkjoyGarage.s10,
      runSpacing: LinkjoyGarage.s10,
      children: List.generate(showList!.length, (index) {
        return Container(
          height: LinkjoyGarage.s32,
          padding: EdgeInsets.symmetric(
            horizontal: LinkjoyGarage.s12,
            vertical: LinkjoyGarage.s8,
          ),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(LinkjoyDiscard.radiusFull),
            ),
            color: Colors.black38,
          ),
          child: Text(
            showList[index].name,
            style: LinkjoyMarshaTriplet.body,
            textAlign: TextAlign.center,
          ),
        );
      }),
    );
  }

  Widget? _linkjoyShockDirectionFridge() {
    List<LinkjoyDirectionKryptonian>? interestList =
        LINKJOY.linkjoyShock.configs.interests;

    if (LinkjoyGnomeSister.isEmptyList(interestList)) return null;

    if (LinkjoyGnomeSister.isEmpty(logic.info.user.tagIds)) return null;

    List<LinkjoyDirectionKryptonian>? showList = LINKJOY.linkjoyShock
        .getInterestsByIds(logic.info.user.tagIds ?? "");

    if (LinkjoyGnomeSister.isEmptyList(showList)) {
      return null;
    }

    return Wrap(
      alignment: WrapAlignment.start,
      spacing: LinkjoyGarage.s10,
      runSpacing: LinkjoyGarage.s10,
      children: List.generate(showList!.length, (index) {
        return Container(
          height: LinkjoyGarage.s32,
          padding: EdgeInsets.symmetric(
            horizontal: LinkjoyGarage.s12,
            vertical: LinkjoyGarage.s8,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
            color: Colors.black38,
          ),
          child: Text(
            showList[index].name.tr,
            style: LinkjoyMarshaTriplet.body,
            textAlign: TextAlign.center,
          ),
        );
      }),
    );
  }
}
