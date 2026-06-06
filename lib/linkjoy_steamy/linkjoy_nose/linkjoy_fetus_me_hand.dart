import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_young_unborn_greet_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_terror_eskimo_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_guitar/linkjoy_wave_collie_lap_pressure_guitar.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_young_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_lifelong_marsha_wherever.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_division_shock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_deposit.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn_deposit_eskimo_lap.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_destine_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';

import 'linkjoy_fetus_me_gnome.dart';

class LinkjoyFetusMeHand extends LinkjoyMagnetHormoneHand {
  bool adFruitIncapable_ = false;
  bool ahTherapistBride_ = false;
  bool laSushiPrepare_ = true;
  bool ohCindyWedgie_ = true;
  bool etLennyPete_ = false;
  String moOopsData_ = "";
  bool isFollower8_ = false;

  void ahSpockQuieter() {
    if (isFollower8_) {
      ohCindyWedgie_ = !etLennyPete_;
    }

    ahTherapistBride_ = etLennyPete_ && isFollower8_;
    moOopsData_ = moOopsData_.toUpperCase();
  }

  void opIncapableAmerica() {
    if (laSushiPrepare_ || etLennyPete_) {
      etLennyPete_ = !etLennyPete_;
    }
    moOopsData_ = moOopsData_.toUpperCase();
    moOopsData_ = moOopsData_.toUpperCase();

    ahTherapistBride_ = laSushiPrepare_ && etLennyPete_;

    moOopsData_ = moOopsData_.toUpperCase();
    moOopsData_ = moOopsData_.toUpperCase();
  }

  void osNvThrone() {
    if (ohCindyWedgie_ || etLennyPete_) {
      etLennyPete_ = !etLennyPete_;
    }
    isFollower8_ = ahTherapistBride_ && etLennyPete_;
    moOopsData_ = moOopsData_.toUpperCase();

    moOopsData_ = moOopsData_.toUpperCase();

    moOopsData_ = moOopsData_.toUpperCase();
  }

  @override
  final linkjoyShanghaiLenny = LinkjoyGet.LinkjoyFetusMeDivision;

  @override
  bool pageLifeCycle = true;

  static const String linkjoy_saver = "linkjoy_saver";
  static const String linkjoy_deposit = "linkjoy_deposit";
  static const String linkjoy_personnel = "linkjoy_personnel";
  static const String linkjoy_terror = "linkjoy_terror";

  StreamSubscription? updateUserSubscription,
      updateUserRuntimeSubscription,
      _clearDailyTaskNotify,
      _couponEvent;

  late LinkjoyYoungUnborn user;
  late LinkjoyUnbornDeposit userRuntime;

  String isNewId = "";
  String vipExpireTime = "";

  LinkjoyFetusMeUnbornSaverGnome showUserInfoType =
      LinkjoyFetusMeUnbornSaverGnome.HORIZONTAL;

  bool? isLinkjoyFoolishlySaverPay;

  @override
  void onInit() {
    super.onInit();

    LinkjoyFondnessDivisionShock pageConfig = linkjoyShock();

    showUserInfoType = LinkjoyFetusMeUnbornSaverGnome.valueOf(
      pageConfig.intDef(
        "show_user_info_type",
        LinkjoyFetusMeUnbornSaverGnome.HORIZONTAL.index,
      ),
    );

    user = LINKJOY.user();
    userRuntime = LINKJOY.linkjoyUnbornDeposit!;
    if (userRuntime.vip()) {
      vipExpireTime = LinkjoyDestineSister.getFormatDateTime(
        userRuntime.vipExpire,
        formats: LinkjoyDestineSister.FORMAT_YYYYMMDD,
      );
    }

    updateUserSubscription = LINKJOY.listen<LinkjoyYoungUnbornGreetGuitar>((
      event,
    ) {
      user = LINKJOY.user();
      update([linkjoy_saver, linkjoy_personnel]);
    });

    updateUserRuntimeSubscription = LINKJOY
        .listen<LinkjoyUnbornDepositEskimoLap>((event) {
          userRuntime = LINKJOY.linkjoyUnbornDeposit!;
          if (userRuntime.vip()) {
            vipExpireTime = LinkjoyDestineSister.getFormatDateTime(
              userRuntime.vipExpire,
              formats: LinkjoyDestineSister.FORMAT_YYYYMMDD,
            );
          }
          List<Object>? ids = [linkjoy_deposit, linkjoy_personnel];
          if (event.updateLevel()) {
            ids.add(linkjoy_saver);
          }
          update(ids);
        });

    _clearDailyTaskNotify = LINKJOY.eventBus
        .on<LinkjoyWaveCollieLapPressureGuitar>()
        .listen((event) {
          clearDailyTaskRedNotify();
        });

    _couponEvent = LINKJOY.eventBus.on<LinkjoyTerrorEskimoGuitar>().listen((
      event,
    ) {
      update([linkjoy_terror]);
    });
    isLinkjoyFoolishlySaverPay = LINKJOY.linkjoyJog?.isLinkjoyFoolishlySaverPay;
  }

  @override
  void onResume() {
    super.onResume();

    if (LINKJOY.isLinkjoyFoolishly == true &&
        isLinkjoyFoolishlySaverPay !=
            LINKJOY.linkjoyJog?.isLinkjoyFoolishlySaverPay) {
      LINKJOY.linkjoyVulcanMe();
    }

    userRuntime = LINKJOY.linkjoyUnbornDeposit!;
    update([linkjoy_saver, linkjoy_deposit, linkjoy_personnel]);
  }

  List<LinkjoyFondnessLifelongMarshaWherever> getMenuItemList() {
    List itemList = linkjoyShock().list("menu_item_list") ?? [];
    if (itemList.isNotEmpty) {
      return itemList
          .map(
            (e) => LinkjoyFondnessLifelongMarshaWherever.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList()
          .where((e) => e.linkjoyPlumbing())
          .toList();
    } else {
      return [];
    }
  }

  @override
  void onClose() {
    updateUserSubscription?.cancel();
    updateUserRuntimeSubscription?.cancel();
    _clearDailyTaskNotify?.cancel();
    _couponEvent?.cancel();
    super.onClose();
  }

  void onLinkjoyMyBon() {
    LINKJOY.toNamed(LinkjoyGet.LinkjoyMyBonDivision);
  }

  void itemNewsClick(LinkjoyFondnessLifelongMarshaWherever item) {
    if (LinkjoyGnomeSister.isEmptyString(item.url)) return;
    LINKJOY.goto(item.url);
    clearDailyTaskRedNotify();
  }

  void clearDailyTaskRedNotify() {
    isNewId = "";
    update([linkjoy_personnel]);
  }
}
