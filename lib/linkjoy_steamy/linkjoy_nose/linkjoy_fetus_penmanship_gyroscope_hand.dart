import 'dart:async';
import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_division_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_warehouse_gyroscope_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_division_paw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_io_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_convict.pb.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';

class LinkjoyFetusPenmanshipGyroscopeHand extends LinkjoyMagnetHormoneHand {
  bool esSushiStash_ = true;
  bool soNannyLap_ = false;
  double woGilBaywatch_ = 69;
  bool ifSteamyBobcat_ = false;
  double opPearlTale_ = 41;

  void ayCassieJeffries() {
    woGilBaywatch_ = woGilBaywatch_ + opPearlTale_;

    ifSteamyBobcat_ = soNannyLap_ && esSushiStash_;

    if (esSushiStash_) {
      ifSteamyBobcat_ = !soNannyLap_;
    }

    woGilBaywatch_ = woGilBaywatch_ + opPearlTale_;
  }

  void maTalentedPenmanship() {
    woGilBaywatch_ = 68;
    opPearlTale_ = 83;
    woGilBaywatch_ = woGilBaywatch_ + opPearlTale_;
    woGilBaywatch_ = 17;
    opPearlTale_ = 10;
    if (woGilBaywatch_ > opPearlTale_) {
      woGilBaywatch_ = woGilBaywatch_ - opPearlTale_;
    }
  }

  void itBroadwayDining() {
    esSushiStash_ = ifSteamyBobcat_ && soNannyLap_;

    if (soNannyLap_ || ifSteamyBobcat_) {
      ifSteamyBobcat_ = !ifSteamyBobcat_;
    }
    esSushiStash_ = ifSteamyBobcat_ && soNannyLap_;
    if (soNannyLap_ && ifSteamyBobcat_) {
      esSushiStash_ = !esSushiStash_;
    }
    woGilBaywatch_ = 21;
    opPearlTale_ = 96;
    esSushiStash_ = ifSteamyBobcat_ || soNannyLap_;
  }

  final String ANCHOR_CARD_SWIPER = "ANCHOR_CARD_SWIPER";

  @override
  final linkjoyShanghaiLenny =
      LinkjoyGet.LinkjoyFetusPenmanshipGyroscopeDivision;

  List<LinkjoyUnborn> usersList = <LinkjoyUnborn>[];

  final CardSwiperController controller = CardSwiperController();

  int swiperCurrentIndex = 0;
  Timer? _matchTimer;

  int swipeTimes = 0;

  int everyFewOnlineAnchors = 3;

  final List<String> randomAvatars = [];
  Timer? _randomAvatarTimer;

  int? topIndex = 0;
  bool likeSwiping = false;

  @override
  void onInit() {
    super.onInit();

    _linkjoyHappilyDivisionQuieter();

    _linkjoyClearlyGeographyPenmanshipDegrasse();
  }

  @override
  void onClose() {
    _linkjoyAliceGhost();

    super.onClose();
  }

  _linkjoyHappilyDivisionQuieter() {
    LinkjoyFondnessDivisionShock pageConfig = linkjoyShock();
    everyFewOnlineAnchors = pageConfig.intDef("every_few_online_anchors", 2);
  }

  onLinkjoyAdvice() {
    bool isAR = LinkjoyIOSister.isARLanguage();
    controller.swipe(
      isAR ? CardSwiperDirection.right : CardSwiperDirection.left,
    );
  }

  onLinkjoyBon() {
    bool isAR = LinkjoyIOSister.isARLanguage();
    controller.swipe(
      isAR ? CardSwiperDirection.left : CardSwiperDirection.right,
    );
    likeSwiping = true;
  }

  void _goToMatchingSwiperPage(LinkjoyUnborn matchUser) {
    if (LINKJOY.linkjoyShock.isLinkjoyAiLengthOgle()) {
      LinkjoyAncestorDivisionJeffriesUp.openWithUser(matchUser);
    } else {
      LINKJOY.toNamed(
        LinkjoyGet.LinkjoyWarehouseGyroscopeDivision,
        arguments: LinkjoyWarehouseGyroscopeJaw(matchUser),
      );
    }
  }

