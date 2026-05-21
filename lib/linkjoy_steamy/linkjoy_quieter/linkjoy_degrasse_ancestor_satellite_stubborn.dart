import 'dart:async';
import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ancestor_convict_satellite.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_allen_teaser_animal_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_wail_degree_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_industrial.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha_hater.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_convict.pb.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_assume.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:easy_sticky_header/easy_sticky_header.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LinkjoyDegrasseAncestorSatelliteStubborn extends StatefulWidget {
  static double widgetHeight = 216;
  final ChatMessageController controller;

  final int callId;

  final int uid;

  final String avatarUrl;

  final double? width;

  const LinkjoyDegrasseAncestorSatelliteStubborn({
    required this.controller,
    required this.callId,
    required this.uid,
    required this.avatarUrl,
    this.width,
    super.key,
  });

  @override
  LinkjoyDegrasseAncestorSatelliteStubbornStatus createState() =>
      LinkjoyDegrasseAncestorSatelliteStubbornStatus();
}

class LinkjoyDegrasseAncestorSatelliteStubbornStatus
    extends State<LinkjoyDegrasseAncestorSatelliteStubborn> {
  final ScrollController _scrollController = ScrollController();

  final List<LinkjoyAncestorConvictSatellite> _messages = [];

  StreamSubscription? _chatMsgPshSubscription;

  @override
  void initState() {
    super.initState();

    _chatMsgPshSubscription = LINKJOY.listen<ChatCallMessageSendPsh>((event) {
      if (event.callId != widget.callId) return;
      _addMessage(
        LinkjoyAncestorConvictSatellite(
          uid: widget.uid,
          avatarUrl: widget.avatarUrl,
          content: event.text,
        ),
      );
    });

    widget.controller._onAddMessage = (message) {
      _addMessage(message);
    };

    widget.controller._onTranslate = () {
      if (_messages.isEmpty) return;
      try {
        LinkjoyAncestorConvictSatellite theOtherNewest = _messages.firstWhere(
          (element) => element.uid != LINKJOY.uid(),
        );
        if (theOtherNewest.type != 0 ||
            theOtherNewest.translated != null ||
            theOtherNewest.content.isEmpty)
          return;
        translateContent(theOtherNewest);
      } catch (e) {}
    };

    widget.controller._hasMessage = (int type) {
      LinkjoyAncestorConvictSatellite? message = _messages.firstWhereOrNull(
        (element) => element.type == type,
      );
      return message != null;
    };

    widget.controller._onRemoveMessage = (int type) {
      LinkjoyAncestorConvictSatellite? message = _messages.firstWhereOrNull(
        (element) => element.type == type,
      );
      if (message == null) return;
      _removeMessage(message);
    };
  }

  Future<void> translateContent(LinkjoyAncestorConvictSatellite message) async {
    int uid = message.uid;
    String textContent = message.content;
    Map<String, dynamic> params = {"uid": uid, "text": textContent};
    String translateData = textContent;
    LINKJOY.http.rest(10301, params, (p0) => p0).then((value) {
      if (value != null) {
        translateData = LinkjoySmearSister.strDef(value, 'trans', textContent);
      }
      if (mounted) {
        setState(() {
          message.translated = translateData;
        });
      }
    });
  }

  void _addMessage(LinkjoyAncestorConvictSatellite msg) {
    if (mounted) {
      setState(() {
        _messages.insert(0, msg);
      });
    }
  }

  void _removeMessage(LinkjoyAncestorConvictSatellite msg) {
    if (mounted) {
      setState(() {
        var b = _messages.remove(msg);
      });
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    _chatMsgPshSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: _linkjoyNanny(),
      height: LinkjoyDegrasseAncestorSatelliteStubborn.widgetHeight,
      child: StickyHeader(
        child: CustomScrollView(
          reverse: true,
          controller: _scrollController,
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final message = _messages[index];
                return _buildMessageItem(message, index);
              }, childCount: _messages.length),
            ),
          ],
        ),
      ),
    );
  }

  double _linkjoyNanny() => widget.width ?? Get.width;

  Widget _buildMessageItem(LinkjoyAncestorConvictSatellite message, int index) {
    Widget content = _buildMessageItemContent(message);
    if (message.fixTop()) {
      return _buildFixTopMessageItemContainer(index, child: content);
    } else {
      return _buildMessageItemContainer(content);
    }
  }

  Widget _buildMessageItemContent(LinkjoyAncestorConvictSatellite message) {
    if (message.type != 0) {
      return buildAlertMessage(message);
    } else {
      return buildUserMessage(message);
    }
  }

  Widget buildAlertMessage(LinkjoyAncestorConvictSatellite message) {
    if (message.type > 100) {
      return Container(
        constraints: BoxConstraints(minHeight: LinkjoyGarage.s24),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            LinkjoyFastenIndustrial.asset(
              message.icon,
              width: LinkjoyGarage.s24,
              height: LinkjoyGarage.s24,
              fit: BoxFit.cover,
            ),
            LinkjoyFeynman.h6,
            LinkjoyMarsha.body2R(message.content)
                .color(const Color(0xFF33D7AD))
                .build()
                .maxWidth(_linkjoyNanny() - LinkjoyGarage.s80),
            LinkjoyFeynman.h4,
          ],
        ),
      );
    }
    double messageMaxWidth = _linkjoyNanny() - LinkjoyGarage.s72;
    if (message.linkjoyMarketingVinegarAssume()) {
      messageMaxWidth = messageMaxWidth - LinkjoyGarage.s80;
    }
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CountdownTextWithAnim(
          message.content,
          message.getCountdownSeconds(),
          onFinish: () => _removeMessage(message),
          messageMaxWidth: messageMaxWidth,
        ),
        LinkjoyFeynman.h4,
        if (message.linkjoyMarketingVinegarAssume())
          _linkjoyOughtaVinegarAssume(),
      ],
    );
  }

  Row buildUserMessage(LinkjoyAncestorConvictSatellite message) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        LinkjoyFasten.circle(
          message.avatarUrl,
          size: LinkjoyGarage.s24,
          fit: BoxFit.cover,
        ),
        LinkjoyFeynman.h6,
        Container(
          constraints: BoxConstraints(minHeight: LinkjoyGarage.s24),
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                message.content,
                style: LinkjoyMarshaHater.w_body2_R,
              ).maxWidth(_linkjoyNanny() - LinkjoyGarage.s64),
              if (message.translated != null) LinkjoyFeynman.v8,
              if (message.translated != null)
                Container(height: 1, color: LinkjoyCondensate.white_20p),
              if (message.translated != null) LinkjoyFeynman.v8,
              if (message.translated != null)
                Text(
                  message.translated!,
                  style: LinkjoyMarshaHater.w_body2_R_60,
                ).maxWidth(_linkjoyNanny() - LinkjoyGarage.s64),
            ],
          ),
        ),
        LinkjoyFeynman.h4,
      ],
    );
  }

  Widget _linkjoyOughtaVinegarAssume() {
    return LinkjoyEllen.circleText(
      "linkjoy_caring_vinegar".tr,
      () {
        LINKJOY.toNamed(
          LinkjoyGet.LinkjoyAllenTeaserAnimalDivision,
          arguments: LinkjoyAllenTeaserAnimalJaw(
            fromType: LinkjoyWailImitateGnome.FROM_CHATTING_CHARGE,
            fromUid: widget.uid,
          ),
        );
      },
      size: LinkjoyBookshelf.sm,
      fixedWidth: LinkjoyGarage.s80,
    );
  }

  Widget _buildMessageItemContainer(Widget child) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsetsDirectional.only(
            start: LinkjoyGarage.s8,
            bottom: LinkjoyGarage.s8,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusLarge),
            color: Colors.black45,
          ),
          padding: EdgeInsets.all(LinkjoyGarage.s8),
          alignment: AlignmentDirectional.topStart,
          child: child,
        ),
      ],
    );
  }

  Widget _buildFixTopMessageItemContainer(int index, {Widget? child}) {
    return StickyContainerWidget(
      index: index,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: LinkjoyGarage.s8),
        alignment: AlignmentDirectional.topStart,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusLarge),
            color: const Color(0xAA0A0617),
          ),
          padding: EdgeInsets.all(LinkjoyGarage.s8),
          child: child,
        ),
      ),
    );
  }
}

