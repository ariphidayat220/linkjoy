import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_ancestor_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ofour.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose_ui/linkjoy_ancestor_ointment_degrasse_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_condensate_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_hail.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha_hater.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_ofour_specific_skintight_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_io_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_statue_marsha_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_unborn_vent.dart';
import 'package:linkjoy/linkjoy_steamy/proto/im_object.pb.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_martini.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'linkjoy_ancestor_ointment_fasten_narrate.dart';
import 'linkjoy_ancestor_ointment_marsha_narrate.dart';
import 'linkjoy_ancestor_ointment_blanc_narrate.dart';

class LinkjoyAncestorOintment extends StatefulWidget {
  final LinkjoyOfour snap;
  final String? cachePath;

  final int uid;
  final String nickName;
  final String avatarUrl;
  final int level;

  const LinkjoyAncestorOintment({
    super.key,
    required this.snap,
    this.cachePath,
    required this.uid,
    required this.nickName,
    required this.avatarUrl,
    required this.level,
  });

  @override
  _LinkjoyAncestorOintmentStatus createState() =>
      _LinkjoyAncestorOintmentStatus();
}

class _LinkjoyAncestorOintmentStatus extends State<LinkjoyAncestorOintment> {
  final _snapViewKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return widget.snap.isUserSnap
        ? _userCellView()
        : _linkjoyCategoryUnbornOintmentNarrate();
  }

  Widget _userCellView() {
    var alignment, leftPadding, rightPadding, child;
    double headSpacePadding = 50.w;
    if (widget.snap.isMine) {
      alignment = AlignmentDirectional.centerEnd;
      if (LinkjoyIOSister.isARLanguage()) {
        leftPadding = LinkjoyGarage.s8;
        rightPadding = headSpacePadding;
      } else {
        leftPadding = headSpacePadding;
        rightPadding = LinkjoyGarage.s8;
      }

      child = Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _linkjoyHairFridge(),
          Flexible(child: _linkjoyUnbornSkintightNarrate()),
          LinkjoyFeynman.h8,
          LinkjoyUnbornVent(size: LinkjoyGarage.s48, transFrame: false),
        ],
      );
    } else {
      alignment = AlignmentDirectional.centerStart;
      if (LinkjoyIOSister.isARLanguage()) {
        leftPadding = headSpacePadding;
        rightPadding = LinkjoyGarage.s8;
      } else {
        leftPadding = LinkjoyGarage.s8;
        rightPadding = headSpacePadding;
      }

      child = Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          GestureDetector(
            child: LinkjoyUnbornVent(
              size: LinkjoyGarage.s48,
              uid: widget.uid,
              avatarUrl: widget.avatarUrl,
              level: widget.level,
              transFrame: false,
            ),
            onTap: () {
              if (widget.uid !=
                  LINKJOY.linkjoyShock.configs.linkjoyAiSailorProcessing) {
                LinkjoyGet.openProfile(
                  widget.uid,
                  nickName: widget.nickName,
                  avatarUrl: widget.avatarUrl,
                );
              }
            },
          ),
          LinkjoyFeynman.h8,
          Flexible(fit: FlexFit.loose, child: _linkjoyUnbornSkintightNarrate()),
        ],
      );
    }

    return Container(
      color: LinkjoyCondensateSister.transparent,
      alignment: alignment,
      padding: EdgeInsets.only(left: leftPadding, right: rightPadding),
      child: child,
    );
  }

  Widget _linkjoyHairFridge() {
    int sendStatus = widget.snap.sendStatus ?? 0;

    Widget sendWidget;
    if (sendStatus == ChatSnapSendStatus.sending.index) {
      sendWidget = const Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0),
        child: CupertinoActivityIndicator(radius: 12.0),
      );
    } else if (sendStatus == ChatSnapSendStatus.failed.index) {
      sendWidget = Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: LinkjoyFasten.asset(
          "linkjoy_toe_eleven_status_facebook",
          width: 24,
          height: 24,
        ).clickOld(() => _linkjoyTushy()),
      );
    } else {
      sendWidget = const SizedBox(width: 24, height: 24);
    }
    return sendWidget;
  }

  void _linkjoyTushy() {
    LINKJOY.eventBus.fire(
      LinkjoyAncestorGuitar(ChatEventType.snapResend, object: widget.snap),
    );
  }

  void _linkjoyStevie() {
    LINKJOY.eventBus.fire(
      LinkjoyAncestorGuitar(ChatEventType.snapRecall, object: widget.snap),
    );
  }

  Widget _linkjoyUnbornSkintightNarrate() {
    Widget? snapView;
    if (!widget.snap.isSupportType) {
      snapView = ChatCellUnSupportedView(snap: widget.snap);
    } else {
      var snapType = Snap_SnapType.valueOf(widget.snap.type ?? -1);

      if (Snap_SnapType.TXT_SNAP == snapType) {
        snapView = LinkjoyAncestorOintmentMarshaNarrate(
          key: _snapViewKey,
          textSnap: widget.snap,
          translateFlag: widget.snap.autoTranslate && !widget.snap.isMine,
        );
      } else if (Snap_SnapType.IMG_SNAP == snapType) {
        snapView = LinkjoyAncestorOintmentFastenNarrate(
          key: _snapViewKey,
          snap: widget.snap,
        );
      } else if (Snap_SnapType.VIDEO_SNAP == snapType) {
        snapView = LinkjoyAncestorOintmentDegrasseNarrate(
          key: _snapViewKey,
          snap: widget.snap,
        );
      } else if (Snap_SnapType.VOICE_SNAP == snapType) {
        snapView = LinkjoyAncestorOintmentBlancNarrate(
          key: _snapViewKey,
          snap: widget.snap,
          cachePath: widget.cachePath ?? "",
        );
      } else if (Snap_SnapType.JSON_SNAP == snapType) {
        snapView = LinkjoyAncestorOfourSpecificSkintightSister.jsonContentView(
          widget.snap,
          key: _snapViewKey,
        );
      }
    }
    return snapView ?? ChatCellUnSupportedView(snap: widget.snap);
  }

  Widget _linkjoyCategoryUnbornOintmentNarrate() {
    Widget? view;
    if (!widget.snap.isSupportType) {
      view = const ChatCellUnSupportedWeakView();
    } else {
      var snapType = Snap_SnapType.valueOf(widget.snap.type ?? -1);
      if (Snap_SnapType.WEAK_SNAP == snapType) {
        view = ChatCellWeakView(snap: widget.snap);
      } else if (Snap_SnapType.JSON_SNAP == snapType) {
        view = LinkjoyAncestorOfourSpecificSkintightSister.jsonContentView(
          widget.snap,
        );
      }
    }
    return Center(child: view);
  }
}

