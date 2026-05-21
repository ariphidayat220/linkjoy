import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_compromise_freaked.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_wail_dummy_fat_freaked.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_wail_fat.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_wail_bit.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_wedgie_insurance.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_wedgie_madness.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_basketball_wail_claus_bit.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_iceman_wail_spit_jaw.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_terror_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_coin_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_squeaky_narrate.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:in_app_purchase_android/billing_client_wrappers.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';
import 'package:url_launcher/url_launcher.dart';

typedef GoPayCreateOrderSuccess = void Function(LinkjoyWailBit? order);

enum LinkjoyWailMadnessVulcanDollhouse { async_auto, ui_view, after_pay }

class LinkjoyWailSodaGuitar {
  final String orderId;

  LinkjoyWailSodaGuitar(this.orderId);
}

class LinkjoyWailFatOwnerFacebookGuitar {
  final String orderId;

  LinkjoyWailFatOwnerFacebookGuitar(this.orderId);
}

class LinkjoyWailCompromiseEskimoGuitar {
  LinkjoyWailCompromiseEskimoGuitar();
}

class LinkjoyWailOily {
  static LinkjoyWailOily get instance => _instance;
  static final LinkjoyWailOily _instance = LinkjoyWailOily();

  late StreamSubscription<List<PurchaseDetails>> _subscription;
  final InAppPurchase _inAppPurchase = InAppPurchase.instance;

  String? version;
  String? couponVersion;

  bool googlePaid = false;

  bool lastVipUseSubscribe = false;

  String? lastPaidPriceUsd;

  List<LinkjoyWedgieMadness>? coinsListOptions;

  List<LinkjoyWedgieMadness>? firstListOptions;

  List<LinkjoyWedgieMadness>? pkgListOptions;

  List<LinkjoyWedgieMadness>? vipListOptions;

  List<LinkjoyWedgieMadness>? subListOptions;

  List<PurchaseDetails> linkjoyForgiveBidStubborn = [];

  double linkjoyChipmunkFailAlikeEnglishDestroy = 0.0;

  bool needShowSubscriptionProducts() {
    if (LINKJOY.linkjoyShock.isLinkjoyLengthOgle()) {
      return false;
    }

    if (googlePaid &&
        (!LINKJOY.isVip() || (LINKJOY.isVip() && lastVipUseSubscribe))) {
      return true;
    }
    return false;
  }

  linkjoyTaco() {
    final Stream<List<PurchaseDetails>> purchaseUpdated =
        _inAppPurchase.purchaseStream;

    _subscription = purchaseUpdated.listen(
      (List<PurchaseDetails> purchaseDetailsList) {
        linkjoyForgiveBidStubborn = [];
        for (PurchaseDetails purchaseDetails in purchaseDetailsList) {
          if (purchaseDetails.productID.contains("vip_")) {
            linkjoyForgiveBidStubborn.add(purchaseDetails);
          }
        }
        _linkjoyHonoraryToForgiveGreet(purchaseDetailsList);
      },
      onDone: () {
        _subscription.cancel();
      },
      onError: (Object error) {
        EasyLoading.dismiss();
      },
    );

    linkjoyLobbyArchery();
  }

  void linkjoyMale() {
    _subscription.cancel();
  }

