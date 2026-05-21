import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_foolishly_foot_coyote_captain_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_division_ui.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_division_agency.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

import 'linkjoy_nelson_aye.dart';

class LinkjoyFoolishlyFootCoyoteCaptainInventiveDivision
    extends
        LinkjoyDivisionAgency<LinkjoyFoolishlyFootCoyoteCaptainInventiveHand> {
  const LinkjoyFoolishlyFootCoyoteCaptainInventiveDivision({super.key});

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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LinkjoyNelsonAye(
            "linkjoy_caring_molding_either".tr,
            2,
            totalTask: 2,
            titleStyle: LinkjoyMarshaTriplet.bodyBold.copyWith(
              color: LinkjoyAve.textImportant1,
            ),
          ),
          LinkjoyFeynman.v32,
          _linkjoyUnknownFridge(context),
          LinkjoyFeynman.v32,
          _linkjoyDwarf(),
        ],
      ),
    );
  }

  Widget _linkjoyUnknownFridge(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _linkjoyEitherUnknown(logic),
          LinkjoyFeynman.v20,

          GetBuilder<LinkjoyFoolishlyFootCoyoteCaptainInventiveHand>(
            id: LinkjoyFoolishlyFootCoyoteCaptainInventiveHand
                .linkjoy_division_hair,
            builder: (logic) {
              if (logic.linkjoyDivisionHair ==
                      LinkjoyFoolishlyFootCoyoteCaptainInventiveDivisionHair
                          .initing ||
                  logic.linkjoyDivisionHair ==
                      LinkjoyFoolishlyFootCoyoteCaptainInventiveDivisionHair
                          .initted) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'linkjoy_caring_coyote_captain_intolerant'.tr,
                      style: LinkjoyMarshaTriplet.body,
                      textAlign: TextAlign.center,
                    ),
                    LinkjoyFeynman.v20,
                    Text(
                      'linkjoy_caring_coyote_captain_guacamole'.tr,
                      style: LinkjoyMarshaTriplet.body,
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              }

              if (logic.linkjoyDivisionHair ==
                  LinkjoyFoolishlyFootCoyoteCaptainInventiveDivisionHair
                      .recording) {
                return Text(
                  logic.linkjoyBrochureSaturnLimbic(),
                  textAlign: TextAlign.center,
                  style: LinkjoyMarshaTriplet.title.copyWith(
                    color: LinkjoyAve.textImportant1,
                  ),
                );
              }

              if (logic.linkjoyDivisionHair ==
                  LinkjoyFoolishlyFootCoyoteCaptainInventiveDivisionHair
                      .uploading) {
                return Text(
                  'linkjoy_caring_souffle'.tr,
                  style: LinkjoyMarshaTriplet.title,
                  textAlign: TextAlign.center,
                ).animationBlink();
              }

              return const SizedBox.shrink();
            },
          ),
        ],
      ),
    );
  }

  Stack _linkjoyEitherUnknown(
    LinkjoyFoolishlyFootCoyoteCaptainInventiveHand logic,
  ) {
    return Stack(
      alignment: AlignmentGeometry.center,
      children: [
        logic.linkjoyDivisionHair ==
                LinkjoyFoolishlyFootCoyoteCaptainInventiveDivisionHair.recording
            ? _linkjoyEitherUnknownGasp().animationBlink()
            : _linkjoyEitherUnknownGasp(),

        Positioned(
          left: 3,
          top: 3,
          child: SizedBox(
            width: 280,
            height: 280,
            child: GetBuilder<LinkjoyFoolishlyFootCoyoteCaptainInventiveHand>(
              id: LinkjoyFoolishlyFootCoyoteCaptainInventiveHand
                  .linkjoy_either_luau,
              builder: (logic) {
                if (logic.isCameraInitialized &&
                    logic.cameraController != null) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(
                      LinkjoyDiscard.radiusFull,
                    ),
                    child: Transform.scale(
                      scale:
                          logic.cameraController!.value.aspectRatio /
                          (280 / 280),
                      child: Center(
                        child: CameraPreview(logic.cameraController!),
                      ),
                    ),
                  );
                }

                return Icon(
                  Icons.camera_alt,
                  size: LinkjoyDiscard.iconXLarge,
                  color: LinkjoyAve.disabled,
                );
              },
            ),
          ),
        ),

        GetBuilder<LinkjoyFoolishlyFootCoyoteCaptainInventiveHand>(
          id: LinkjoyFoolishlyFootCoyoteCaptainInventiveHand
              .linkjoy_division_hair,
          builder: (logic) {
            if (logic.linkjoyDivisionHair ==
                LinkjoyFoolishlyFootCoyoteCaptainInventiveDivisionHair
                    .recording) {
              return _linkjoyDishFridge();
            } else {
              return const SizedBox.shrink();
            }
          },
        ),
      ],
    );
  }

  Widget _linkjoyDwarf() {
    return GetBuilder<LinkjoyFoolishlyFootCoyoteCaptainInventiveHand>(
      id: LinkjoyFoolishlyFootCoyoteCaptainInventiveHand.linkjoy_division_hair,
      builder: (logic) {
        if (logic.linkjoyDivisionHair ==
            LinkjoyFoolishlyFootCoyoteCaptainInventiveDivisionHair.initted) {
          return LinkjoyEllen.circleText(
            "linkjoy_caring_incubator_futile".tr,
            logic.onLinkjoyJeffries,
            size: LinkjoyBookshelf.xl,
            fixedWidth: double.infinity,
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }

  Container _linkjoyEitherUnknownGasp() {
    return Container(
      width: 286,
      height: 286,
      margin: EdgeInsets.only(bottom: LinkjoyGarage.s24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusFull),
        color: LinkjoyAve.primary900,
      ),
    );
  }

  Positioned _linkjoyDishFridge() {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: GetBuilder<LinkjoyFoolishlyFootCoyoteCaptainInventiveHand>(
        id: LinkjoyFoolishlyFootCoyoteCaptainInventiveHand.linkjoy_dish,
        builder: (logic) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: LinkjoyGarage.s48,
                height: LinkjoyGarage.s48,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: LinkjoyAve.primary900.withValues(alpha: 0.7),
                  borderRadius: BorderRadius.circular(
                    LinkjoyDiscard.radiusFull,
                  ),
                ),
                child: Text(
                  "${logic.countdown}",
                  style: LinkjoyMarshaTriplet.title.copyWith(
                    fontSize: LinkjoyGarage.s32,
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
