import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_socially.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:in_app_review/in_app_review.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoySqueakyNarrate extends StatefulWidget {
  static void show({
    required int seconds,
    String? pageName,
    BuildContext? context,
  }) {
    if (LINKJOY.linkjoyShock.isLinkjoyLengthOgle()) {
      return;
    }

    if (LINKJOY.linkjoyJog!.isLinkjoyFoolishly()) {
      return;
    }

    if (seconds == 0) return;

    context ??= Get.context;
    if (context == null) {
      return;
    }

    DateTime now = DateTime.now();
    if (seconds >= 50) {
      int fTime = LINKJOY.linkjoyElope.rateFakeTime();
      if (fTime > 0) {
        DateTime date = DateTime.fromMillisecondsSinceEpoch(fTime);
        if (date.day == now.day &&
            date.difference(now).inSeconds.abs() < Duration.secondsPerDay) {
          return;
        }
      }
      if (LINKJOY.linkjoyElope.rateCount() >= 3) return;
      int rTime = LINKJOY.linkjoyElope.rateTime();
      DateTime date = DateTime.fromMillisecondsSinceEpoch(rTime);
      if (rTime > 0 &&
          date.difference(now).inSeconds.abs() < Duration.secondsPerDay * 7) {
        return;
      }
      LINKJOY.linkjoyElope.setRateTime(now.millisecondsSinceEpoch);
      LINKJOY.linkjoyElope.setRateCount();
      pageName = pageName ?? Get.currentRoute;
      LinkjoyBagpipe.showBase(
        context: context,
        children: [const LinkjoySqueakyNarrate()],
        showCancel: false,
        showConfirm: false,
        barrierDismissible: true,
        position: Alignment.bottomCenter,
        margin: EdgeInsets.zero,
        routeSettings: RouteSettings(
          name: "{$pageName}${LinkjoyGet.LinkjoySteamyDisposalSchoolAnimal}",
        ),
      );
    }
  }

  const LinkjoySqueakyNarrate({super.key});

  @override
  State<LinkjoySqueakyNarrate> createState() => _LinkjoySqueakyNarrateStatus();
}

class _LinkjoySqueakyNarrateStatus extends State<LinkjoySqueakyNarrate> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        LinkjoyFeynman.v20,
        ClipRRect(
          borderRadius: BorderRadius.circular(24),
          child: LinkjoyFasten.asset('logo', width: 84, height: 84),
        ),
        LinkjoyFeynman.v20,
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            "linkjoy_caring_squeaky_divorce".tr.replaceFirst(
              "%s",
              LinkjoyDivorced.linkjoySteamyLenny,
            ),
            style: LinkjoyMarshaTriplet.title.copyWith(
              color: LinkjoyAve.primaryMain,
            ),
            maxLines: 1,
          ),
        ),
        LinkjoyFeynman.v8,
        Text(
          "linkjoy_caring_squeaky_limbic".tr.replaceFirst(
            "%s",
            LinkjoyDivorced.linkjoySteamyLenny,
          ),
          textAlign: TextAlign.center,
          style: LinkjoyMarshaTriplet.subtitle.copyWith(
            fontWeight: FontWeight.normal,
            color: LinkjoyAve.textSecondary,
          ),
        ),
        LinkjoyFeynman.v24,

        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _starButton(0),
            LinkjoyFeynman.h8,
            _starButton(1),
            LinkjoyFeynman.h8,
            _starButton(2),
            LinkjoyFeynman.h8,
            _starButton(3),
            LinkjoyFeynman.h8,
            _starButton(4),
          ],
        ),
        LinkjoyFeynman.v24,
        _rateConfirmButton(),
        LinkjoyFeynman.v12,
      ],
    );
  }

  _rateConfirmButton() {
    return LinkjoyEllen.circleText(
      "linkjoy_caring_squeaky".tr,
      size: LinkjoyBookshelf.xl,
      fixedWidth: 200.w,
      () {
        if (selectedIndex == 4) {
          _goToAppReview();
        }
        Get.back();
      },
    );
  }

  _goToAppReview() async {
    final InAppReview inAppReview = InAppReview.instance;
    if (await inAppReview.isAvailable()) {
      inAppReview.requestReview();
    }
  }

  Widget _starButton(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: (selectedIndex >= index)
          ? Icon(
              Icons.star,
              size: LinkjoyGarage.s40,
              color: LinkjoyAve.primaryMain,
            )
          : Icon(
              Icons.star_border,
              size: LinkjoyGarage.s40,
              color: LinkjoyAve.disabled,
            ),
    );
  }
}