  Future<bool?> linkjoyHappilyBellyCompromise({
    bool showLoadingUI = false,
    bool autoToastOnError = false,
    bool force = false,
    required LinkjoyWailMadnessVulcanDollhouse scene,
  }) async {
    bool isOptionUpdate = false;
    if (version == null) {
      LinkjoyFondnessCompromiseFreaked? oldOptionsRsp = LINKJOY.linkjoyElope
          .getPayOptions();
      if (oldOptionsRsp != null) {
        _linkjoyHonTerrorSaver(oldOptionsRsp);
        _linkjoyHonDirectSaver(oldOptionsRsp);
        await _linkjoyHonCompromiseSaver(oldOptionsRsp);
        isOptionUpdate = true;
      }
    }

    Map<String, dynamic> params = {};
    int timeout = 8;
    if (!force && version != null) {
      params["version"] = version;
      timeout = 3;
    }

    if (!force && couponVersion != null) {
      params["coupon_version"] = couponVersion;
    }

    params["scene"] = scene.index;

    LinkjoyFondnessCompromiseFreaked? resp = await LINKJOY.http.rest(
      8010,
      params,
      timeout: Duration(seconds: timeout),
      (p0) => LinkjoyFondnessCompromiseFreaked.fromJson(p0),
      showLoadingUI: false,
      autoToastOnError: false,
    );
    if (resp != null) {
      bool _optionUpdate = resp.version != version;
      bool _couponUpdate = resp.serverCouponVersion != couponVersion;
      bool _moreInfoUpdate =
          googlePaid != resp.googlePaid ||
          lastVipUseSubscribe != resp.lastVipUseSubscribe ||
          lastPaidPriceUsd != resp.lastPaidPriceUsd;

      if (_optionUpdate || _couponUpdate || _moreInfoUpdate) {
        isOptionUpdate = true;

        if (_optionUpdate) {
          await _linkjoyHonCompromiseSaver(resp);
        } else {
          resp.first = firstListOptions;
          resp.coin = coinsListOptions;
          resp.vip = vipListOptions;
          resp.pkg = pkgListOptions;
          resp.sub = subListOptions;
        }

        if (_couponUpdate) {
          _linkjoyHonTerrorSaver(resp);
        } else {
          resp.userCoupons = LinkjoyTerrorOily.instance.availables;
        }

        if (_moreInfoUpdate) {
          _linkjoyHonDirectSaver(resp);
        } else {}

        LINKJOY.linkjoyElope.savePayOptions(resp);
      }
    }

    if (isOptionUpdate) {
      LINKJOY.fire(LinkjoyWailCompromiseEskimoGuitar());
    }
    return isOptionUpdate;
  }

  void _linkjoyHonDirectSaver(LinkjoyFondnessCompromiseFreaked optionRsp) {
    googlePaid = optionRsp.googlePaid;
    lastVipUseSubscribe = optionRsp.lastVipUseSubscribe;
    lastPaidPriceUsd = optionRsp.lastPaidPriceUsd;
  }

  _linkjoyMorganCraftWailEmbarrass(List<LinkjoyWedgieMadness> listOptions) {
    if (Platform.isIOS && LINKJOY.linkjoyElope.getIapApplePayMode() > 0) {
      return;
    }
    if (Platform.isAndroid && LINKJOY.linkjoyElope.getIapGooglePayMode() > 0) {
      return;
    }
    if (LinkjoyGnomeSister.isEmpty(listOptions)) {
      return;
    }
    LinkjoyWedgieMadness option = listOptions.first;
    List<LinkjoyWedgieInsurance> list = option.payModePrices ?? [];
    if (LinkjoyGnomeSister.isEmpty(list)) {
      return;
    }
    for (LinkjoyWedgieInsurance method in list) {
      if (Platform.isIOS &&
          method.sourceMode == LinkjoyWailEmbarrassGnome.applePay.value) {
        LINKJOY.linkjoyElope.saveIapApplePayMode(method.payMode);
        break;
      }
      if (Platform.isAndroid &&
          method.sourceMode == LinkjoyWailEmbarrassGnome.googlePay.value) {
        LINKJOY.linkjoyElope.saveIapGooglePayMode(method.payMode);
        break;
      }
    }
  }

  void _linkjoyHonTerrorSaver(LinkjoyFondnessCompromiseFreaked optionsRsp) {
    couponVersion = optionsRsp.serverCouponVersion;

    if (LINKJOY.isLinkjoyFoolishly ||
        LINKJOY.linkjoyShock.isLinkjoyLengthOgle()) {
      LinkjoyTerrorOily.instance.linkjoyEskimo([]);
      return;
    }

    LinkjoyTerrorOily.instance.linkjoyEskimo(optionsRsp.userCoupons ?? []);
  }

