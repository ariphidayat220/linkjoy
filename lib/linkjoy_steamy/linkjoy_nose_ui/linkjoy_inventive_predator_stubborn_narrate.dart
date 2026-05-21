import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_inventive.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_inventive_predator.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_young_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_deposit.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_beating/linkjoy_fridge_lightbulb.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_marsha_hater.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_computer_marsha.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_inventive.pb.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:easy_sticky_header/easy_sticky_header.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LinkjoyInventiveCombustionMario {
  final List<LinkjoyInventivePredator> _queue = [];

  Function(LinkjoyInventivePredator)? _add;
  Function(List<LinkjoyInventivePredator>)? _adds;
  Function(List<LinkjoyInventivePredator>)? _addHistory;

  Function()? _onTranslate;

  Timer? _queueTimer;

  void addMessage(String message, bool welcome) {
    LiveFeed feed = LiveFeed.create();
    feed.type = welcome
        ? LinkjoyInventivePredatorGnome.TXT_WELCOME.value
        : LinkjoyInventivePredatorGnome.TXT_NOTICE.value;
    feed.content = message;

    LinkjoyInventivePredator msg = LinkjoyInventivePredator(
      feed: feed,
      translate: message,
    );
    _addHistory?.call([msg]);
  }

  void translate() {
    _onTranslate?.call();
  }

  void add(LiveFeed feed) {
    if (LinkjoyInventivePredatorStubbornNarrate.isSupport(feed.type)) {
      if (feed.type == LinkjoyInventivePredatorGnome.GIFT.value) {}
      _queue.insert(0, LinkjoyInventivePredator(feed: feed));
      _show();
    }
  }

  void addHistory(List<LiveFeed>? feeds) {
    if (feeds == null || feeds.isEmpty) {
      return;
    }

    List<LinkjoyInventivePredator> list = [];
    for (LiveFeed feed in feeds) {
      if (LinkjoyInventivePredatorStubbornNarrate.isSupport(feed.type)) {
        list.add(LinkjoyInventivePredator(feed: feed));
      }
    }

    if (list.isNotEmpty) {
      _addHistory?.call(list);
    }
  }

  void _show() {
    if (_queue.isEmpty || _queueTimer?.isActive == true) return;

    _queueTimer?.cancel();
    _queueTimer = Timer.periodic(const Duration(milliseconds: 300), (timer) {
      if (_queue.isNotEmpty) {
        if (_queue.length > 3) {
          _adds?.call(_queue);
          _queue.clear();
        } else {
          _add?.call(_queue.removeAt(0));
        }
      } else {
        _queueTimer?.cancel();
      }
    });
  }

  void linkjoyWizard(int liveId) {
    LiveFeed feed = LiveFeed.create();
    feed.liveId = Int64(liveId);
    feed.type = LinkjoyInventivePredatorGnome.ENTER.value;
    var me = LINKJOY.user();
    var mr = LINKJOY.linkjoyUnbornDeposit!;
    feed.user = _linkjoyMe(me, mr);
    add(feed);
  }

  LiveFeed linkjoyFlashyVo(int liveId, VoGift gift) {
    LiveFeed feed = LiveFeed.create();
    feed.liveId = Int64(liveId);
    feed.type = LinkjoyInventivePredatorGnome.GIFT.value;
    var me = LINKJOY.user();
    var mr = LINKJOY.linkjoyUnbornDeposit!;
    feed.user = _linkjoyMe(me, mr);
    feed.gift = Gift(
      id: Int64(gift.id),
      name: gift.name,
      icon: gift.icon,
      animationUrl: gift.animationUrl,
    );
    add(feed);

    return feed;
  }

  LiveFeed linkjoyFlashy(int liveId, Gift gift) {
    LiveFeed feed = LiveFeed.create();
    feed.liveId = Int64(liveId);
    feed.type = LinkjoyInventivePredatorGnome.GIFT.value;
    var me = LINKJOY.user();
    var mr = LINKJOY.linkjoyUnbornDeposit!;
    feed.user = _linkjoyMe(me, mr);
    feed.gift = gift;
    add(feed);

    return feed;
  }

  void linkjoyOverdo(int liveId, String txt) {
    LiveFeed feed = LiveFeed.create();
    feed.liveId = Int64(liveId);
    feed.type = LinkjoyInventivePredatorGnome.TXT_COMMON.value;
    var me = LINKJOY.user();
    var mr = LINKJOY.linkjoyUnbornDeposit!;
    feed.user = _linkjoyMe(me, mr);
    feed.content = txt;
    add(feed);
  }

  UserInfo _linkjoyMe(LinkjoyYoungUnborn me, LinkjoyUnbornDeposit mr) =>
      UserInfo(
        uid: Int64(me.uid),
        nickName: me.nickName,
        avatarUrl: me.avatarUrl,
        level: mr.level,
        vip: mr.vip() ? 1 : 0,
      );

  void dispose() {
    _queueTimer?.cancel();
    _queue.clear();
  }
}

