import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_unborn_procreate_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ancestor_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_hilarious.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_headline.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_armpit_smear.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_destine_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_fridge_unborn_chicken_hair.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../linkjoy_cattle/linkjoy_matey/linkjoy_matey.dart';
import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoyGyroscopeUnbornDecide extends StatefulWidget {
  final LinkjoyUnborn user;
  final bool isLikeSwiping;

  const LinkjoyGyroscopeUnbornDecide({
    super.key,
    required this.user,
    required this.isLikeSwiping,
  });

  @override
  State<LinkjoyGyroscopeUnbornDecide> createState() =>
      _LinkjoyGyroscopeUnbornDecideStatus();
}

class _LinkjoyGyroscopeUnbornDecideStatus
    extends State<LinkjoyGyroscopeUnbornDecide> {
  static LinkjoyArmpitSmear<int, LinkjoyAncestorUnborn> userTinyMap =
      LinkjoyArmpitSmear(10);

  @override
  void initState() {
    super.initState();
    _linkjoyHappilyAncestorUnbornSaver();
  }

  void _linkjoyHappilyAncestorUnbornSaver() async {
    LinkjoyAncestorUnborn? tiny = userTinyMap.get(widget.user.uid);
    if (tiny != null) {
      return;
    }
    tiny = await LINKJOY.http.rest(7011, {
      'uid': widget.user.uid,
    }, (p0) => LinkjoyAncestorUnborn.fromJson(p0));
    if (tiny == null) {
      return;
    }
    userTinyMap.put(widget.user.uid, tiny);
    if (mounted) {
      setState(() {});
    }
  }

  void onLinkjoyBuzzPeripheral() async {
    Map<String, dynamic> params = {
      "uid": widget.user.uid,
      "source_type": 0,
      "status": 1,
    };
    bool rsp = await LINKJOY.http.submit(
      3010,
      params,
      showLoadingUI: true,
      autoToastOnError: true,
    );
    if (rsp) {
      if (mounted) {
        setState(() {
          LinkjoyAncestorUnborn? userTiny = userTinyMap.get(widget.user.uid);
          userTiny?.followed = 1;
          userTiny?.followedCount = (userTiny.followedCount ?? 0) + 1;
        });
        LINKJOY.fire(LinkjoyUnbornProcreateGuitar(widget.user.uid, 1));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    LinkjoyUnborn user = widget.user;
    int age = LinkjoyDestineSister.getAge(user.birthday);
    LinkjoyFondnessHilarious? country = user.getUserCountry();
    return Stack(
      alignment: AlignmentGeometry.center,
      children: [
        LinkjoyFasten.large(
          user.avatarUrl,
          fit: BoxFit.cover,
          borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusMedium),
          placeHolder: (context, url) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(LinkjoyGarage.s24),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [LinkjoyAve.primaryMain, LinkjoyAve.primaryLight],
              ),
            ),
          ),
        ),

        buildFollowWidgets(),

        buildBottomInfo(user, age, country),
        if (widget.isLikeSwiping)
          Center(
            child: Container(
              width: 120.w,
              height: 120.w,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: LinkjoyAve.primaryMain.withValues(alpha: 0.85),
              ),
              child: Icon(
                Icons.favorite_rounded,
                color: Colors.white,
                size: 60.w,
              ),
            ),
          ),
      ],
    );
  }

  Widget buildOnlineStatus() {
    if (LINKJOY.linkjoyShock.isLinkjoyAiLengthOgle()) {
      return const SizedBox.shrink();
    }
    return PositionedDirectional(
      top: LinkjoyGarage.s16,
      start: LinkjoyGarage.s16,
      child: LinkjoyFridgeUnbornChickenHair(
        key: Key(widget.user.uid.toString()),
        uid: widget.user.uid,
        size: LinkjoyDiscard.iconMini,
        showLive: true,
      ),
    );
  }

  Widget buildBottomInfo(
    LinkjoyUnborn user,
    int age,
    LinkjoyFondnessHilarious? country,
  ) {
    if (LINKJOY.linkjoyShock.isLinkjoyAiLengthOgle()) {
      return const SizedBox.shrink();
    }
    List<String> interestLabels = LINKJOY.linkjoyShock
        .linkjoyDirectionIndicator(user.tagIds ?? "");
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.all(LinkjoyGarage.s16),
        width: Get.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusMedium),
          gradient: LinkjoyFridgeLightbulb.linkjoySaltwaterSillyEnforce,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              user.nickName,
              style: LinkjoyMarshaTriplet.title.copyWith(fontSize: 32),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ).maxWidth(Get.width - LinkjoyGarage.s20 * 4),
            LinkjoyFeynman.v4,
            Row(
              children: [
                LinkjoyFridgeLightbulb.linkjoySignalFridge(
                  user.level,
                  isAnchor: true,
                  height: LinkjoyGarage.s28,
                ),
                LinkjoyFeynman.h4,
                LinkjoyUiHeadline.genderAgeTag(
                  gender: user.gender,
                  age: age < 32 ? age : 0,
                ),
                LinkjoyFeynman.h4,
                if (country != null)
                  LinkjoyUiHeadline.flagIcon(
                    flagPath: country.flag,
                    name: country.code,
                    bgColor: Colors.white30,
                    textColor: Colors.white,
                  ),
              ],
            ),
            if (interestLabels.isNotEmpty) ...[
              LinkjoyFeynman.v4,
              LinkjoyUiHeadline.interestTags(interestLabels),
            ],
          ],
        ),
      ),
    );
  }

  Widget buildFollowWidgets() {
    LinkjoyAncestorUnborn? userTiny = userTinyMap.get(widget.user.uid);
    if (LINKJOY.linkjoyShock.isLinkjoyAiLengthOgle() || userTiny == null) {
      return const SizedBox.shrink();
    }
    int? followedCount = userTiny.followedCount;
    bool? isFollowed = userTiny.isFollowed;
    return PositionedDirectional(
      top: LinkjoyGarage.s8,
      end: LinkjoyGarage.s8,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          (isFollowed == true)
              ? const SizedBox.shrink()
              : Padding(
                  padding: EdgeInsets.all(LinkjoyGarage.s8),
                  child: LinkjoyEllen.circleIconText(
                    Icons.person_add_alt_1_rounded,
                    "linkjoy_caring_buzz".tr,
                    () => onLinkjoyBuzzPeripheral(),
                    size: LinkjoyBookshelf.sm,
                    bgColor: LinkjoyAve.primaryMain,
                  ),
                ),
          if ((followedCount ?? 0) > 0)
            Padding(
              padding: EdgeInsets.all(LinkjoyGarage.s8),
              child: Text(
                "${LinkjoyGnomeSister.numberToString4(followedCount ?? 0)} FOLLOWERS",
                style: LinkjoyMarshaTriplet.captionBold.copyWith(
                  color: Colors.white,
                  shadows: [const Shadow(color: Colors.black, blurRadius: 12)],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