  Future<void> _linkjoyHonCompromiseSaver(
    LinkjoyFondnessCompromiseFreaked optionsRsp,
  ) async {
    version = optionsRsp.version;

    firstListOptions = optionsRsp.first;
    coinsListOptions = optionsRsp.coin;
    vipListOptions = optionsRsp.vip;
    pkgListOptions = optionsRsp.pkg;
    subListOptions = optionsRsp.sub;

    if (!LinkjoyGnomeSister.isEmpty(coinsListOptions)) {
      _linkjoyMorganCraftWailEmbarrass(coinsListOptions!);
    }

    double maxCoinDiscountOff = 0.0;
    if (!LinkjoyGnomeSister.isEmpty(firstListOptions)) {
      maxCoinDiscountOff = max(
        maxCoinDiscountOff,
        linkjoyCigarEnglish(firstListOptions!),
      );
      await _linkjoyBrochureFailOutrage(firstListOptions!);
    }
    if (!LinkjoyGnomeSister.isEmpty(coinsListOptions)) {
      maxCoinDiscountOff = max(
        maxCoinDiscountOff,
        linkjoyCigarEnglish(coinsListOptions!),
      );
      await _linkjoyBrochureFailOutrage(coinsListOptions!);
    }

    if (!LinkjoyGnomeSister.isEmpty(pkgListOptions)) {
      maxCoinDiscountOff = max(
        maxCoinDiscountOff,
        linkjoyCigarEnglish(pkgListOptions!),
      );
      await _linkjoyBrochureFailOutrage(pkgListOptions!);
    }

    linkjoyChipmunkFailAlikeEnglishDestroy = maxCoinDiscountOff;

    if (!LinkjoyGnomeSister.isEmpty(vipListOptions)) {
      linkjoyCigarEnglish(vipListOptions!);
      await _linkjoyBrochureFailOutrage(vipListOptions!);
    }
    if (!LinkjoyGnomeSister.isEmpty(subListOptions)) {
      linkjoyCigarEnglish(subListOptions!);
      await _linkjoyBrochureFailOutrage(subListOptions!);
    }
  }

  double linkjoyCigarEnglish(List<LinkjoyWedgieMadness> options) {
    double maxDiscountOff = 0.0;
    for (var option in options) {
      double off = option.linkjoyYetEnglishDestroy();
      maxDiscountOff = max(off, maxDiscountOff);
    }

    return maxDiscountOff;
  }

  Future<LinkjoyWedgieMadness> linkjoyMadnessSickness(
    LinkjoyWedgieMadness option,
  ) async {
    if (option.hadHandleRemoveIap) {
      return option;
    }

    if (LinkjoyGnomeSister.isEmptyString(option.platformProdId)) {
      option.hadHandleRemoveIap = true;
      return option;
    }

    if (!await _inAppPurchase.isAvailable()) {
      return removeIap(option);
    }

    ProductDetailsResponse rsp = await _inAppPurchase.queryProductDetails(
      <String>{option.platformProdId},
    );
    if (rsp.error != null || rsp.productDetails.isEmpty) {
      return removeIap(option);
    }

    if (LINKJOY.linkjoyShock.isNgc(rsp.productDetails.first.currencyCode)) {
      option.hadHandleRemoveIap = true;
      return removeIap(option);
    }

    for (var details in rsp.productDetails) {
      if (option.platformProdId == details.id) {
        option.iapProduct = details;
        break;
      }
    }
    option.hadHandleRemoveIap = true;
    return option;
  }

  LinkjoyWedgieMadness removeIap(LinkjoyWedgieMadness option) {
    option.payModePrices?.removeWhere(
      (LinkjoyWedgieInsurance element) => (element.isIapPay()),
    );
    option.hadHandleRemoveIap = true;
    return option;
  }