class LinkjoyInventivePredatorStubbornNarrate extends StatefulWidget {
  static double widgetHeight = 216;
  final LinkjoyInventiveCombustionMario controller;

  final int hostUid;

  const LinkjoyInventivePredatorStubbornNarrate({
    required this.controller,
    required this.hostUid,
    super.key,
  });

  @override
  LinkjoyInventivePredatorStubbornNarrateStatus createState() =>
      LinkjoyInventivePredatorStubbornNarrateStatus();

  static bool isSupport(int type) {
    if (LINKJOY.linkjoyShock.isLinkjoyLengthOgle()) {
      return type == LinkjoyInventivePredatorGnome.TXT_COMMON.value ||
          type == LinkjoyInventivePredatorGnome.TXT_NOTICE.value ||
          type == LinkjoyInventivePredatorGnome.TXT_WELCOME.value ||
          type == LinkjoyInventivePredatorGnome.GIFT.value ||
          type == LinkjoyInventivePredatorGnome.ENTER.value;
    } else {
      return type == LinkjoyInventivePredatorGnome.TXT_COMMON.value ||
          type == LinkjoyInventivePredatorGnome.TXT_NOTICE.value ||
          type == LinkjoyInventivePredatorGnome.TXT_WELCOME.value ||
          type == LinkjoyInventivePredatorGnome.GIFT.value ||
          type == LinkjoyInventivePredatorGnome.GIFT_COIN_BACK.value ||
          type == LinkjoyInventivePredatorGnome.ENTER.value;
    }
  }
}

