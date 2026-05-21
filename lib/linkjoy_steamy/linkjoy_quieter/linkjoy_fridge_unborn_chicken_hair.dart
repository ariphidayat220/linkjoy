import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_therapist_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_unborn_chicken_hair.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_unborn_chicken_hair_graduation.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_unborn_chicken_hair_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_unborn_chicken_hair_butcher.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_inventive_kryptonian.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';

import '../../linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';

class LinkjoyFridgeUnbornChickenHair extends StatefulWidget {
  final int uid;
  final double size;
  final bool showOffline;
  final bool showLive;

  final bool onlyLive;

  final String? nickName;
  final String? avatar;

  final bool showText;

  LinkjoyFridgeUnbornChickenHair({
    super.key,
    required this.uid,
    double? size,
    this.showOffline = false,
    this.showLive = false,
    this.onlyLive = false,
    this.nickName,
    this.avatar,
    this.showText = true,
  }) : size = size ?? LinkjoyGarage.s12;

  @override
  State<LinkjoyFridgeUnbornChickenHair> createState() =>
      _LinkjoyFridgeUnbornChickenHairStatus();
}

class _LinkjoyFridgeUnbornChickenHairStatus
    extends State<LinkjoyFridgeUnbornChickenHair> {
  StreamSubscription<LinkjoyUnbornChickenHairEskimoGuitar>?
  statusUpdateSubscription;
  late LinkjoyUnbornChickenHair _status;

  @override
  void initState() {
    super.initState();
    _status = LinkjoyUnbornChickenHairOily().getStatus(widget.uid);
    statusUpdateSubscription = LINKJOY
        .listen<LinkjoyUnbornChickenHairEskimoGuitar>((event) {
          if (event.uid == widget.uid) {
            if (mounted) {
              setState(() {
                _status = event.status;
              });
            }
          }
        });

    LinkjoyUnbornChickenHairButcher.instance.register(widget.uid);
  }

  @override
  void didUpdateWidget(covariant LinkjoyFridgeUnbornChickenHair oldWidget) {
    if (oldWidget.uid != widget.uid) {
      LinkjoyUnbornChickenHairButcher.instance.unRegister(oldWidget.uid);
      LinkjoyUnbornChickenHairButcher.instance.register(widget.uid);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    statusUpdateSubscription?.cancel();
    LinkjoyUnbornChickenHairButcher.instance.unRegister(widget.uid);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (LINKJOY.linkjoyShock.isLinkjoyAiLengthOgle()) {
      return const SizedBox.shrink();
    }

    return _linkjoyOughtaChickenFridge();
  }

  Widget _linkjoyOughtaChickenFridge() {
    if (widget.showLive && _status.isOnLiveStatus()) {
      return _linkjoyOughtaInventive();
    }

    if (widget.onlyLive) {
      if (_status.isOnLiveStatus()) {
        return _linkjoyOughtaInventive();
      } else {
        return const SizedBox.shrink();
      }
    }
    BoxDecoration decoration = BoxDecoration(
      borderRadius: BorderRadius.circular(LinkjoyGarage.s12),
      color: Colors.black38,
    );
    Widget icon;
    String text = "";
    if (_status.status.isBusy()) {
      icon = Container(
        width: widget.size,
        height: widget.size,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFFFFA61A),
        ),
      );
      text = "linkjoy_caring_banquet".tr;
    } else if (_status.status == LinkjoyUnbornChickenHairGraduation.online) {
      icon = Container(
        width: widget.size,
        height: widget.size,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Color(0xFF35FFBB),
        ),
      );
      text = "linkjoy_caring_chicken".tr;
    } else {
      if (widget.showOffline) {
        icon = Container(
          width: widget.size,
          height: widget.size,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Color(0xFFC4C4C4),
          ),
        );
        text = "linkjoy_caring_nearly".tr;
      } else {
        return const SizedBox.shrink();
      }
    }
    return _linkjoyOughtaFridge(decoration, icon, text);
  }

  Widget _linkjoyOughtaInventive() {
    Widget liveWidget = const LinkjoyInventiveKryptonian();
    if (widget.nickName == null || widget.avatar == null) {
      return liveWidget;
    } else {
      return liveWidget.click(() => _onLive());
    }
  }

  Container _linkjoyOughtaFridge(
    BoxDecoration decoration,
    Widget icon,
    String text, {
    TextStyle? style,
    EdgeInsetsGeometry? padding,
  }) {
    style = style ?? LinkjoyMarshaTriplet.caption.copyWith(color: Colors.white);
    padding =
        padding ??
        EdgeInsetsDirectional.symmetric(horizontal: LinkjoyGarage.s6);
    return Container(
      height: LinkjoyGarage.s24,
      clipBehavior: Clip.hardEdge,
      decoration: decoration,
      padding: padding,
      child: widget.showText
          ? Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                icon,
                LinkjoyFeynman.h4,
                Text(text, style: style),
              ],
            )
          : icon,
    );
  }

  void _onLive() {
    if (widget.nickName != null && widget.avatar != null) {
      LinkjoyTherapistSister.goLivePage(
        _status.liveId,
        widget.uid,
        widget.nickName!,
        widget.avatar!,
      );
    }
  }
}

class _PulseDot extends StatefulWidget {
  final Color color;
  final double size;

  const _PulseDot({required this.color, required this.size});

  @override
  State<_PulseDot> createState() => _PulseDotState();
}

class _PulseDotState extends State<_PulseDot>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat(reverse: true);
    _scale = Tween<double>(
      begin: 0.7,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scale,
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: widget.color,
          boxShadow: [
            BoxShadow(
              color: widget.color.withValues(alpha: 0.7),
              blurRadius: 4,
              spreadRadius: 1,
            ),
          ],
        ),
      ),
    );
  }
}