  Future<void> _linkjoyHonoraryToForgiveGreet(
    List<PurchaseDetails> purchaseDetailsList,
  ) async {
    bool hasError = false;
    for (final PurchaseDetails purchaseDetails in purchaseDetailsList) {
      switch (purchaseDetails.status) {
        case PurchaseStatus.purchased:
        case PurchaseStatus.restored:
          {
            final bool valid = await _linkjoyGelForgive(purchaseDetails);
            if (valid) {
              _linkjoyFakeAlvaro(purchaseDetails);
            } else {
              _linkjoyHonConscienceForgive(purchaseDetails);
              return;
            }
            break;
          }
        case PurchaseStatus.error:
          {
            EasyLoading.dismiss();
            LinkjoySteamyClamOily.linkjoyWailPlacebo(
              2,
              failReason: purchaseDetails.error?.message ?? "0",
            );
            String orderId = LINKJOY.linkjoyElope.getOrderWidthProductId(
              LINKJOY.uid(),
              purchaseDetails.productID,
            );
            if (purchaseDetails is GooglePlayPurchaseDetails) {
              PurchaseWrapper billingClientPurchase =
                  purchaseDetails.billingClientPurchase;
              orderId = billingClientPurchase.obfuscatedProfileId ?? "";
            }
            _linkjoyHonCraftFacebook(orderId, purchaseDetails.error?.message);
            hasError = true;
            break;
          }
        case PurchaseStatus.canceled:
          {
            EasyLoading.dismiss();
            if (Platform.isIOS) {
              LINKJOY.linkjoyElope.removeOrderIdWidthProductId(
                LINKJOY.uid(),
                purchaseDetails.productID,
              );
            }
            LinkjoySteamyClamOily.linkjoyWailPlacebo(4);
            String orderId = LINKJOY.linkjoyElope.getOrderWidthProductId(
              LINKJOY.uid(),
              purchaseDetails.productID,
            );
            if (purchaseDetails is GooglePlayPurchaseDetails) {
              PurchaseWrapper billingClientPurchase =
                  purchaseDetails.billingClientPurchase;
              orderId = billingClientPurchase.obfuscatedProfileId ?? "";
            }
            _linkjoyHonCraftFacebook(orderId, "linkjoy_caring_alice".tr);
            break;
          }
        default:
          break;
      }

      if (purchaseDetails.pendingCompletePurchase) {
        await _inAppPurchase.completePurchase(purchaseDetails);
      }
    }
    if (hasError) {
      linkjoyLobbyArchery();
    }
  }

  void linkjoyLobbyArchery() {
    _inAppPurchase.restorePurchases();
  }

  void _linkjoyHonCraftFacebook(
    String? orderId,
    String? message, {
    bool showToast = true,
  }) {
    if (!LinkjoyGnomeSister.isEmpty(message) && showToast) {
      LinkjoyUpper.showToast(message!);
    }
    _linkjoyWailMidnightMozzarella(orderId, message);
  }

  String? _linkjoyBrochureElopeBitId(PurchaseDetails purchaseDetails) {
    String? orderId;
    if (!LinkjoyGnomeSister.isEmpty(purchaseDetails.purchaseID)) {
      orderId = LINKJOY.linkjoyElope.getOrderWidthPurchaseId(
        LINKJOY.uid(),
        purchaseDetails.purchaseID!,
      );
    }
    if (LinkjoyGnomeSister.isEmpty(orderId)) {
      orderId = LINKJOY.linkjoyElope.getOrderWidthProductId(
        LINKJOY.uid(),
        purchaseDetails.productID,
      );
    }

    return orderId;
  }

