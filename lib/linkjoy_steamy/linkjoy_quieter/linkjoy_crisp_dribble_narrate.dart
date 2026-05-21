import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_flashy_silliness.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_suspend.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_dance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_ache_fridge.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LinkjoyCrispDribbleFondness {
  final VoGift gift;
  final String? userName;
  final String? userAvatar;
  final int? begId;

  final LinkjoyFlashySilliness? giftAction;

  LinkjoyCrispDribbleFondness(
    this.gift, {
    this.userName,
    this.userAvatar,
    this.begId,
    this.giftAction,
  });

  bool hasUserInfo() {
    return userName != null &&
        userAvatar != null &&
        userName!.isNotEmpty &&
        userAvatar!.isNotEmpty;
  }

  bool begGift() {
    return begId != null;
  }
}

class LinkjoyCrispDribbleMario {
  Function(int?)? onGiftIdUpdate;

  Function(VoGift, int)? onSendBegGift;
  Function(LinkjoyCrispDribbleFondness)? _add;

  LinkjoyCrispDribbleMario({this.onGiftIdUpdate, this.onSendBegGift});

  void add(
    VoGift gift, {
    String? userName,
    String? userAvatar,
    int? begId,
    LinkjoyFlashySilliness? giftAction,
  }) {
    LinkjoyCrispDribbleFondness m = LinkjoyCrispDribbleFondness(
      gift,
      userName: userName,
      userAvatar: userAvatar,
      begId: begId,
      giftAction: giftAction,
    );
    _add?.call(m);
  }

  void dispose() {}
}

class LinkjoyCrispDribbleNarrate extends StatefulWidget {
  final LinkjoyCrispDribbleMario controller;
  final double? feedBottom;

  const LinkjoyCrispDribbleNarrate({
    required this.controller,
    this.feedBottom,
    super.key,
  });

  @override
  LinkjoyCrispDribbleNarrateStatus createState() =>
      LinkjoyCrispDribbleNarrateStatus();
}