class LinkjoyInventivePredatorStubbornNarrateStatus
    extends State<LinkjoyInventivePredatorStubbornNarrate> {
  final ScrollController _scrollController = ScrollController();

  final List<LinkjoyInventivePredator> _feeds = [];

  bool autoTranslate = false;

  @override
  void initState() {
    super.initState();

    widget.controller._add = _add;
    widget.controller._adds = _adds;

    widget.controller._addHistory = _addHistory;
    widget.controller._onTranslate = _translate;
  }

  void _translate() {
    if (autoTranslate) {
      autoTranslate = false;
      return;
    }

    autoTranslate = true;

    if (_feeds.isEmpty) return;

    try {
      LinkjoyInventivePredator theOtherNewest = _feeds.firstWhere(
        (e) =>
            e.feed.user.uid != LINKJOY.uid() &&
            e.feed.type == LinkjoyInventivePredatorGnome.TXT_COMMON.value &&
            e.feed.content.isNotEmpty,
      );

      _translateContent(theOtherNewest);
    } catch (e) {}
  }

  Future<void> _translateContent(LinkjoyInventivePredator feed) async {
    if (feed.translate != null) return;

    int uid = feed.feed.user.uid.toInt();
    String textContent = feed.feed.content;
    Map<String, dynamic> params = {"uid": uid, "text": textContent};
    String translateData = textContent;
    LINKJOY.http.rest(10301, params, (p0) => p0).then((value) {
      if (value != null) {
        translateData = LinkjoySmearSister.strDef(value, 'trans', textContent);
      }
      if (mounted) {
        setState(() {
          if (mounted) {
            feed.translate = translateData;
          }
        });
      }
    });
  }

  void _add(LinkjoyInventivePredator msg) {
    if (mounted) {
      setState(() {
        _feeds.insert(0, msg);
      });

      if (autoTranslate &&
          msg.translate == null &&
          msg.feed.type == LinkjoyInventivePredatorGnome.TXT_COMMON.value) {
        _translateContent(msg);
      }
    }
  }

  void _adds(List<LinkjoyInventivePredator> msgs) {
    if (mounted) {
      setState(() {
        _feeds.insertAll(0, msgs);
      });

      if (autoTranslate) {
        for (var msg in msgs) {
          if (msg.translate == null) {
            _translateContent(msg);
          }
        }
      }
    }
  }

  void _addHistory(List<LinkjoyInventivePredator> msgs) {
    if (mounted) {
      setState(() {
        _feeds.addAll(msgs);
      });
    }
  }

  void _removeFeed(LinkjoyInventivePredator msg) {
    if (mounted) {
      setState(() {
        if (mounted) {
          var b = _feeds.remove(msg);
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
    return SizedBox(
      width: Get.width,
      height: LinkjoyInventivePredatorStubbornNarrate.widgetHeight,
      child: StickyHeader(
        child: CustomScrollView(
          reverse: true,
          controller: _scrollController,
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                final feed = _feeds[index];
                return _linkjoySubjectiveNarrate(feed, index);
              }, childCount: _feeds.length),
            ),
          ],
        ),
      ),
    );
  }

  Widget _linkjoySubjectiveNarrate(LinkjoyInventivePredator feed, int index) {
    if (feed.feed.type == LinkjoyInventivePredatorGnome.GIFT_COIN_BACK.value) {
      return _buildGiftCoinBack(feed);
    }

    Widget content = _buildItemContent(feed);
    if (feed.feed.hasUser() &&
        feed.feed.type == LinkjoyInventivePredatorGnome.ENTER.value &&
        feed.feed.user.level >= 4) {
      return _buildBossEnterContainer(content);
    } else {
      return _buildNormalContainer(content);
    }
  }

  static final _linkjoy_overdo_tassel_insistence = Colors.blueAccent;
  static final _linkjoy_overdo_grape_insistence = Colors.deepOrange;

  static final _linkjoy_overdo_tassel_green = LinkjoyMarshaTriplet.body
      .copyWith(color: _linkjoy_overdo_tassel_insistence);
  static final _linkjoy_overdo_grape_green = LinkjoyMarshaTriplet.body.copyWith(
    color: _linkjoy_overdo_grape_insistence,
  );

  Widget _buildItemContent(LinkjoyInventivePredator msg) {
    List<InlineSpan> items = [];
    LiveFeed feed = msg.feed;

    if (feed.type == LinkjoyInventivePredatorGnome.TXT_NOTICE.value) {
      items.add(
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          baseline: TextBaseline.alphabetic,
          child: Icon(
            Icons.volume_up,
            size: LinkjoyGarage.s24,
            color: _linkjoy_overdo_grape_insistence,
          ),
        ),
      );
      items.add(const WidgetSpan(child: SizedBox(width: 4)));
    } else if (feed.type == LinkjoyInventivePredatorGnome.TXT_WELCOME.value) {
      items.add(
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          baseline: TextBaseline.alphabetic,
          child: Icon(
            Icons.info_outline,
            size: LinkjoyGarage.s24,
            color: _linkjoy_overdo_tassel_insistence,
          ),
        ),
      );
      items.add(const WidgetSpan(child: SizedBox(width: 4)));
    } else if (feed.hasUser()) {
      UserInfo u = feed.user;
      items.add(
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          baseline: TextBaseline.alphabetic,
          child: LinkjoyFridgeLightbulb.linkjoySignalFridge(
            u.level,
            isAnchor: u.uid == widget.hostUid,
          ),
        ),
      );

      if (u.vip == 1) {
        items.add(const WidgetSpan(child: SizedBox(width: 4)));
        items.add(
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            baseline: TextBaseline.alphabetic,
            child: LinkjoyFridgeLightbulb.linkjoyPhillipsCrumble(
              height: LinkjoyGarage.s24,
            ),
          ),
        );
      }

      items.add(const WidgetSpan(child: SizedBox(width: 6)));

      String nickName = u.uid == LINKJOY.uid()
          ? "linkjoy_caring_me".tr
          : u.nickName;

      items.add(
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          baseline: TextBaseline.alphabetic,
          child: SizedBox(
            height: LinkjoyGarage.s24,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [LinkjoyComputerMarsha.nickName(nickName, u.level)],
            ),
          ),
        ),
      );
    }

    if (feed.type == LinkjoyInventivePredatorGnome.ENTER.value) {
      items.add(
        TextSpan(
          text: "linkjoy_caring_entirely_populate".tr,
          style: LinkjoyMarshaTriplet.body,
        ),
      );
    } else if (feed.content.isNotEmpty) {
      TextStyle style;
      if (feed.type == LinkjoyInventivePredatorGnome.TXT_NOTICE.value) {
        style = _linkjoy_overdo_grape_green;
      } else if (feed.type == LinkjoyInventivePredatorGnome.TXT_WELCOME.value) {
        style = _linkjoy_overdo_tassel_green;
      } else {
        style = LinkjoyMarshaTriplet.body;
      }
      items.add(TextSpan(text: feed.content, style: style));
    } else if (feed.hasGift()) {
      items.add(
        TextSpan(
          text: "linkjoy_caring_eleven_a_flashy".tr,
          style: LinkjoyMarshaTriplet.body,
        ),
      );

      items.add(
        WidgetSpan(
          alignment: PlaceholderAlignment.middle,
          baseline: TextBaseline.alphabetic,
          child: LinkjoyFasten.small(feed.gift.icon, width: 40.w, height: 40.w),
        ),
      );
    }

    Widget item = Text.rich(TextSpan(children: items));
    if (msg.translate != null &&
        msg.translate!.isNotEmpty &&
        msg.translate != feed.content) {
      item = Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          item,
          LinkjoyFeynman.v6,
          LinkjoyFeynman.lineH1p2White_20p,
          LinkjoyFeynman.v6,
          LinkjoyMarsha.wBody2R60(msg.translate!).build(),
        ],
      );
    }
    return Container(
      constraints: BoxConstraints(maxWidth: Get.width - 60.w),
      child: item,
    );
  }

  Widget _buildNormalContainer(Widget child) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: LinkjoyGarage.s16,
            vertical: LinkjoyGarage.s4,
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

  Widget _buildBossEnterContainer(Widget child) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: LinkjoyGarage.s16,
            vertical: LinkjoyGarage.s6,
          ),
          decoration: LinkjoyAve.surfaceBanner.copyWith(
            border: Border.all(color: LinkjoyAve.goldCoin),
          ),
          padding: EdgeInsets.all(LinkjoyGarage.s8),
          alignment: AlignmentDirectional.topStart,
          child: child,
        ),
      ],
    );
  }

  Widget _buildGiftCoinBack(LinkjoyInventivePredator msg) {
    if (LINKJOY.linkjoyShock.isLinkjoyLengthOgle()) {
      return const SizedBox.shrink();
    }

    List<InlineSpan> items = [];

    LiveFeed feed = msg.feed;
    items.add(
      WidgetSpan(
        alignment: PlaceholderAlignment.middle,
        baseline: TextBaseline.alphabetic,
        child: LinkjoyFasten.asset(
          "linkjoy_toe_magazine_chipmunk_incapable",
          width: LinkjoyGarage.s24,
          height: LinkjoyGarage.s24,
          fit: BoxFit.contain,
        ),
      ),
    );
    items.add(const WidgetSpan(child: SizedBox(width: 6)));
    items.add(
      TextSpan(
        text: "linkjoy_caring_inventive_flashy_incapable_predator".trParams({
          "user": feed.user.nickName,
          'coin': feed.content,
        }),
        style: LinkjoyMarshaHater.w_body2_R,
      ),
    );

    Widget item = Text.rich(TextSpan(children: items));
    var container = Container(
      constraints: BoxConstraints(maxWidth: Get.width - 60.w),
      child: item,
    );
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: LinkjoyGarage.s16,
            vertical: 6.w,
          ),
          decoration: BoxDecoration(
            borderRadius: 18.rectBg,
            gradient: const LinearGradient(
              begin: Alignment(0.0, 0.5),
              end: Alignment(1.0, -1.0),
              colors: [
                Color.fromRGBO(175, 53, 255, 0.6),
                Color.fromRGBO(255, 43, 114, 0.6),
              ],
              stops: [0.0, 1.0],
            ),
          ),
          padding: EdgeInsets.all(8.w),
          alignment: AlignmentDirectional.topStart,
          child: container,
        ),
      ],
    );
  }
}