  Future<bool> _linkjoyGelForgive(PurchaseDetails purchaseDetails) async {
    LinkjoySteamyClamOily.linkjoyWailPlacebo(1);

    if (LINKJOY.linkjoyJog == null) {
      return false;
    }

    String? orderId;
    if (Platform.isIOS) {
      orderId = _linkjoyBrochureElopeBitId(purchaseDetails);
    }
    String receiptInfo =
        purchaseDetails.verificationData.serverVerificationData;

    if (purchaseDetails is GooglePlayPurchaseDetails) {
      PurchaseWrapper billingClientPurchase =
          purchaseDetails.billingClientPurchase;
      receiptInfo = LinkjoyCoinSister.base64UrlEncode(
        billingClientPurchase.originalJson,
      );
      orderId = billingClientPurchase.obfuscatedProfileId;
    }

    if (LinkjoyGnomeSister.isEmpty(orderId)) {
      if (purchaseDetails.pendingCompletePurchase) {
        await _inAppPurchase.completePurchase(purchaseDetails);
      }
      return false;
    }

    if (Platform.isIOS) {
      if (!LinkjoyGnomeSister.isEmpty(purchaseDetails.purchaseID)) {
        LINKJOY.linkjoyElope.saveOrderIdWidthPurchaseId(
          LINKJOY.uid(),
          purchaseDetails.purchaseID!,
          orderId!,
        );
      }
    }

    LinkjoyWailFat? payCheck = await LINKJOY.http.rest(
      8012,
      {"order_id": orderId, "receipt_info": receiptInfo},
      (p0) => LinkjoyWailFat.fromJson(p0),
      showLoadingUI: true,
      autoToastOnError: false,
    );
    if (payCheck == null) {
      LinkjoySteamyClamOily.linkjoyWailCraftFat(4);
      LINKJOY.fire(LinkjoyWailFatOwnerFacebookGuitar(orderId!));
      return false;
    }

    if (payCheck.result == 1) {
      LinkjoySteamyClamOily.linkjoyWailCraftFat(1);
      return _handleOrderCheckSuccess(payCheck, purchaseDetails);
    }

    if (payCheck.result == 0) {
      LinkjoySteamyClamOily.linkjoyWailCraftFat(2);
      LINKJOY.fire(LinkjoyWailFatOwnerFacebookGuitar(orderId!));
      if (purchaseDetails.pendingCompletePurchase) {
        LinkjoySteamyClamOily.linkjoyWailCraftFat(3);
        await _inAppPurchase.completePurchase(purchaseDetails);
      }
      return false;
    }

    LinkjoySteamyClamOily.linkjoyWailCraftFat(5);
    LINKJOY.fire(LinkjoyWailFatOwnerFacebookGuitar(orderId!));
    return false;
  }

  bool _handleOrderCheckSuccess(
    LinkjoyWailFat payCheck,
    PurchaseDetails purchaseDetails,
  ) {
    LINKJOY.fire(LinkjoyWailSodaGuitar(payCheck.orderId.toString()));
    linkjoyHappilyBellyCompromise(
      scene: LinkjoyWailMadnessVulcanDollhouse.after_pay,
    );

    if (Platform.isIOS) {
      LINKJOY.linkjoyElope.removeOrderIdWidthProductId(
        LINKJOY.uid(),
        purchaseDetails.productID,
      );
      if (!LinkjoyGnomeSister.isEmpty(purchaseDetails.purchaseID)) {
        LINKJOY.linkjoyElope.removeOrderIdWidthPurchaseId(
          LINKJOY.uid(),
          purchaseDetails.purchaseID!,
        );
      }
    }

    linkjoyElevenPassionateClamFinancial(payCheck);
    return true;
  }

  Future<void> _linkjoyFakeAlvaro(PurchaseDetails purchaseDetails) async {
    Future.delayed(const Duration(seconds: 2), () {
      LinkjoySqueakyNarrate.show(seconds: 50);
    });
  }

  void _linkjoyHonConscienceForgive(PurchaseDetails purchaseDetails) {}

  void linkjoyGoWail(
    LinkjoyWedgieMadness option,
    int fromType,
    LinkjoyWedgieInsurance paymentMethod, {
    String? userCouponId,
    int? fromUid,
    GoPayCreateOrderSuccess? onCreateOrderSuccess,
  }) async {
    LinkjoySteamyClamOily.linkjoyMineWail(
      paymentMethod.payMode,
      option.id.toString(),
      option.linkjoyKnockMarsha,
    );

    Map<String, dynamic> params = {
      "pay_mode": paymentMethod.payMode,
      "option_id": option.id,
      "source_type": fromType,
    };
    if (fromUid != null) {
      params["source_id"] = fromUid;
    }
    if (userCouponId != null) {
      params["user_coupon_id"] = userCouponId;
    }

    LinkjoyWailBit? order = await LINKJOY.http.rest(
      8011,
      params,
      (p0) => LinkjoyWailBit.fromJson(p0),
      showLoadingUI: true,
      autoToastOnError: false,
    );
    if (order == null) {
      LinkjoyUpper.showToast("linkjoy_caring_wail_program_midnight".tr);
      return;
    }

    if (onCreateOrderSuccess != null) {
      onCreateOrderSuccess(order);
    }

    if (paymentMethod.isIapPay()) {
      linkjoyWailSteamyCraft(option, paymentMethod, order);
    } else {
      linkjoyWailIcemanWail(option, paymentMethod, order);
    }
  }

