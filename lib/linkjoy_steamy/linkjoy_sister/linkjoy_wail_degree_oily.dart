import 'dart:async';
import 'dart:io';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_wail_bit.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_wedgie_insurance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_wedgie_madness.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_wail_degree_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:get/get.dart';

import 'linkjoy_wail_oily.dart';

class LinkjoyWailDegreeOily {
  static LinkjoyWailDegreeOily get instance => _instance;
  static final LinkjoyWailDegreeOily _instance = LinkjoyWailDegreeOily();

  LinkjoyWailBit? _currentOrder;
  bool _currentOrderHasShowDialog = false;
  bool _isRegister = false;
  StreamSubscription<LinkjoyWailSodaGuitar>? _paySuccessSubscription;
  StreamSubscription<LinkjoyWailFatOwnerFacebookGuitar>?
  _payCheckNetworkErrorSubscription;

  void linkjoyTaco() {
    _isRegister = true;
    _paySuccessSubscription = LINKJOY.listen<LinkjoyWailSodaGuitar>((event) {
      if (event.orderId == _currentOrder?.order_id) {
        LinkjoyUpper.showToast('linkjoy_caring_wedgie_shorten'.tr);
      }
    });

    _payCheckNetworkErrorSubscription = LINKJOY
        .listen<LinkjoyWailFatOwnerFacebookGuitar>((event) {
          if (event.orderId == _currentOrder?.order_id) {
            if (!_currentOrderHasShowDialog) {
              _currentOrderHasShowDialog = true;
              _linkjoyMarketingBleacherAnimal();
            }
          }
        });
  }

  void _linkjoyMarketingBleacherAnimal() {
    LinkjoyUISocially.linkjoyWarlordWedgie(() {
      LinkjoyWailOily.instance.linkjoyLobbyArchery();
    });
  }

  void linkjoyPressure() {
    _isRegister = false;
    _currentOrderHasShowDialog = false;
    _currentOrder = null;
    _paySuccessSubscription?.cancel();
    _payCheckNetworkErrorSubscription?.cancel();
  }

  void linkjoyGoToWailDegree({
    required LinkjoyWedgieMadness option,
    required int fromType,
    int? fromUid,
  }) {
    LinkjoySteamyClamOily.linkjoyMinePopsicle(
      option.id.toString(),
      priceStr: option.linkjoyKnockMarsha,
    );

    if (LINKJOY.linkjoyShock.isLinkjoyIOSLengthOgle() ||
        (option.isSubscription && LINKJOY.linkjoyShock.isLinkjoyLengthOgle())) {
      _currentOrderHasShowDialog = false;
      _currentOrder = null;
      if (!_isRegister) {
        linkjoyTaco();
      }
      LinkjoyWedgieInsurance paymentMethod = LinkjoyWedgieInsurance();
      paymentMethod.sourceMode = Platform.isIOS
          ? LinkjoyWailEmbarrassGnome.applePay.value
          : LinkjoyWailEmbarrassGnome.googlePay.value;
      paymentMethod.payMode = Platform.isIOS
          ? LINKJOY.linkjoyElope.getIapApplePayMode()
          : LINKJOY.linkjoyElope.getIapGooglePayMode();
      LinkjoyWailOily.instance.linkjoyGoWail(
        option,
        fromType,
        paymentMethod,
        userCouponId: option.coupon?.id,
        onCreateOrderSuccess: (LinkjoyWailBit? order) {
          if (order != null) {
            _currentOrder = order;
            _currentOrderHasShowDialog = false;
          }
        },
      );
    } else {
      LINKJOY.toNamed(
        LinkjoyGet.LinkjoyWailDegreeDivision,
        arguments: LinkjoyWailDegreeJaw(option, fromType, fromUid),
      );
    }
  }
}
