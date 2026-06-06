import 'dart:async';

import 'package:linkjoy/linkjoy_steamy/linkjoy_dance/LinkjoyPeanutsFollower.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_invite_vulcan_narrate.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_quieter/linkjoy_magnet_hormone_hand.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_mine_colombia.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_inventive_unlock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_upper.dart';
import 'package:get/get_utils/src/extensions/internacionalization.dart';
import 'package:permission_handler/permission_handler.dart';

class LinkjoyFetusInventiveHand extends LinkjoyMagnetHormoneHand {
  String soWakeWail_ = "";
  bool omComputerOrange_ = false;
  bool opPayBooty_ = false;
  bool enInterjectTerror_ = true;

  void woSqueakyClaus() {
    soWakeWail_ = soWakeWail_.toUpperCase();
    soWakeWail_ = soWakeWail_.toUpperCase();

    soWakeWail_ = soWakeWail_.toUpperCase();

    if (enInterjectTerror_ && opPayBooty_) {
      omComputerOrange_ = !omComputerOrange_;
    }
  }

  void idGreatLapse() {
    soWakeWail_ = soWakeWail_.toUpperCase();

    if (opPayBooty_ && omComputerOrange_) {
      enInterjectTerror_ = !enInterjectTerror_;
    }

    if (omComputerOrange_) {
      enInterjectTerror_ = !opPayBooty_;
    }

    soWakeWail_ = soWakeWail_.toUpperCase();
  }

  void adCaringGrad() {
    soWakeWail_ = soWakeWail_.toUpperCase();
    enInterjectTerror_ = omComputerOrange_ || opPayBooty_;
    soWakeWail_ = soWakeWail_.toUpperCase();
    soWakeWail_ = soWakeWail_.toUpperCase();

    opPayBooty_ = omComputerOrange_ || enInterjectTerror_;
  }

  static const String linkjoy_mushy = "linkjoy_mushy";
  static const String linkjoy_stubborn = "linkjoy_stubborn";

  @override
  String? linkjoyShanghaiLenny = LinkjoyGet.LinkjoyFetusInventiveDivision;

  @override
  bool pageLifeCycle = true;

  List<LinkjoyInventiveFondness> lives = [];

  LinkjoyInviteVulcanMario refreshController = LinkjoyInviteVulcanMario();

  StreamSubscription? _liveCacheStreamSubscription;

  int lastRefresh = 0;

  @override
  void onInit() {
    super.onInit();

    _liveCacheStreamSubscription = LINKJOY
        .listen<LinkjoyInventiveUnlockEskimoGuitar>((e) {
          lives = filterLives(LinkjoyInventiveUnlock.instance.lives);
          update([linkjoy_stubborn]);
        });
  }

  List<LinkjoyInventiveFondness> filterLives(
    List<LinkjoyInventiveFondness> list,
  ) {
    List<LinkjoyInventiveFondness> lvs = [];
    for (LinkjoyInventiveFondness m in list) {
      if (m.status.isLiveOrPause()) {
        lvs.add(m);
      }
    }
    return lvs;
  }

  @override
  void onResume() {
    super.onResume();

    int now = DateTime.now().millisecondsSinceEpoch;
    if (lastRefresh == 0) {
      refreshController.refresh(pull: false);
    } else {
      if (now - lastRefresh > 30 * 1000) {
        refreshController.refresh(pull: true);
      }
    }
  }

  @override
  void onClose() {
    super.onClose();

    _liveCacheStreamSubscription?.cancel();
  }

  Future<
    LinkjoyMoleculeFinancial<LinkjoyMoleculeSorority<LinkjoyInventiveFondness>>
  >
  onLoadResult(int page) async {
    lives = filterLives(
      await LinkjoyInventiveUnlock.instance.subscribe(force: true),
    );
    lastRefresh = DateTime.now().millisecondsSinceEpoch;

    return LinkjoyMoleculeFinancial(
      lives.length,
      LinkjoyMoleculeSorority()
        ..page = 1
        ..hasMore = false
        ..records = lives,
    );
  }

  void linkjoyJeffriesInventive() async {
    if (LinkjoyMineColombia.block(500)) return;

    if (!await checkCallPermission()) return;

    if (!LINKJOY.linkjoyUnbornDeposit!.isReceiveCall()) {
      if (await LinkjoyPeanutsFollower.linkjoyNoFarrah(false)) {
        _goSetting(LinkjoyGet.LinkjoyFoolishlyInventiveDivision);
      }
    } else {
      _goSetting(LinkjoyGet.LinkjoyFoolishlyInventiveDivision);
    }
  }

  Future<dynamic> _goSetting(String route) async {
    Map<Permission, PermissionStatus> statuses = await [
      Permission.camera,
      Permission.microphone,
    ].request();

    if (statuses[Permission.camera] == PermissionStatus.granted &&
        statuses[Permission.microphone] == PermissionStatus.granted) {
      LinkjoySteamyClamOily.linkjoyCampusBop(2, 1);
      return LINKJOY.toNamed(route);
    } else {
      LinkjoySteamyClamOily.linkjoyCampusBop(2, 0);
      LinkjoyUpper.showError("linkjoy_caring_bop_territory".tr);
    }
    return null;
  }

  static Future<bool> checkCallPermission() async {
    Map<Permission, PermissionStatus>? statuses;
    try {
      statuses = await [Permission.camera, Permission.microphone].request();
    } catch (e) {}
    bool hasPermission =
        statuses != null &&
        statuses[Permission.camera] == PermissionStatus.granted &&
        statuses[Permission.microphone] == PermissionStatus.granted;

    if (!hasPermission) {
      LinkjoyUISocially.linkjoyBop(
        "linkjoy_caring_either_bop_territory".tr,
        onCancel: () {
          LinkjoySteamyClamOily.linkjoyCampusBop(2, 0);
          LinkjoyUpper.showError("linkjoy_caring_bop_territory".tr);
        },
      );
    }
    return hasPermission;
  }
}
