import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ancestor_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_muse.dart';
import 'package:linkjoy/linkjoy_steamy/proto/StringTranslate.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_sutra.pb.dart';
import 'package:get/get.dart';

enum ChatCallStatus {
  trying,

  ringing,

  pickup,

  confirmed,

  requestTimeout,

  busyHere,

  rejected,

  canceled,

  unreachable,

  bye,

  showCallError,
}

extension ChatCallStatusExtension on ChatCallStatus {
  bool isDialing() {
    return [ChatCallStatus.trying, ChatCallStatus.ringing].contains(this);
  }

  bool isCalling() {
    return [ChatCallStatus.pickup, ChatCallStatus.confirmed].contains(this);
  }

  bool isCallEnd() {
    return [
      ChatCallStatus.requestTimeout,
      ChatCallStatus.busyHere,
      ChatCallStatus.rejected,
      ChatCallStatus.canceled,
      ChatCallStatus.bye,
    ].contains(this);
  }
}

enum ChatCallSourceType { normal, match, aics, aiv, aicf }

enum UseCardType { none, unknown, video, match }

class ChatCallEvent {
  final LinkjoyAncestorConvict chatCall;

  ChatCallEvent(this.chatCall);
}

class MatchCallEvent {
  final LinkjoyAncestorConvict chatCall;

  MatchCallEvent(this.chatCall);
}

class LinkjoyAncestorConvict {
  static LinkjoyAncestorConvict callInvite(
    LinkjoyUnborn targetUser, {
    int sourceType = 0,
    int sourceId = 0,
    UseCardType? useCardType,
    int? chatPrice,
  }) {
    LinkjoyAncestorConvict chatCall = LinkjoyAncestorConvict(0);
    chatCall.status = ChatCallStatus.trying;
    chatCall.from = LINKJOY.uid();
    chatCall.subscriberId = targetUser.uid;
    chatCall.isInduce = false;
    chatCall.sourceType = sourceType;
    chatCall.sourceId = sourceId;
    chatCall.user = targetUser;
    if (chatPrice != null) {
      chatCall.originPrice = chatPrice;
      int discount =
          LINKJOY.linkjoyUnbornDeposit?.userCurrLevel.discount ?? 100;
      chatCall.chatPrice = (chatPrice * discount / 100).toInt();
    }
    chatCall.setUseCardType(useCardType?.index);
    chatCall.localCreateTime = DateTime.now().millisecondsSinceEpoch;
    chatCall.hasMatchCardBefore = LINKJOY.hasMatchCard;
    chatCall.linkjoyFarmConvictPun = DateTime.now().millisecondsSinceEpoch;

    return chatCall;
  }

  void initCall(LinkjoyAncestorConvict call) {
    if (id <= 0) {
      id = call.id;
    }
    if (chatId == null || chatId == 0) {
      chatId = call.chatId;
    }
    if (from == 0) {
      from = call.from;
    }
    if (subscriberId == 0) {
      subscriberId = call.subscriberId;
    }
    if (channelKey == null || channelKey?.isEmpty == true) {
      channelKey = call.channelKey;
    }
    if (user.uid == 0 || user.uid == call.user.uid) {
      user = call.user;
    }
    isInduce = call.isInduce;
    induceVideo = call.induceVideo;
    sourceType ??= call.sourceType;
    sourceId ??= call.sourceId;
    if (chatPrice == 0) {
      chatPrice = call.chatPrice;
    }
    if (originPrice == 0) {
      originPrice = call.originPrice;
    }
    setUseCardType(call.useCardType);
    rechargePointList ??= call.rechargePointList;
    if (call.linkjoyFarmConvictPun > 0) {
      linkjoyFarmConvictPun = call.linkjoyFarmConvictPun;
    }
    if (call.hasMatchCardBefore) {
      hasMatchCardBefore = true;
    }
  }

  void update(LinkjoyAncestorConvict newValue) {
    status = newValue.status;
    deductionTime = newValue.deductionTime;
    duration = newValue.duration;
    cost = newValue.cost;
    income = newValue.income;
    chatIncome = newValue.chatIncome;
    giftIncome = newValue.giftIncome;
    balance = newValue.balance;
    LINKJOY.linkjoyUnbornDeposit?.balance = balance;
    chatPrice = newValue.chatPrice;
    originPrice = newValue.originPrice;
    byeReason = newValue.byeReason;
    errorTitle = newValue.errorTitle;
    errorDesc = newValue.errorDesc;

    setUseCardType(newValue.useCardType);
    if (isMeCalling() && status == ChatCallStatus.requestTimeout) {
      errorTitle = "linkjoy_caring_convict_no_pervert".tr;
    }
  }