class ChatMessageController extends ChangeNotifier {
  Function(LinkjoyAncestorConvictSatellite)? _onAddMessage;
  Function()? _onTranslate;
  bool Function(int type)? _hasMessage;
  Function(int type)? _onRemoveMessage;

  void addMessage(LinkjoyAncestorConvictSatellite message) {
    _onAddMessage?.call(message);
  }

  void translate() {
    _onTranslate?.call();
  }

  bool hasRechargeCountdown() {
    return _hasMessage?.call(7) == true;
  }

  void showRechargeCountdown(int seconds) {
    String content = LinkjoyAncestorConvictSatellite.buildTypeContent(7);
    addMessage(
      LinkjoyAncestorConvictSatellite(
        uid: 0,
        avatarUrl: "",
        content: content,
        type: 7,
        countdownSeconds: seconds,
      ),
    );
  }

  void removeRechargeCountdown() {
    _onRemoveMessage?.call(7);
  }
}

class CountdownTextWithAnim extends StatefulWidget {
  final String content;
  final int seconds;
  final void Function() onFinish;
  final double messageMaxWidth;

  const CountdownTextWithAnim(
    this.content,
    this.seconds, {
    required this.onFinish,
    required this.messageMaxWidth,
    super.key,
  });

  @override
  CountdownTextWithAnimState createState() => CountdownTextWithAnimState();
}