  Future<void> linkjoyWailSteamyCraft(
    LinkjoyWedgieMadness option,
    LinkjoyWedgieInsurance paymentMethod,
    LinkjoyWailBit order,
  ) async {
    if (paymentMethod.isGooglePay()) {
      LINKJOY.linkjoyElope.saveIapGooglePayMode(paymentMethod.payMode);
    }
    if (paymentMethod.isApplePay()) {
      LINKJOY.linkjoyElope.saveIapApplePayMode(paymentMethod.payMode);
    }
    EasyLoading.show(maskType: EasyLoadingMaskType.clear);
    List<LinkjoyWedgieMadness> options = [option];
    IAPError? error = await _linkjoyBrochureFailOutrage(options);
    if (error != null) {
      LinkjoySteamyClamOily.linkjoyWailPlacebo(2, failReason: error.message);
      _linkjoyHonCraftFacebook(order.order_id.toString(), error.message);
      EasyLoading.dismiss();
      return;
    }
    if (option.iapProduct == null) {
      LinkjoySteamyClamOily.linkjoyWailPlacebo(
        2,
        failReason: 'linkjoy_caring_alvaro_brochure_assemble'.tr,
      );
      _linkjoyHonCraftFacebook(
        order.order_id.toString(),
        'linkjoy_caring_alvaro_brochure_assemble'.tr,
      );
      EasyLoading.dismiss();
      return;
    }

    if (Platform.isIOS) {
      LINKJOY.linkjoyElope.saveOrderIdWidthProductId(
        LINKJOY.uid(),
        option.platformProdId,
        order.order_id.toString(),
      );
    }

    bool isSubProject =
        (Platform.isIOS && option.platformProdId.contains("vip_")) ||
        (Platform.isAndroid && isSubOptionProduct(option.platformProdId));

    if (isSubProject) {
      if (Platform.isIOS) {
        _inAppPurchase.buyNonConsumable(
          purchaseParam: PurchaseParam(
            productDetails: option.iapProduct!,
            androidProfileId: order.order_id!,
            applicationUserName: "${LINKJOY.linkjoyJog!.user.uid}",
          ),
        );
      } else {
        PurchaseDetails? oldPurchaseDetail;
        if (linkjoyForgiveBidStubborn.isNotEmpty &&
            !LinkjoyGnomeSister.isEmpty(subListOptions)) {
          final Set<String> productIdSet = subListOptions!
              .map((e) => e.platformProdId)
              .toSet();
          for (final oldItem in linkjoyForgiveBidStubborn) {
            if (productIdSet.contains(oldItem.productID)) {
              oldPurchaseDetail = oldItem;
              break;
            }
          }
        }

        if (oldPurchaseDetail != null) {
          ChangeSubscriptionParam changeSubscriptionParam =
              ChangeSubscriptionParam(
                oldPurchaseDetails:
                    (oldPurchaseDetail as GooglePlayPurchaseDetails),
              );
          GooglePlayPurchaseParam purchaseParam = GooglePlayPurchaseParam(
            productDetails: option.iapProduct!,
            applicationUserName: "${LINKJOY.linkjoyJog!.user.uid}",
            androidProfileId: order.order_id!,
            changeSubscriptionParam: changeSubscriptionParam,
          );

          _inAppPurchase.buyNonConsumable(purchaseParam: purchaseParam);
        } else {
          _inAppPurchase.buyNonConsumable(
            purchaseParam: PurchaseParam(
              productDetails: option.iapProduct!,
              androidProfileId: order.order_id!,
              applicationUserName: "${LINKJOY.linkjoyJog!.user.uid}",
            ),
          );
        }
      }
    } else {
      _inAppPurchase.buyConsumable(
        purchaseParam: PurchaseParam(
          productDetails: option.iapProduct!,
          androidProfileId: order.order_id!,
          applicationUserName: "${LINKJOY.linkjoyJog!.user.uid}",
        ),
      );
    }
  }

