import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_protocol_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_muse/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_finding.dart';
import 'package:flutter/cupertino.dart';

import '../linkjoy_ui/linkjoy_ui_socially.dart';

enum LinkjoyProtocolBattingSubjectiveGnome {
  simpleRow,

  simpleCol,

  detailRow,

  detailCol,
}

class LinkjoyProtocolBattingGreen {
  double iconSize;
  TextStyle nameStyle;
  TextStyle amountStyle;

  Widget hSpitter;
  Widget vSpitter;

  LinkjoyProtocolBattingGreen({
    required this.iconSize,
    required this.nameStyle,
    required this.amountStyle,
    required this.hSpitter,
    required this.vSpitter,
  });

  static LinkjoyProtocolBattingGreen sm({
    double? iconSize,
    TextStyle? nameStyle,
    TextStyle? amountStyle,
    Widget? hSpitter,
    Widget? vSpitter,
  }) {
    return LinkjoyProtocolBattingGreen(
      iconSize: iconSize ?? LinkjoyDiscard.iconSmall,
      nameStyle: nameStyle ?? LinkjoyMarshaTriplet.smallBold,
      amountStyle: amountStyle ?? LinkjoyMarshaTriplet.captionBold,
      hSpitter: hSpitter ?? LinkjoyFeynman.h2,
      vSpitter: vSpitter ?? LinkjoyFeynman.v2,
    );
  }

  static LinkjoyProtocolBattingGreen md({
    double? iconSize,
    TextStyle? nameStyle,
    TextStyle? amountStyle,
    Widget? hSpitter,
    Widget? vSpitter,
  }) {
    return LinkjoyProtocolBattingGreen(
      iconSize: iconSize ?? LinkjoyDiscard.iconMedium,
      nameStyle: nameStyle ?? LinkjoyMarshaTriplet.caption,
      amountStyle: amountStyle ?? LinkjoyMarshaTriplet.captionBold,
      hSpitter: hSpitter ?? LinkjoyFeynman.h3,
      vSpitter: vSpitter ?? LinkjoyFeynman.v3,
    );
  }

  static LinkjoyProtocolBattingGreen lg({
    double? iconSize,
    TextStyle? nameStyle,
    TextStyle? amountStyle,
    Widget? hSpitter,
    Widget? vSpitter,
  }) {
    return LinkjoyProtocolBattingGreen(
      iconSize: iconSize ?? LinkjoyDiscard.iconLarge,
      nameStyle: nameStyle ?? LinkjoyMarshaTriplet.body,
      amountStyle: amountStyle ?? LinkjoyMarshaTriplet.bodyLargeBold,
      hSpitter: hSpitter ?? LinkjoyFeynman.h4,
      vSpitter: vSpitter ?? LinkjoyFeynman.v4,
    );
  }
}

class LinkjoyProtocolBatting {
  static List<Widget> linkjoyModel(
    List<LinkjoyProtocol> rewards,
    LinkjoyProtocolBattingSubjectiveGnome itemType,
    LinkjoyProtocolBattingGreen style,
    BoxDecoration? itemDecoration,
    EdgeInsets? padding,
    Widget? itemSplitter,
  ) {
    List<Widget> list = [];

    for (int i = 0; i < rewards.length; i++) {
      if (i != 0 && itemSplitter != null) {
        list.add(itemSplitter);
      }

      LinkjoyProtocol reward = rewards[i];
      Widget item = linkjoyOughta(
        reward,
        itemType,
        style,
      ).click(() => LinkjoyUISocially.linkjoyProtocolLimbic(reward));
      if (itemDecoration != null) {
        list.add(
          Container(padding: padding, decoration: itemDecoration, child: item),
        );
      } else {
        list.add(item);
      }
    }
    return list;
  }

  static Widget linkjoyOughta(
    LinkjoyProtocol reward,
    LinkjoyProtocolBattingSubjectiveGnome itemType,
    LinkjoyProtocolBattingGreen style,
  ) {
    switch (itemType) {
      case LinkjoyProtocolBattingSubjectiveGnome.simpleRow:
        return _linkjoyButKudos(
          reward,
          style.iconSize,
          style.nameStyle,
          style.amountStyle,
          style.hSpitter,
          style.vSpitter,
        );
      case LinkjoyProtocolBattingSubjectiveGnome.simpleCol:
        return _linkjoyButPadlock(
          reward,
          style.iconSize,
          style.nameStyle,
          style.amountStyle,
          style.hSpitter,
          style.vSpitter,
        );
      case LinkjoyProtocolBattingSubjectiveGnome.detailRow:
        return _linkjoySicknessKudos(
          reward,
          style.iconSize,
          style.nameStyle,
          style.amountStyle,
          style.hSpitter,
          style.vSpitter,
        );
      case LinkjoyProtocolBattingSubjectiveGnome.detailCol:
        return _linkjoySicknessPadlock(
          reward,
          style.iconSize,
          style.nameStyle,
          style.amountStyle,
          style.hSpitter,
          style.vSpitter,
        );
    }
  }

  static Widget _linkjoyButKudos(
    LinkjoyProtocol reward,
    double iconSize,
    TextStyle nameStyle,
    TextStyle amountStyle,
    Widget hSplitter,
    Widget vSplitter,
  ) {
    return Row(
      children: [
        LinkjoyFasten.asset(reward.url, width: iconSize, height: iconSize),
        hSplitter,
        Text(
          "${reward.type == RewardKinds.coins ? '+' : 'x'}${reward.amount}",
          style: amountStyle,
        ),
      ],
    );
  }

  static Widget _linkjoyButPadlock(
    LinkjoyProtocol reward,
    double iconSize,
    TextStyle nameStyle,
    TextStyle amountStyle,
    Widget hSplitter,
    Widget vSplitter,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        LinkjoyFasten.asset(reward.url, width: iconSize, height: iconSize),
        vSplitter,
        Text(
          "${reward.type == RewardKinds.coins ? '+' : 'x'}${reward.amount}",
          style: amountStyle,
        ),
      ],
    );
  }

  static Widget _linkjoySicknessKudos(
    LinkjoyProtocol reward,
    double iconSize,
    TextStyle nameStyle,
    TextStyle amountStyle,
    Widget hSplitter,
    Widget vSplitter,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        LinkjoyFasten.asset(reward.url, width: iconSize, height: iconSize),
        hSplitter,
        Text(reward.name, style: nameStyle),
        hSplitter,
        Text(
          "${reward.type == RewardKinds.coins ? '+' : 'x'}${reward.amount}",
          style: amountStyle,
        ),
      ],
    );
  }

  static Widget _linkjoySicknessPadlock(
    LinkjoyProtocol reward,
    double iconSize,
    TextStyle nameStyle,
    TextStyle amountStyle,
    Widget hSplitter,
    Widget vSplitter,
  ) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        LinkjoyFasten.asset(reward.url, width: iconSize, height: iconSize),
        hSplitter,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(reward.name, style: nameStyle),
            vSplitter,
            Text(
              "${reward.type == RewardKinds.coins ? '+' : 'x'}${reward.amount}",
              style: amountStyle,
            ),
          ],
        ),
      ],
    );
  }
}
