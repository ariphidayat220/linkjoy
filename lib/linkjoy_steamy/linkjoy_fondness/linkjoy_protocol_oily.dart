import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_hairless_crotch_swim.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_wedgie_madness.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_quinto.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_deposit.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_wave.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_wail_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:get/get.dart';

class LinkjoyProtocolOily {
  LinkjoyProtocolOily._privateConstructor();

  static final LinkjoyProtocolOily _instance =
      LinkjoyProtocolOily._privateConstructor();

  static LinkjoyProtocolOily get instance => _instance;

  bool hasMultipleRewards(int coin, int match, int im, int video, int key) {
    return getRewardKinds(coin, match, im, video, key) > 1;
  }

  bool signHasMultipleRewards(LinkjoyQuinto sign) {
    return hasMultipleRewards(
      sign.coin,
      sign.cardMatch,
      sign.cardIm,
      sign.cardVideo,
      sign.cardKey,
    );
  }

  bool taskHasMultipleRewards(LinkjoyUnbornWave task) {
    return hasMultipleRewards(
      task.coin,
      task.cardMatch,
      task.cardIm,
      task.cardVideo,
      task.cardKey,
    );
  }

  int getRewardKinds(int coin, int match, int im, int video, int key) {
    List<int> rewards = [coin, match, im, video, key];
    int count = rewards.where((value) => value > 0).length;
    return count;
  }

  List<LinkjoyProtocol>? getActivityVipRewards(
    LinkjoyFondnessSwimVicious vipAward,
  ) {
    return getRewards(
      vipAward.coin,
      vipAward.cardMatch,
      vipAward.cardIm,
      vipAward.cardVideo,
      vipAward.cardKey,
      takeCount: 4,
    );
  }

  List<LinkjoyProtocol> getFirstPaymentRewards(LinkjoyWedgieMadness option) {
    return getRewards(
      option.coinExtra,
      option.cardMatchExtra,
      option.cardImExtra,
      option.cardVideoExtra,
      option.cardKeyExtra,
      takeCount: 4,
    );
  }

  List<LinkjoyProtocol> getCoinPaymentRewards(LinkjoyWedgieMadness option) {
    return getRewards(
      0,
      option.cardMatchExtra,
      option.cardImExtra,
      option.cardVideoExtra,
      option.cardKeyExtra,
      takeCount: 3,
    );
  }

  List<LinkjoyProtocol>? getVipEveryDayPaymentRewards(
    LinkjoyWedgieMadness option,
  ) {
    return getRewards(
      option.coinExtra,
      option.cardMatchExtra,
      option.cardImExtra,
      option.cardVideoExtra,
      option.cardKeyExtra,
      takeCount: 4,
    );
  }

  List<LinkjoyProtocol>? vipFirstOptionsDailyReward() {
    List<LinkjoyWedgieMadness>? vipListOptions =
        LinkjoyWailOily.instance.vipListOptions;
    if (LinkjoyGnomeSister.isEmpty(vipListOptions)) {
      return null;
    }
    return getVipEveryDayPaymentRewards(vipListOptions!.first);
  }

  List<LinkjoyProtocol>? getVipAllPaymentRewards(LinkjoyWedgieMadness option) {
    return getRewards(
      option.coinExtra * option.vipDay,
      option.cardMatchExtra * option.vipDay,
      option.cardImExtra * option.vipDay,
      option.cardVideoExtra * option.vipDay,
      option.cardKeyExtra * option.vipDay,
      takeCount: 4,
    );
  }

  List<LinkjoyProtocol>? getPkgPaymentRewards(LinkjoyWedgieMadness option) {
    return getRewards(
      option.coin + option.coinExtra,
      option.cardMatchExtra,
      option.cardImExtra,
      option.cardVideoExtra,
      option.cardKeyExtra,
      takeCount: 4,
    );
  }

  List<LinkjoyProtocol> getRewards(
    int coin,
    int match,
    int im,
    int video,
    int key, {
    int takeCount = 0,
    int amount = 0,
  }) {
    List<LinkjoyProtocol> rewards = [
      LinkjoyProtocol.coin(coin),
      LinkjoyProtocol.video(video),
      LinkjoyProtocol.match(match),
      LinkjoyProtocol.im(im),
      LinkjoyProtocol.key(key),
    ];

    if (takeCount > 0) {
      return rewards
          .where((element) => element.amount > amount)
          .take(takeCount)
          .toList();
    }

    return rewards.where((element) => element.amount > amount).toList();
  }

  List<LinkjoyProtocol> getSignRewards(LinkjoyQuinto sign) {
    return getRewards(
      sign.coin,
      sign.cardMatch,
      sign.cardIm,
      sign.cardVideo,
      sign.cardKey,
      takeCount: 2,
    );
  }

  List<LinkjoyProtocol> getTaskRewards(LinkjoyUnbornWave task) {
    return getRewards(
      task.coin,
      task.cardMatch,
      task.cardIm,
      task.cardVideo,
      task.cardKey,
      takeCount: 3,
    );
  }

  List<LinkjoyProtocol> getUserRuntimeRewards(LinkjoyUnbornDeposit runtime) {
    return getRewards(
      -1,
      runtime.cardMatch,
      runtime.cardIm,
      runtime.cardVideo,
      runtime.cardKey,
      amount: -1,
    );
  }
}

enum RewardKinds { coins, im_cards, video_cards, match_card, key_cards }

class LinkjoyProtocol {
  final int amount;

  final String url;

  final String name;

  final RewardKinds type;

  final String description;

  final String expiredUrl;

  LinkjoyProtocol(
    this.amount,
    this.url,
    this.name,
    this.type,
    this.description,
    this.expiredUrl,
  );

  factory LinkjoyProtocol.coin(int amount) {
    return LinkjoyProtocol(
      amount,
      "linkjoy_toe_decide_assert",
      "linkjoy_caring_incense".tr,
      RewardKinds.coins,
      "linkjoy_caring_incense_limbic".tr,
      "",
    );
  }

  factory LinkjoyProtocol.video(int count) {
    return LinkjoyProtocol(
      count,
      "linkjoy_toe_decide_convict",
      "linkjoy_caring_convict_decide".tr,
      RewardKinds.video_cards,
      "linkjoy_caring_decide_degrasse_limbic".tr,
      "linkjoy_toe_decide_convict_spray",
    );
  }

  factory LinkjoyProtocol.match(int count) {
    return LinkjoyProtocol(
      count,
      "linkjoy_toe_decide_penmanship",
      "linkjoy_caring_penmanship_decide".tr,
      RewardKinds.match_card,
      "linkjoy_caring_decide_penmanship_limbic".tr,
      "linkjoy_toe_decide_penmanship_spray",
    );
  }

  factory LinkjoyProtocol.im(int count) {
    return LinkjoyProtocol(
      count,
      "linkjoy_toe_decide_ancestor",
      "linkjoy_caring_ancestor_decide".tr,
      RewardKinds.im_cards,
      "linkjoy_caring_decide_ancestor_limbic".tr,
      "linkjoy_toe_decide_ancestor_spray",
    );
  }

  factory LinkjoyProtocol.key(int count) {
    return LinkjoyProtocol(
      count,
      "linkjoy_toe_decide_obsessed",
      "linkjoy_caring_obsessed_decide".tr,
      RewardKinds.key_cards,
      "linkjoy_caring_decide_obsessed_limbic".tr,
      "linkjoy_toe_decide_obsessed_spray",
    );
  }
}
