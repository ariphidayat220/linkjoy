import 'dart:async';
import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_peanuts_sorority/linkjoy_sorority_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ancestor_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_ancestor_question_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_amplitude.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_deli.pb.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_condensate.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_suspend.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_martini.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_marsha_hater.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../linkjoy_nose/linkjoy_wail_degree_jaw.dart';
import '../linkjoy_nose/linkjoy_phillips_stubborn_jaw.dart';
import 'linkjoy_flashy_subjective_narrate.dart';
import 'linkjoy_fridge_incense_crumble.dart';

enum LinkjoyFlashyPolishNarrateGnome {
  send_gift,
  beg_gift,
  choose_gift,
  replace_gift;

  String msg() {
    switch (this) {
      case send_gift:
        return "linkjoy_caring_eleven";
      case beg_gift:
        return "linkjoy_caring_than";
      case choose_gift:
        return "linkjoy_caring_netflix";
      case replace_gift:
        return "linkjoy_caring_himself";
    }
  }
}

class LinkjoyFlashyPolishNarrate extends StatefulWidget {
  const LinkjoyFlashyPolishNarrate(
    this.viewType, {
    super.key,
    this.onFocus,
    this.onConfirm,
    this.chatUser,
    this.payFromType = 0,
    this.titleWidget,
  });

  final void Function(VoGift gift)? onConfirm;

  final int payFromType;

  final void Function(VoGift gift)? onFocus;

  final LinkjoyAncestorUnborn? chatUser;
  final LinkjoyFlashyPolishNarrateGnome viewType;
  final Widget? titleWidget;

  @override
  LinkjoyFlashyPolishNarrateStatus createState() =>
      LinkjoyFlashyPolishNarrateStatus();
}