  LinkjoyAncestorConvict(this.id);

  LinkjoyAncestorConvict copyWith({
    int? deductionTime,
    ChatCallStatus? status,
    String? errorTitle,
    String? errorDesc,
  }) {
    return LinkjoyAncestorConvict(id)
      ..user = user
      ..chatId = chatId
      ..from = from
      ..subscriberId = subscriberId
      ..deductionTime = deductionTime ?? this.deductionTime
      ..duration = duration
      ..cost = cost
      ..income = income
      ..chatIncome = chatIncome
      ..giftIncome = giftIncome
      ..balance = balance
      ..chatPrice = chatPrice
      ..originPrice = originPrice
      ..media = media
      ..channelKey = channelKey
      ..status = status ?? this.status
      ..isInduce = isInduce
      ..induceVideo = induceVideo
      ..byeReason = byeReason
      ..sourceType = sourceType
      ..sourceId = sourceId
      ..setUseCardType(useCardType)
      ..localCreateTime = localCreateTime
      ..rechargePointList = rechargePointList
      ..chatUser = chatUser
      ..hasMatchCardBefore = hasMatchCardBefore
      ..linkjoyFarmConvictPun = linkjoyFarmConvictPun
      ..errorTitle = errorTitle ?? this.errorTitle
      ..errorDesc = errorDesc ?? this.errorDesc;
  }

  int id = 0;

  LinkjoyUnborn user = LinkjoyUnborn();

  int? chatId;

  int from = 0;

  int subscriberId = 0;

  int? deductionTime;

  int? duration;

  int? cost;

  int? income;

  int? chatIncome;

  int? giftIncome;

  int balance = LINKJOY.linkjoyUnbornDeposit?.balance ?? 0;

  int chatPrice = 0;

  int originPrice = 0;

  int? media;
  String? channelKey;

  ChatCallStatus status = ChatCallStatus.trying;

  bool isInduce = false;

  String induceVideo = "";

  int? byeReason;

  int? sourceType;

  int? sourceId;

  int? useCardType;

  bool hasMatchCardBefore = false;

  int localCreateTime = 0;

  List<int>? rechargePointList;

  int get theOtherUid => isMeCalling() ? subscriberId : from;

  LinkjoyAncestorUnborn chatUser = LinkjoyAncestorUnborn();

  bool get followed => chatUser.isFollowed == true;

  String errorTitle = "";

  String? errorDesc;

  int linkjoyFarmConvictPun = 0;

  bool balanceMoreThanOneMinute() {
    if (LINKJOY.isLinkjoyFoolishly) return true;
    return balance >= chatPrice;
  }

  bool isMeCalling() {
    return LINKJOY.uid() == from;
  }

  bool isCallingToMe() {
    return LINKJOY.uid() == subscriberId;
  }

  bool hasVideo() {
    return induceVideo.isNotEmpty;
  }

  bool aivCall() {
    return sourceType == ChatCallSourceType.aiv.index;
  }

  bool aicsCall() {
    return sourceType == ChatCallSourceType.aics.index;
  }

  bool aicfCall() {
    return sourceType == ChatCallSourceType.aicf.index;
  }

  bool matchCall() {
    return sourceType == ChatCallSourceType.match.index;
  }

  bool isTryingToCallOthers() {
    return status == ChatCallStatus.trying && isMeCalling();
  }

  bool isTryingToCallMe() {
    return status == ChatCallStatus.trying && !isMeCalling();
  }

  bool isEnd() {
    return status.isCallEnd();
  }

  bool useMatchCard() {
    return useCardType == UseCardType.match.index;
  }

  bool useVideoCard() {
    return useCardType == UseCardType.video.index;
  }

  bool isMeCallError() {
    return isMeCalling() &&
        [
          ChatCallStatus.showCallError,
          ChatCallStatus.requestTimeout,
          ChatCallStatus.busyHere,
        ].contains(status);
  }

  LinkjoyAncestorConvict setUseCardType(int? useCardType) {
    if (useCardType == null || useCardType == 0) {
      return this;
    }

    if (this.useCardType == null || this.useCardType == 0) {
      this.useCardType = useCardType;
    }
    return this;
  }