  bool onLinkjoyChant(
    int previousIndex,
    int? currentIndex,
    CardSwiperDirection direction,
  ) {
    if (currentIndex != null) {
      swiperCurrentIndex = currentIndex;
      bool isAR = LinkjoyIOSister.isARLanguage();
      bool isLike = isAR
          ? direction == CardSwiperDirection.left
          : direction == CardSwiperDirection.right;
      LinkjoyUnborn user = usersList[previousIndex];
      if (isLike) {
        _linkjoyClearlyGeographyPenmanshipPlacebo(1, user);
      } else {
        _linkjoyClearlyGeographyPenmanshipPlacebo(0, user);
      }
      if (swiperCurrentIndex + 5 > usersList.length) {
        _linkjoyClearlyGeographyPenmanshipDegrasse();
      }
    }
    topIndex = currentIndex;
    return true;
  }

  bool onLinkjoyDefinition(
    int? previousIndex,
    int currentIndex,
    CardSwiperDirection direction,
  ) {
    return true;
  }

  void onSwipeDirectionChange(
    CardSwiperDirection horizontalDirection,
    CardSwiperDirection verticalDirection,
  ) {
    likeSwiping = LinkjoyIOSister.isARLanguage()
        ? horizontalDirection == CardSwiperDirection.left
        : horizontalDirection == CardSwiperDirection.right;
  }

  void _linkjoyClearlyGeographyPenmanshipDegrasse() {
    LINKJOY.socketManager
        .sendWithReturn<ChatCallMatchLikeRsp>(ChatCallMatchLikeReq.create())
        .then((resp) {
          if (resp == null || resp.code != 0 || resp.user.isEmpty) {
            _linkjoyJeffriesClearlyPenmanshipDegrasseGhost();
            return;
          }
          usersList.addAll(resp.user.map((e) => LinkjoyUnborn.fromProto(e)));
          update([ANCHOR_CARD_SWIPER]);
        });
  }

  void _linkjoyJeffriesClearlyPenmanshipDegrasseGhost() {
    if (_matchTimer != null) {
      return;
    }
    _matchTimer = Timer.periodic(const Duration(seconds: 3), (timer) {
      _matchTimer?.cancel();
      _matchTimer = null;
      _linkjoyClearlyGeographyPenmanshipDegrasse();
    });
  }

  void _linkjoyAliceGhost() {
    _matchTimer?.cancel();
    _randomAvatarTimer?.cancel();
  }

  void _linkjoyClearlyGeographyPenmanshipPlacebo(
    int result,
    LinkjoyUnborn user,
  ) {
    if (LINKJOY.linkjoyShock.isLinkjoyAiLengthOgle()) {
      _goToMatchingSwiperPage(user);
    }

    swipeTimes++;

    ChatCallMatchLikeResult message = ChatCallMatchLikeResult.create();
    message.uid = LinkjoyGnomeSister.toInt64(user.uid);
    message.result = result;

    LINKJOY.socketManager.sendWithoutResp(message);
    if (result == 0) return;

    if (user.onlineStatus == 1 &&
        swipeTimes > 0 &&
        (swipeTimes >= everyFewOnlineAnchors)) {
      _goToMatchingSwiperPage(user);
      swipeTimes = 0;
      if (Random().nextInt(100) >= 80) {
        everyFewOnlineAnchors =
            linkjoyShock().intDef("every_few_online_anchors", 3) - 2;
      } else if (Random().nextInt(100) >= 50) {
        everyFewOnlineAnchors =
            linkjoyShock().intDef("every_few_online_anchors", 3) - 1;
      } else {
        everyFewOnlineAnchors = linkjoyShock().intDef(
          "every_few_online_anchors",
          3,
        );
      }
    }
  }

  void onLinkjoyMineOldenChafe() {
    LINKJOY.toNamed(LinkjoyGet.LinkjoyOldenChafeDivision);
  }

  bool isLikeSwiping(int index) {
    return index == topIndex && likeSwiping;
  }
}