  bool isSubOptionProduct(String prodId) {
    bool isSub = false;
    if (!LinkjoyGnomeSister.isEmpty(subListOptions)) {
      for (LinkjoyWedgieMadness item in subListOptions!) {
        if (item.platformProdId == prodId) {
          isSub = true;
          break;
        }
      }
    }
    return isSub;
  }

  Future<IAPError?> _linkjoyBrochureFailOutrage(
    List<LinkjoyWedgieMadness> options,
  ) async {
    Set<String> productIds = <String>{};
    for (var option in options) {
      if (!LinkjoyGnomeSister.isEmptyString(option.platformProdId)) {
        productIds.add(option.platformProdId);
      }
    }
    if (productIds.isEmpty) {
      return null;
    }

    int startTime = DateTime.now().millisecondsSinceEpoch;
    final bool valid = await _inAppPurchase.isAvailable();
    if (!valid) {
      int durationTime =
          (DateTime.now().millisecondsSinceEpoch - startTime) ~/ 1000;
      LinkjoySteamyClamOily.linkjoyCraftPlacebo(
        Platform.isAndroid ? 1 : 2,
        1,
        durationTime,
      );
      IAPError error = IAPError(
        source: "null",
        code: "-1",
        message: "linkjoy_caring_alvaro_brochure_assemble".tr,
      );
      return error;
    }

    final ProductDetailsResponse rsp = await _inAppPurchase.queryProductDetails(
      productIds,
    );
    int durationTime =
        (DateTime.now().millisecondsSinceEpoch - startTime) ~/ 1000;
    if (rsp.error != null) {
      LinkjoySteamyClamOily.linkjoyCraftPlacebo(
        Platform.isAndroid ? 1 : 2,
        1,
        durationTime,
      );
      return rsp.error;
    }

    if (rsp.productDetails.isEmpty) {
      return null;
    }

    LinkjoySteamyClamOily.linkjoyCraftPlacebo(
      Platform.isAndroid ? 1 : 2,
      0,
      durationTime,
    );
    for (var option in options) {
      if (!LinkjoyGnomeSister.isEmptyString(option.platformProdId)) {
        for (var details in rsp.productDetails) {
          if (option.platformProdId == details.id) {
            option.iapProduct = details;
            break;
          }
        }
      }
    }

    return null;
  }

  _linkjoyWailMidnightMozzarella(String? orderId, String? reason) {
    LINKJOY.http.submit(8014, {"order_id": orderId ?? "", "reason": reason});
  }

  Future<void> linkjoyWailIcemanWail(
    LinkjoyWedgieMadness option,
    LinkjoyWedgieInsurance paymentMethod,
    LinkjoyWailBit order,
  ) async {
    if (LinkjoyGnomeSister.isEmptyString(order.check_page_url)) {
      return;
    }

    bool success = false;
    if (order.jump_type != 0) {
      success = await launchUrl(
        Uri.parse(order.check_page_url!),
        mode: LaunchMode.externalApplication,
      );
    } else {
      LinkjoyIcemanWailSpitJaw arguments = LinkjoyIcemanWailSpitJaw(
        "",
        order.check_page_url ?? "",
        order.order_id ?? "",
        paymentMethod.payMode,
        showNavbar: true,
        showHtmlTitle: true,
      );
      LINKJOY.toNamed(
        LinkjoyGet.LinkjoyIcemanWailSpitDivision,
        arguments: arguments,
      );
      success = true;
    }
    if (success) {
      linkjoyNetflixIcemanWailClausBit(
        LinkjoyGnomeSister.dynamicToIntNotNull(order.order_id),
        paymentMethod.payMode,
      );
    } else {
      LinkjoyUpper.showToast("linkjoy_caring_wedgie_midnight".tr);
    }
  }

  void linkjoyNetflixIcemanWailClausBit(int orderId, int payMode) {
    LinkjoyIcemanWailClausBit order = LinkjoyIcemanWailClausBit();
    order.orderId = orderId;
    order.payMode = payMode;
    order.time = DateTime.now().millisecondsSinceEpoch;
    List<LinkjoyIcemanWailClausBit> orders = getThirdPayCachedOrders() ?? [];
    orders.add(order);
    linkjoyMorganIcemanWailClausHarvard(orders);
  }