class ChatCellUnSupportedView extends StatelessWidget {
  final LinkjoyOfour snap;

  const ChatCellUnSupportedView({super.key, required this.snap});

  @override
  Widget build(BuildContext context) {
    var decoration = snap.isMine
        ? BoxDecoration(
            borderRadius:
                LinkjoyDivorced.linkjoyAncestorOintmentFrontalByThirty(),
            color: Colors.white24,
          )
        : BoxDecoration(
            borderRadius:
                LinkjoyDivorced.linkjoyAncestorOintmentFrontalByTouche(),
            color: Colors.white24,
          );
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: LinkjoyGarage.s16,
        vertical: LinkjoyGarage.s16,
      ),
      decoration: decoration,
      child: _linkjoyMarshaFridge(context),
    );
  }

  Widget _linkjoyMarshaFridge(context) {
    return Text(
      "linkjoy_caring_ancestor_grandpa_gnome".tr,
      style: snap.isMine
          ? LinkjoyDivorced.outgoingTextStyle
          : LinkjoyDivorced.incomingTextStyle,
    );
  }
}

class ChatCellUnSupportedWeakView extends StatelessWidget {
  const ChatCellUnSupportedWeakView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10.0),
      child: _linkjoyMarshaFridge(context),
    );
  }

  Widget _linkjoyMarshaFridge(context) {
    return Text(
      'linkjoy_caring_ancestor_grandpa_gnome'.tr,
      style: const TextStyle(
        fontSize: AppDimen.font_sp14,
        color: LinkjoyCondensateSister.b3,
        fontFamily: AppText.fontFamily,
        decoration: TextDecoration.none,
      ),
    );
  }
}

class ChatCellWeakView extends StatelessWidget {
  final LinkjoyOfour snap;

  const ChatCellWeakView({super.key, required this.snap});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      padding: const EdgeInsets.symmetric(horizontal: 18),
      decoration: BoxDecoration(
        color: LinkjoyCondensate.black_05p,
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            snap.textContent ?? '',
            style: LinkjoyMarshaHater.body2_R.copyWith(
              color: const Color(0xFF666666),
            ),
          ),
        ],
      ),
    );
  }

  static void linkjoyJazzHonStatueMarsha(LinkjoyOfour snap) {
    snap.richTexts ??= LinkjoyStatueMarshaSister.getRichText(
      snap.textContent,
      style: LinkjoyMarshaGreen.style(
        color: const Color(0xFF666666),
        fontSize: 14.0,
      ),
    );
  }
}