class LinkjoyCrispDribbleNarrateStatus
    extends State<LinkjoyCrispDribbleNarrate> {
  final ScrollController _scrollController = ScrollController();

  final List<LinkjoyCrispDribbleFondness> _feeds = [];

  LinkjoyCrispDribbleFondness? _current;

  @override
  void initState() {
    super.initState();

    widget.controller._add = _add;
  }

  void _add(LinkjoyCrispDribbleFondness feed) {
    _feeds.add(feed);

    _playNext();
  }

  void _playNext() {
    if (_current != null) return;

    if (_feeds.isNotEmpty) {
      if (mounted) {
        setState(() {
          _current = _feeds.removeAt(0);
        });
      }
    }
  }

  void _completeNext() {
    if (mounted) {
      setState(() {
        if (_feeds.isNotEmpty) {
          _current = _feeds.removeAt(0);
        } else {
          _current = null;
        }
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_current == null) {
      return const SizedBox.shrink();
    }

    return Positioned.fill(
      key: GlobalKey(),
      child: Stack(
        alignment: Alignment.center,
        children: [..._anim(_current, 0, _completeNext)],
      ),
    );
  }

  List<Widget> _anim(
    LinkjoyCrispDribbleFondness? feed,
    int idx,
    void Function() next,
  ) {
    if (feed == null) {
      return [const SizedBox.shrink()];
    }
    if (feed.begGift()) {
      return buildBegGiftAnim(feed, next);
    } else {
      bool svga =
          feed.gift.animationUrl != null && feed.gift.animationUrl!.isNotEmpty;

      return [
        svga
            ? LinkjoyAcheFridge(
                url: feed.gift.animationUrl!.imgURL,
                onAnimationError: next,
                onAnimationEnd: next,
              )
            : const SizedBox.shrink(),

        if (feed.hasUserInfo())
          Positioned(
                left: LinkjoyGarage.s16,
                bottom:
                    (widget.feedBottom ?? 360.w) -
                    idx * (LinkjoyGarage.s64 + LinkjoyGarage.s16),
                child: CustomPaint(
                  painter: LinkjoyInventiveCrispAsset(
                    strokeWidth: 2,
                    borderRadius: BorderRadius.circular(LinkjoyGarage.s32),
                    gradient: LinearGradient(
                      colors: [LinkjoyAve.primary300, LinkjoyAve.goldCoin],
                    ),
                  ),
                  child: Container(
                    height: LinkjoyGarage.s64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(LinkjoyGarage.s32),
                      color: Colors.black45,
                    ),
                    padding: EdgeInsets.only(
                      left: LinkjoyGarage.s8,
                      right: LinkjoyGarage.s20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        LinkjoyFasten.circle(
                          feed.userAvatar!,
                          size: LinkjoyGarage.s32,
                        ),
                        LinkjoyFeynman.h6,
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${feed.userName} ${'linkjoy_caring_eleven_a_flashy'.tr}",
                              style: LinkjoyMarshaTriplet.body,
                            ),
                            LinkjoyFeynman.v4,

                            Text(
                              feed.gift.name,
                              style: LinkjoyMarshaTriplet.captionBold,
                            ),
                          ],
                        ),
                        LinkjoyFeynman.h6,

                        LinkjoyFasten.small(
                          feed.gift.icon.imgURL,
                          width: LinkjoyGarage.s48,
                          height: LinkjoyGarage.s48,
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .animate(
                onPlay: (e) {
                  widget.controller.onGiftIdUpdate?.call(feed.gift.id);
                },
                onComplete: (e) {
                  widget.controller.onGiftIdUpdate?.call(null);
                  if (!svga) {
                    next.call();
                  }
                },
              )
              .slide(
                begin: const Offset(-1, 0),
                end: Offset.zero,
                duration: 500.ms,
                curve: Curves.easeOut,
              )
              .fadeIn(duration: 500.ms)
              .then(delay: 2000.ms)
              .fadeOut(duration: 400.ms)
              .slide(begin: Offset.zero, end: const Offset(0, -0.2)),

        if (feed.giftAction != null)
          Positioned(
            bottom: Get.height * 0.34,
            child: Container(
              constraints: BoxConstraints(maxWidth: Get.width * 3 / 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(LinkjoyGarage.s24),
                ),
                border: Border.all(color: const Color(0xFFFF3AA7), width: 2),
                color: LinkjoyCondensate.black_50p,
                boxShadow: const [
                  BoxShadow(
                    color: Color(0xFFFF3AA7),
                    blurRadius: 20.0,
                    blurStyle: BlurStyle.outer,
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(
                horizontal: LinkjoyGarage.s16,
                vertical: LinkjoyGarage.s4,
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  LinkjoyFastenDance.small(
                    feed.gift.icon,
                    width: 36.w,
                    height: 36.w,
                  ),
                  LinkjoyFeynman.h4,
                  LinkjoyMarsha.wCaptionM(feed.giftAction!.action).build(),
                ],
              ),
            ),
          ),
      ];
    }
  }

  List<Widget> buildBegGiftAnim(
    LinkjoyCrispDribbleFondness feed,
    void Function() next,
  ) {
    return [
      Positioned(
            left: LinkjoyGarage.s16,
            bottom: (widget.feedBottom ?? 360.w) + LinkjoySuspend.d72,
            child: CustomPaint(
              painter: LinkjoyInventiveCrispAsset(
                strokeWidth: 2,
                borderRadius: BorderRadius.circular(LinkjoyGarage.s32),
                gradient: const LinearGradient(
                  colors: [Color(0xFF4384FF), Color(0xFF42E9D6)],
                ),
              ),
              child: Container(
                height: LinkjoyGarage.s64,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(LinkjoyGarage.s32),
                  color: LinkjoyCondensate.black_40p,
                ),
                padding: EdgeInsets.only(
                  left: LinkjoyGarage.s8,
                  right: LinkjoyGarage.s20,
                ),
                child: Row(
                  children: [
                    LinkjoyFasten.small(
                      feed.gift.icon.imgURL,
                      width: LinkjoyGarage.s48,
                      height: LinkjoyGarage.s48,
                    ),
                    LinkjoyFeynman.h6,
                    Container(
                      constraints: const BoxConstraints(
                        minWidth: 110,
                        maxWidth: 160,
                      ),
                      child: LinkjoyMarsha.wBody2M(
                        "linkjoy_caring_than_flashy".tr.replaceFirst(
                          "%s",
                          feed.gift.name,
                        ),
                      ).build(),
                    ),
                    if (feed.begId! > 0)
                      GestureDetector(
                        onTap: () {
                          next.call();

                          widget.controller.onSendBegGift?.call(
                            feed.gift,
                            feed.begId!,
                          );
                        },
                        child: Container(
                          margin: const EdgeInsetsDirectional.only(start: 6),
                          height: 48,
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Color(0xFFFF4D4D), Color(0xFFFF4DFB)],
                              begin: Alignment.centerLeft,
                              end: Alignment.centerRight,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(28)),
                          ),
                          child: LinkjoyMarsha.wBody2M(
                            "linkjoy_caring_eleven".tr,
                          ).build(),
                        ),
                      ),
                    const SizedBox(width: 12),
                  ],
                ),
              ),
            ),
          )
          .animate(
            onComplete: (e) {
              next.call();
            },
          )
          .slide(
            begin: const Offset(-1, 0),
            end: Offset.zero,
            duration: 500.ms,
            curve: Curves.easeOut,
          )
          .fadeIn(duration: 500.ms)
          .then(delay: 4000.ms)
          .fadeOut(duration: 400.ms)
          .slide(begin: Offset.zero, end: const Offset(0, -0.2)),
    ];
  }
}

class LinkjoyInventiveCrispAsset extends CustomPainter {
  final double strokeWidth;
  final BorderRadius borderRadius;
  final Gradient gradient;

  LinkjoyInventiveCrispAsset({
    required this.strokeWidth,
    required this.borderRadius,
    required this.gradient,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    final rrect = borderRadius.toRRect(rect);
    final paint = Paint()
      ..shader = gradient.createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    canvas.drawRRect(rrect, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