class CountdownTextWithAnimState extends State<CountdownTextWithAnim>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: widget.seconds),
    );

    _animation = Tween(begin: 1.0, end: 0.0).animate(_controller)
      ..addListener(() {
        if (mounted) {
          setState(() {});
        }
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) widget.onFinish();
      });

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        CustomPaint(
          size: Size(LinkjoyGarage.s32, LinkjoyGarage.s32),
          painter: _CirclePainter(
            progress: _animation.value,
            remainingSeconds: (_animation.value * widget.seconds).ceil(),
          ),
        ),
        LinkjoyFeynman.h6,
        Container(
          constraints: BoxConstraints(maxWidth: widget.messageMaxWidth),
          child: Text(
            widget.content.replaceAll(
              "%1d",
              "${(_animation.value * widget.seconds).ceil()}",
            ),
            style: LinkjoyMarshaHater.w_body2_M,
          ),
        ),
      ],
    );
  }
}

class _CirclePainter extends CustomPainter {
  final double progress;
  final int remainingSeconds;

  const _CirclePainter({
    required this.progress,
    required this.remainingSeconds,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 2;

    final foregroundPaint = Paint()
      ..color = const Color(0xFFFF2960)
      ..strokeWidth = 2
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final sweepAngle = 2 * pi * progress;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      -pi / 2,
      sweepAngle,
      false,
      foregroundPaint,
    );

    final textPainter = TextPainter(
      text: TextSpan(
        text: '$remainingSeconds',
        style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Color(0xFFFF2960),
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();

    textPainter.paint(
      canvas,
      center - Offset(textPainter.width / 2, textPainter.height / 2),
    );
  }

  @override
  bool shouldRepaint(covariant _CirclePainter oldDelegate) {
    return progress != oldDelegate.progress ||
        remainingSeconds != oldDelegate.remainingSeconds;
  }
}