class LinkjoyFlashyPolishNarrateStatus extends State<LinkjoyFlashyPolishNarrate>
    with SingleTickerProviderStateMixin {
  LinkjoyFlashyPolishNarrateStatus() : super();
  late List<VoGift> gifts;

  int _tab = 0;

  int _currentPage = 0;

  int? _selectedGiftIndex;

  int _selectedGiftTemp = 0;

  VoGift? _selectedGift;

  int? _temp;

  StreamSubscription<RelationTempPSH>? _updateRelationTempSubscription;

  List<VoGift> coinBackGifts = [];

  @override
  void initState() {
    super.initState();

    gifts = LINKJOY.linkjoyShock.gifts;
    coinBackGifts = gifts
        .where((gift) => gift.isLinkjoyChipmunkIncapableFlashy)
        .toList();

    if (widget.chatUser != null) {
      _temp = widget.chatUser!.temp;
      _updateRelationTempSubscription = LINKJOY.listen<RelationTempPSH>((
        event,
      ) {
        if (event.uid != widget.chatUser!.uid) return;
        if (_temp == event.temp) return;

        if (mounted) {
          setState(() {
            _temp = event.temp;
          });
        }
      });
    }
  }

  @override
  void dispose() {
    _updateRelationTempSubscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(LinkjoyGarage.s16),
              topRight: Radius.circular(LinkjoyGarage.s16),
            ),
            color: LinkjoyAve.bgDarkDark,
            boxShadow: const [
              BoxShadow(
                color: Colors.white24,
                blurRadius: 6,
                spreadRadius: 0,
                offset: Offset(0, -2),
              ),
            ],
          ),
          padding: EdgeInsets.only(bottom: LinkjoyGarage.s8),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              if (widget.titleWidget != null) widget.titleWidget!,
              ..._linkjoyFetusYam(),
              _linkjoySkintightFridge(),
              _linkjoySilk(),
            ],
          ),
        ).click(() {}),
      ],
    );
  }

  void _onChoose(int index) {
    if (_selectedGiftIndex != index) {
      setState(() {
        _selectedGiftIndex = index;
        _selectedGift = gifts[index];
        _selectedGiftTemp =
            (gifts[index].cost /
                    LINKJOY.linkjoyShock.configs.linkjoyPhlegmSlingshotOops)
                .round();

        widget.onFocus?.call(_selectedGift!);
      });
    } else {
      _selectedGift = gifts[index];

      var balance = LINKJOY.linkjoyUnbornDeposit?.balance ?? 0;

      if (LINKJOY.linkjoyJog!.isLinkjoyFoolishly() &&
          widget.onConfirm != null) {
        widget.onConfirm!(_selectedGift!);
        return;
      }

      if (_selectedGift?.isVipGift == true && !LINKJOY.isVip()) {
        LINKJOY.toNamed(
          LinkjoyGet.LinkjoyPhillipsFailDivision,
          arguments: LinkjoyPhillipsStubbornJaw(
            fromType: LinkjoyWailImitateGnome.FROM_GIFT_PANEL_CHARGE,
          ),
        );
        return;
      }

      if (balance < _selectedGift!.cost) {
        LinkjoyUISocially.linkjoyAllenTeaserAnimal(
          fromType: widget.payFromType,
        );
        return;
      }

      if (widget.onConfirm != null) {
        widget.onConfirm!(_selectedGift!);
      }
    }
  }

  Widget _linkjoySkintightFridge() {
    gifts = LINKJOY.linkjoyShock.gifts;

    if (_tab == 1) {
      gifts = gifts.where((element) => element.isVipGift).toList()
        ..sort((a, b) => a.cost.compareTo(b.cost));
    }

    if (LinkjoyGnomeSister.isEmptyList(gifts)) {
      return const SizedBox.shrink();
    }
    return SizedBox(
      height: 248.w,
      child: PageView.builder(
        itemCount: (gifts.length / 8).ceil(),
        onPageChanged: (int page) {
          setState(() {
            _currentPage = page;
          });
        },
        itemBuilder: (context, pageIndex) {
          return GridView.builder(
            padding: LinkjoyAmplitude.h8,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 0.72,
              crossAxisSpacing: LinkjoyGarage.s8,
              mainAxisSpacing: LinkjoyGarage.s8,
            ),
            itemCount: min(8, gifts.length - pageIndex * 8),
            itemBuilder: (context, index) {
              final giftIndex = pageIndex * 8 + index;
              final gift = gifts[giftIndex];

              return LinkjoyFlashySubjectiveNarrate(
                gift: gift,
                isSelected: giftIndex == _selectedGiftIndex,
                onSelectText: widget.viewType.msg().tr,
              ).clickOld(() {
                _onChoose(giftIndex);
              });
            },
          );
        },
      ),
    );
  }

  List<Widget> _linkjoyFetusYam() {
    return [
      Container(
        margin: EdgeInsets.only(
          left: LinkjoyGarage.s12,
          right: LinkjoyGarage.s12,
          top: LinkjoyGarage.s8,
        ),
        height: LinkjoyGarage.s32,
        child: Row(
          children: [
            Text(
              "linkjoy_caring_belly_crisp".tr,
              style: _tab == 0
                  ? LinkjoyMarshaTriplet.bodyLargeBold
                  : LinkjoyMarshaTriplet.bodyThird,
            ).clickOld(
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
              () {
                if (_tab == 0) return;
                setState(() {
                  _tab = 0;
                });
              },
            ),
            const Spacer(),
            if (!LINKJOY.isLinkjoyFoolishly)
              const LinkjoyFridgeIncenseCrumble(
                style: LinkjoyFridgeIncenseCrumbleGreen.GiftShop,
              ),
          ],
        ),
      ),
      LinkjoyFeynman.v8,
      const Divider(height: 1, color: Colors.white10),
      LinkjoyFeynman.v4,
      _selectedGiftTemp > 0 && !LINKJOY.linkjoyShock.isLinkjoyAiLengthOgle()
          ? SizedBox(
              height: LinkjoyGarage.s20,
              child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      LinkjoyFeynman.h16,
                      Icon(
                        Icons.info_outline_rounded,
                        size: LinkjoyDiscard.iconSmall,
                        color: LinkjoyAve.textSecondary,
                      ),
                      LinkjoyFeynman.h4,
                      Text(
                        "linkjoy_caring_alrighty_question".tr,
                        style: LinkjoyMarshaTriplet.caption,
                      ),
                      Text(
                            ' + $_selectedGiftTemp°C',
                            style: LinkjoyMarshaTriplet.caption,
                          )
                          .animate(key: ValueKey(_selectedGiftIndex))
                          .fadeIn(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.easeIn,
                          ),
                    ],
                  ).click(() {
                    LINKJOY.toNamed(
                      LinkjoyGet.LinkjoyAncestorQuestionDivision,
                      arguments: LinkjoyAncestorQuestionJaw(widget.chatUser),
                    );
                  }),
            )
          : LinkjoyFeynman.v20,
      LinkjoyFeynman.v4,
    ];
  }

  Widget _linkjoySilk() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        (gifts.length / 8).ceil(),
        (index) => Container(
          width: index == _currentPage ? LinkjoyGarage.s16 : LinkjoyGarage.s8,
          height: LinkjoyGarage.s8,
          margin: EdgeInsets.symmetric(
            horizontal: LinkjoyGarage.s4,
            vertical: LinkjoyGarage.s4,
          ),
          decoration: BoxDecoration(
            color: index == _currentPage
                ? LinkjoyAve.primaryMain
                : Colors.grey.shade300,
            borderRadius: BorderRadius.circular(LinkjoyDiscard.radiusSmall),
          ),
        ),
      ),
    );
  }
}
