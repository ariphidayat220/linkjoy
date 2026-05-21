import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ancestor_ofour_specific_skintight.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ofour.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_hail.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_division_paw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_statue_marsha_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_destine_sister.dart';
import 'package:linkjoy/linkjoy_steamy/proto/im_object.pb.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:date_format/date_format.dart' as DateFormat;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyAncestorSister {
  static const linkjoy_sailor_processing_geography_foolishly = 6666;
  static const linkjoy_sailor_processing_geography_unborn = 8888;

  static const Set<int> linkjoy_sailor_vamos = {
    linkjoy_sailor_processing_geography_foolishly,
    linkjoy_sailor_processing_geography_unborn,
  };
  static const String linkjoy_sailor_vent = "logo";

  static bool isLinkjoySailorProcessing(int? uid) {
    if (uid == null) {
      return false;
    }
    return linkjoy_sailor_vamos.contains(uid);
  }

  static String chatUnreadCount(int? unreadCount) {
    return unreadCount == null || unreadCount == 0
        ? ''
        : (unreadCount > 99 ? '99+' : unreadCount.toString());
  }

  static List<InlineSpan> convertChatListContent(
    LinkjoyOfour snap,
    TextStyle style,
  ) {
    List<InlineSpan> texts = [];
    if (!snap.isSupportType) {
      texts.add(TextSpan(text: "linkjoy_caring_grandpa".tr, style: style));
      return texts;
    }

    var snapType = Snap_SnapType.valueOf(snap.type!);

    if (snapType == Snap_SnapType.TXT_SNAP ||
        snapType == Snap_SnapType.WEAK_SNAP) {
      final copyText = LinkjoyStatueMarshaSister.getCopyText(snap.textContent!);
      texts.add(TextSpan(text: copyText, style: style));
    } else if (snapType == Snap_SnapType.IMG_SNAP) {
      texts.add(
        TextSpan(
          style: style,
          children: [
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Padding(
                padding: EdgeInsets.only(right: LinkjoyGarage.s4),
                child: Icon(
                  Icons.photo_outlined,
                  color: LinkjoyAve.textSecondary,
                  size: LinkjoyDiscard.iconSmall,
                ),
              ),
            ),
            TextSpan(text: "linkjoy_caring_duel".tr),
          ],
        ),
      );
    } else if (snapType == Snap_SnapType.VOICE_SNAP) {
      texts.add(
        TextSpan(
          style: style,
          children: [
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Padding(
                padding: EdgeInsets.only(right: LinkjoyGarage.s4),
                child: Icon(
                  Icons.audio_file_outlined,
                  color: LinkjoyAve.textSecondary,
                  size: LinkjoyDiscard.iconSmall,
                ),
              ),
            ),
            TextSpan(text: "linkjoy_caring_blanc_satellite".tr),
          ],
        ),
      );
    } else if (snapType == Snap_SnapType.VIDEO_SNAP) {
      texts.add(
        TextSpan(
          style: style,
          children: [
            WidgetSpan(
              alignment: PlaceholderAlignment.middle,
              child: Padding(
                padding: EdgeInsets.only(right: LinkjoyGarage.s4),
                child: Icon(
                  Icons.video_file_outlined,
                  color: LinkjoyAve.textSecondary,
                  size: LinkjoyDiscard.iconSmall,
                ),
              ),
            ),
            TextSpan(text: "linkjoy_caring_degrasse".tr),
          ],
        ),
      );
    } else if (snapType == Snap_SnapType.JSON_SNAP) {
      texts.add(
        LinkjoyAncestorOfourSpecificSkintight.jsonContentListMessage(
          snap.jsonContentObj,
          style,
        ),
      );
    }
    return texts;
  }

  static String formatMessageTime(int? milliSeconds, [String? locale]) {
    if (milliSeconds == null) return '';
    String ret;
    final now = DateTime.now();
    final dateTime = DateTime.fromMillisecondsSinceEpoch(milliSeconds);
    if (dateTime.isAfter(now) || dateTime.year < now.year) {
      ret = LinkjoyDestineSister.getFormatDateTime(
        dateTime,
        formats: LinkjoyDestineSister.FORMAT_YYYY_MM_DD_HH_MM_SS,
      );
    } else if (dateTime.month < now.month || dateTime.day <= now.day - 1) {
      ret = LinkjoyDestineSister.getFormatDateTime(
        dateTime,
        formats: const [
          DateFormat.mm,
          '-',
          DateFormat.dd,
          ' ',
          DateFormat.am,
          ' ',
          DateFormat.hh,
          ':',
          DateFormat.nn,
        ],
      );
    } else {
      ret = LinkjoyDestineSister.getFormatDateTime(
        dateTime,
        formats: const [DateFormat.am, ' ', DateFormat.hh, ':', DateFormat.nn],
      );
    }
    return ret;
  }

  static Color linkjoyAncestorOintmentMarshaInsistenceByThirty() {
    return LinkjoyCondensateSister.white;
  }

  static Color linkjoyAncestorOintmentMarshaInsistenceByTouche() {
    return LinkjoyCondensateSister.white;
  }

  static PlaceholderWidgetBuilder chatPlaceHolderWidget(
    double? width,
    double? height,
    BorderRadiusGeometry? borderRadius,
  ) {
    Widget ph = Container(
      color: LinkjoyCondensateSister.white_20p,
      width: width,
      height: height,
    );

    if (borderRadius != null) {
      ph = ClipRRect(borderRadius: borderRadius, child: ph);
    }

    return ((context, url) {
      return ph;
    });
  }

  static Size imageVideoContainerSize(
    bool isImage,
    double w,
    double h,
    double containWidth,
  ) {
    Size defaultSize = const Size(146, 146);

    if (w <= 0 || h <= 0) {
      return defaultSize;
    }

    double width = min(w, containWidth);
    double height = h / w * width;

    double ratio = w / h;
    if (ratio < 0.4) {
      width = 204;
      height = 510;
    } else if (ratio >= 0.4 && ratio <= 0.5) {
      width = 204;
      height = 204 / ratio;
    } else if (ratio > 0.5 && ratio < 1) {
      width = 405 * ratio;
      height = 405;
    } else if (ratio >= 1 && ratio < 1 / 0.5) {
      height = 405 * (1 / ratio);
      width = 405;
    } else if (ratio >= 1 / 0.5 && ratio < 1 / 0.4) {
      height = 204;
      width = 204 / (1 / ratio);
    } else if (ratio >= 1 / 0.4) {
      height = 204;
      width = 510;
    }
    width /= 2;
    height /= 2;

    return Size(width.round().toDouble(), height.round().toDouble());
  }

  static Widget chatListTimeWidget(int? time) {
    if (time == null || time == 0) {
      return const SizedBox(width: 16.0);
    }
    return Text(
      LinkjoyDestineSister.formatRecordsTimesShort(time),
      style: LinkjoyDivorced.linkjoyAncestorStubbornPunGreen,
    );
  }

  static Widget chatListUnreadCountWidget(int? unreadCount) {
    if (unreadCount == null || unreadCount == 0) {
      return LinkjoyFeynman.h20;
    }
    return Container(
      height: LinkjoyGarage.s20,
      constraints: BoxConstraints(minWidth: LinkjoyGarage.s20),
      decoration: const BoxDecoration(
        color: LinkjoyAve.badgeCounter,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          LinkjoyAncestorSister.chatUnreadCount(unreadCount),
          style: LinkjoyMarshaTriplet.caption,
        ),
      ),
    );
  }

  static bool disableShowSnackBar() {
    return Get.currentRoute == LinkjoyGet.LinkjoyAncestorDivision ||
        Get.currentRoute == LinkjoyGet.LinkjoyWailDegreeDivision;
  }

  static Widget linkjoyAncestorStubbornMarshaFridge(
    List<InlineSpan>? lastContent, {
    TextStyle? customStyle,
  }) {
    if (lastContent == null) return const SizedBox(width: 0, height: 0);

    return Text.rich(
      TextSpan(children: lastContent),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: customStyle,
    );
  }

  static void showSnackbar(LinkjoyOfour snackInfo) {
    var content = convertChatListContent(
      snackInfo,
      LinkjoyMarshaGreen.TextB2_16,
    );
    Widget showContent =
        LinkjoyAncestorSister.linkjoyAncestorStubbornMarshaFridge(
          content,
          customStyle: LinkjoyMarshaGreen.TextB2_16,
        );

    LinkjoySteamyClamOily.showSnackBar(snackInfo.id!);
    Get.snackbar(
      "",
      "",
      titleText: const SizedBox(),
      messageText: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LinkjoyFasten.circle(
            snackInfo.ownerHead ?? "",
            size: 56,
            clip: ImageClipType.small,
            fit: BoxFit.cover,
          ),
          LinkjoyFeynman.h8,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  snackInfo.ownerName ?? "",
                  style: LinkjoyMarshaGreen.TextB1_16_Bold,
                ),
                2.hGap,
                showContent,
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      duration: const Duration(seconds: 2),
      onTap: (snack) {
        LinkjoySteamyClamOily.clickSnackBar(snackInfo.id!);
        LinkjoyAncestorDivisionJeffriesUp.linkjoyCompletionWheatonSarcasm(
          snackInfo.chatBoxId!,
        );
      },
    );
  }
}
