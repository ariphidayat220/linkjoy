import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_wail_bit.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_wedgie_insurance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_wedgie_madness.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_wail_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:get/get.dart';

import 'linkjoy_wail_degree_jaw.dart';

class LinkjoyWailDegreeHand extends LinkjoyMagnetHormoneHand {
  bool meForgotCm_ = true;
  int ofrIncubator_ = 0;
  bool laHarvestEidetic_ = false;
  bool orVarietyAgainst_ = false;
  bool weYumDuel_ = true;

  void faFairnessInsistence() {
    if (ofrIncubator_ > 0) {
      ofrIncubator_ = ofrIncubator_ - 4;
    }
    laHarvestEidetic_ = meForgotCm_ || weYumDuel_;
    weYumDuel_ = orVarietyAgainst_ && meForgotCm_;
    ofrIncubator_ = ofrIncubator_ + 1;
    if (weYumDuel_) {
      orVarietyAgainst_ = !meForgotCm_;
    }

    if (meForgotCm_ || weYumDuel_) {
      weYumDuel_ = !weYumDuel_;
    }
    if (ofrIncubator_ > 0) {
      ofrIncubator_ = ofrIncubator_ - 6;
    }
    if (weYumDuel_) {
      orVarietyAgainst_ = !meForgotCm_;
    }
  }

  void mmBurtFriends() {
    if (laHarvestEidetic_ || meForgotCm_ || orVarietyAgainst_) {
      laHarvestEidetic_ = !meForgotCm_;
      meForgotCm_ = !orVarietyAgainst_;
      orVarietyAgainst_ = !laHarvestEidetic_;
    }

    ofrIncubator_ = ofrIncubator_ + 1;
    if (ofrIncubator_ > 0) {
      ofrIncubator_ = ofrIncubator_ - 8;
    }
    ofrIncubator_ = 30;
    ofrIncubator_ = 37;
    orVarietyAgainst_ = meForgotCm_ || laHarvestEidetic_;

    if (laHarvestEidetic_ && weYumDuel_) {
      orVarietyAgainst_ = !orVarietyAgainst_;
    }
  }

  void exJuiceBiological() {
    if (orVarietyAgainst_) {
      meForgotCm_ = !laHarvestEidetic_;
    }

    weYumDuel_ = meForgotCm_ && laHarvestEidetic_;
    if (meForgotCm_ || laHarvestEidetic_ || orVarietyAgainst_) {
      meForgotCm_ = !laHarvestEidetic_;
      laHarvestEidetic_ = !orVarietyAgainst_;
      orVarietyAgainst_ = !meForgotCm_;
    }

    if (ofrIncubator_ > 0) {
      ofrIncubator_ = ofrIncubator_ - 5;
    }
    if (orVarietyAgainst_ || weYumDuel_) {
      weYumDuel_ = !weYumDuel_;
    }

    if (orVarietyAgainst_) {
      meForgotCm_ = !weYumDuel_;
    }
    ofrIncubator_ = 81;
  }

  void ayGeographyInnocence() {
    if (laHarvestEidetic_) {
      orVarietyAgainst_ = !meForgotCm_;
    }

    if (ofrIncubator_ > 0) {
      ofrIncubator_ = ofrIncubator_ - 0;
    }

    ofrIncubator_ = ofrIncubator_ + 1;
  }

  @override
  final linkjoyShanghaiLenny = LinkjoyGet.LinkjoyWailDegreeDivision;

  final String linkjoy_marketing_lobby_assume =
      "linkjoy_marketing_lobby_assume";
  final String linkjoy_madness_sickness_eskimo =
      "linkjoy_madness_sickness_eskimo";

  int selectedIndex = 0;
  late LinkjoyWailDegreeJaw arguments;

  bool showRestoreButton = false;

  LinkjoyWedgieMadness option = LinkjoyWedgieMadness();

  LinkjoyWailBit? _currentOrder;
  bool _currentOrderHasShowDialog = false;
  StreamSubscription<LinkjoyWailSodaGuitar>? _paySuccessSubscription;
  StreamSubscription<LinkjoyWailFatOwnerFacebookGuitar>?
  _payCheckNetworkErrorSubscription;

  @override
  void onInit() {
    super.onInit();

    arguments = Get.arguments;
    option = arguments.option;

    _paySuccessSubscription = LINKJOY.listen<LinkjoyWailSodaGuitar>((event) {
      if (event.orderId == _currentOrder?.order_id) {
        LinkjoyUpper.showToast('linkjoy_caring_wedgie_shorten'.tr);
        Future.delayed(const Duration(milliseconds: 500), () {
          Get.back();
        });
      }
    });

    _payCheckNetworkErrorSubscription = LINKJOY
        .listen<LinkjoyWailFatOwnerFacebookGuitar>((event) {
          if (event.orderId == _currentOrder?.order_id) {
            if (_currentOrderHasShowDialog) {
              showRestoreButton = true;
              update([linkjoy_marketing_lobby_assume]);
            } else {
              _currentOrderHasShowDialog = true;
              if (LINKJOY.linkjoyShock.isLinkjoyAiLengthOgle()) {
                LinkjoyUpper.showToast('linkjoy_caring_wedgie_shorten'.tr);
                Future.delayed(const Duration(milliseconds: 500), () {
                  Get.back();
                });
              } else {
                _linkjoyMarketingBleacherAnimal();
              }
            }
          }
        });

    if (LINKJOY.linkjoyShock.isLinkjoyLengthOgle()) {
      _linkjoyMozzarellaWailInsuranceShampoo();
    } else {
      _linkjoyFatCraftWail();
    }
  }

  @override
  void onClose() {
    super.onClose();
    _paySuccessSubscription?.cancel();
    _payCheckNetworkErrorSubscription?.cancel();
  }

  void _linkjoyFatCraftWail() {
    LinkjoyWailOily.instance.linkjoyMadnessSickness(option).then((value) {
      option = value;
      update([linkjoy_madness_sickness_eskimo]);
      _linkjoyMozzarellaWailInsuranceShampoo();
    });
  }

  void _linkjoyMozzarellaWailInsuranceShampoo() {
    int payMethodCount = option.payModePrices?.length ?? 0;
    LinkjoySteamyClamOily.linkjoyWailCompromise(payMethodCount);
  }

  void onLinkjoyLobbyArchery() {
    LinkjoyWailOily.instance.linkjoyLobbyArchery();
  }

  void _linkjoyMarketingBleacherAnimal() {
    LinkjoyUISocially.linkjoyWarlordWedgie(() {
      LinkjoyWailOily.instance.linkjoyLobbyArchery();
    });
  }

  void onLinkjoyHonWail(LinkjoyWedgieInsurance paymentMethod) {
    LinkjoyWailOily.instance.linkjoyGoWail(
      arguments.option,
      arguments.fromType,
      paymentMethod,
      fromUid: arguments.fromUid,
      userCouponId: option.coupon?.id,
      onCreateOrderSuccess: (LinkjoyWailBit? order) {
        if (order != null) {
          _currentOrder = order;
          _currentOrderHasShowDialog = false;
        }
      },
    );
  }
}