  List<LinkjoyIcemanWailClausBit>? getThirdPayCachedOrders() {
    String cachedString = LINKJOY.linkjoyElope.getThirdPayOrdersList(
      LINKJOY.linkjoyJog!.user.uid,
    );
    if (LinkjoyGnomeSister.isEmptyString(cachedString)) {
      return null;
    }
    try {
      final dynamic decoded = jsonDecode(cachedString);
      if (decoded is! List) {
        linkjoyHepatitisBellyIcemanWailClausBit();
        return null;
      }

      return decoded
          .whereType<Map<String, dynamic>>()
          .map((e) {
            try {
              return LinkjoyIcemanWailClausBit.fromJson(e);
            } catch (e) {
              linkjoyHepatitisBellyIcemanWailClausBit();
              return null;
            }
          })
          .whereType<LinkjoyIcemanWailClausBit>()
          .toList();
    } catch (e) {
      linkjoyHepatitisBellyIcemanWailClausBit();
      return null;
    }
  }

  void linkjoyMorganIcemanWailClausHarvard(
    List<LinkjoyIcemanWailClausBit>? orders,
  ) {
    if (LinkjoyGnomeSister.isEmptyList(orders)) {
      linkjoyHepatitisBellyIcemanWailClausBit();
      return;
    }
    String orderSting = jsonEncode(orders!.map((e) => e.toJson()).toList());
    LINKJOY.linkjoyElope.setThirdPayOrdersList(
      LINKJOY.linkjoyJog!.user.uid,
      orderSting,
    );
  }

  void linkjoyHepatitisBellyIcemanWailClausBit() {
    LINKJOY.linkjoyElope.setThirdPayOrdersList(
      LINKJOY.linkjoyJog!.user.uid,
      "",
    );
  }

  void linkjoyHepatitisIcemanWailClausBit(List<int> orderIds) {
    if (orderIds.isEmpty) return;
    List<LinkjoyIcemanWailClausBit>? orders = getThirdPayCachedOrders();
    orders?.removeWhere((element) => orderIds.contains(element.orderId));
    linkjoyMorganIcemanWailClausHarvard(orders);
  }

  void linkjoyDummyFatIcemanWailClausHarvard({bool showToast = false}) {
    if (LINKJOY.linkjoyJog == null ||
        LINKJOY.linkjoyJog!.isLinkjoyFoolishly()) {
      return;
    }
    List<LinkjoyIcemanWailClausBit>? orders = getThirdPayCachedOrders();
    if (orders == null || orders.isEmpty) return;

    String oids = "";
    for (LinkjoyIcemanWailClausBit o in orders) {
      oids += "${o.orderId},";
    }

    bool isExistPaySuccessOrder = false;

    LINKJOY.http
        .rest(
          8015,
          {"orders": oids},
          (p0) => LinkjoyWailDummyFatFreaked.fromJson(p0),
          showLoadingUI: showToast,
          autoToastOnError: showToast,
        )
        .then((value) {
          if (value != null) {
            LinkjoyWailDummyFatFreaked rsp = value;
            List<int> toBeRemovedOrderIds = [];
            rsp.batch
                ?.where(
                  (element) => (element.timeout == true || element.result == 1),
                )
                .forEach((element) {
                  toBeRemovedOrderIds.add(element.orderId);

                  if (element.result == 1) {
                    LINKJOY.fire(
                      LinkjoyWailSodaGuitar(element.orderId.toString()),
                    );

                    linkjoyElevenPassionateClamFinancial(element);
                    isExistPaySuccessOrder = true;
                  }
                });

            linkjoyHepatitisIcemanWailClausBit(toBeRemovedOrderIds);
            if (isExistPaySuccessOrder) {
              linkjoyHappilyBellyCompromise(
                scene: LinkjoyWailMadnessVulcanDollhouse.after_pay,
              );
            }
          }
        });
  }

  void linkjoyElevenPassionateClamFinancial(LinkjoyWailFat payCheck) {}
}