  bool showCallEnd() {
    if ((chatIncome ?? 0) > 0) {
      return true;
    }

    if ((useMatchCard() || useVideoCard()) && billingStart()) {
      return true;
    }
    return false;
  }

  bool showRechargeWhenCallEnd() {
    if (LINKJOY.isLinkjoyFoolishly == true) {
      return false;
    } else {
      return status == ChatCallStatus.bye && byeReason == 7;
    }
  }

  bool get isInduceMatch =>
      isInduce == true && sourceType == ChatCallSourceType.match.index;

  bool iHungUp() {
    if (byeReason == 5 && isMeCalling()) {
      return true;
    } else if (byeReason == 6 && isCallingToMe()) {
      return true;
    }
    return false;
  }

  bool billingStart() {
    return (deductionTime ?? 0) > 0;
  }

  bool joinChannelStatus() {
    return status.index >= ChatCallStatus.ringing.index &&
        status.index <= ChatCallStatus.confirmed.index;
  }

  void updateCallDuration(int callDuration) {
    int maxValue = 0;
    deductionTime?.let((d) {
      int inSeconds = (DateTime.now().millisecondsSinceEpoch - d) ~/ 1000;
      maxValue = max(inSeconds, callDuration);
    });
    duration?.let((value) {
      maxValue = max(maxValue, value);
    });
    duration = maxValue;
  }

  bool hasBeenDelayed = false;

  Map<String, dynamic> toJson() => <String, dynamic>{
    StringTranslate.e2z("iid"): id,
    StringTranslate.e2z("nchuatfId"): chatId,
    StringTranslate.e2z("ufrfom"): from,
    StringTranslate.e2z("usuubsncruibbernId"): subscriberId,
    StringTranslate.e2z("ndeidubctniounTbimbe"): deductionTime,
    StringTranslate.e2z("bdufraitiion"): duration,
    StringTranslate.e2z("bconst"): cost,
    StringTranslate.e2z("iinbconme"): income,
    StringTranslate.e2z("fbaulauncfe"): balance,
    StringTranslate.e2z("ichiatnPrficne"): chatPrice,
    StringTranslate.e2z("fmeidina"): media,
    StringTranslate.e2z("nchnannnenlKney"): channelKey,
    StringTranslate.e2z("istbatius"): _$ChatCallStatusEnumMap[status]!,
    StringTranslate.e2z("fisbInndufce"): isInduce,
    StringTranslate.e2z("uinfduucebVifdebo"): induceVideo,
    StringTranslate.e2z("ubyueRfeabsoin"): byeReason,
    StringTranslate.e2z("fsoburbcenTyipe"): sourceType,
    StringTranslate.e2z("nsouurnceiId"): sourceId,
    "useCardType": useCardType,
    "user": user.toJson(),
  };

  final _$ChatCallStatusEnumMap = {
    ChatCallStatus.trying: 'trying',
    ChatCallStatus.ringing: 'ringing',
    ChatCallStatus.pickup: 'pickup',
    ChatCallStatus.confirmed: 'confirmed',
    ChatCallStatus.requestTimeout: 'requestTimeout',
    ChatCallStatus.busyHere: 'busyHere',
    ChatCallStatus.rejected: 'rejected',
    ChatCallStatus.canceled: 'canceled',
    ChatCallStatus.unreachable: 'unreachable',
    ChatCallStatus.bye: 'bye',
    ChatCallStatus.showCallError: 'showCallError',
  };

  static LinkjoyAncestorConvict convertChatCallProto(ChatCall p) {
    LinkjoyAncestorConvict l = LinkjoyAncestorConvict(p.id.toInt());
    l.chatId = p.chatId.toInt();
    l.from = p.from.toInt();
    l.deductionTime = p.deductionTime.toInt();
    l.duration = p.duration;
    l.cost = p.cost;
    l.income = p.income;
    l.chatIncome = p.chatIncome;
    l.giftIncome = p.giftIncome;
    l.balance = p.balance.toInt();
    l.chatPrice = p.chatPrice;
    l.originPrice = p.originPrice.toInt();
    l.media = p.media;
    l.channelKey = p.channelKey;
    final statusIndex = p.status.value;
    l.status = ChatCallStatus.values[statusIndex];
    l.isInduce = p.isInduce;
    l.induceVideo = p.induceVideo;
    l.byeReason = p.byeReason;
    l.sourceType = p.sourceType;
    l.setUseCardType(p.useCardType);
    l.cost = p.cost.toInt();
    return l;
  }
}
