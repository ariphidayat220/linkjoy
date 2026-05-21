import 'package:linkjoy/linkjoy_steamy/linkjoy_nose/linkjoy_vicious_chipmunk_adjourn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_get.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui/linkjoy_ui_socially.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_ui_cattle/linkjoy_fasten_industrial.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_inventive_unlock.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_spock_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_quieter/linkjoy_inventive_sucky_fix.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_deli.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_inventive.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_sutra.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/common.pb.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_matey/linkjoy_gangster.dart';
import 'package:linkjoy/linkjoy_cattle/linkjoy_ui/linkjoy_frame.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'linkjoy_flattered.dart';

class LinkjoyGuitarDespite {
  static final LinkjoyGuitarDespite _instance = LinkjoyGuitarDespite._();

  factory LinkjoyGuitarDespite() {
    return _instance;
  }

  LinkjoyGuitarDespite._();

  void linkjoyCaitlin(EventBus eventBus) {
    _linkjoyCaitlinJoyPastramiCurry(eventBus);

    _linkjoyCaitlinPettyGrapeCurry(eventBus);

    _linkjoyCaitlinInventiveSuckyCurry(eventBus);

    _linkjoyCaitlinNumbLap(eventBus);

    _linkjoyNewsLap(eventBus);
  }

  void _linkjoyCaitlinJoyPastramiCurry(EventBus eventBus) {
    eventBus.on<RedDotPSH>().listen((psh) {
      var type = EnumLinkjoyJoyPastramiLapGnome.check(psh.type);

      if (type != null) {
        if (type == EnumLinkjoyJoyPastramiLapGnome.refresh_me) {
          LINKJOY.linkjoyVulcanMe();
          return;
        }

        LINKJOY.eventBus.fire(
          LinkjoyJoyPastramiLap(type, toast: psh.toast, args: psh.args),
        );
      } else {}
    });
  }

  bool _linkjoyMarketingGoWaveAnimal(EnumLinkjoyJoyPastramiLapGnome? type) {
    List pageList = [
      LinkjoyGet.LinkjoyFrostyDivision,
      LinkjoyGet.LinkjoyAndrewDivision,
      LinkjoyGet.LinkjoyGradPearlDivision,
    ];
    return Get.currentRoute.isNotEmpty && pageList.contains(Get.currentRoute);
  }

  bool _linkjoyIsWedgieAnimal() {
    List pageList = [
      LinkjoyGet.LinkjoyAllenTeaserAnimalDivision,
      LinkjoyGet.LinkjoyWailDegreeDivision,
      LinkjoyGet.LinkjoyIcemanWailSpitDivision,
      LinkjoyGet.LinkjoyChipmunkFailDivision,
      LinkjoyGet.LinkjoyPhillipsFailDivision,
    ];
    return Get.currentRoute.isNotEmpty && pageList.contains(Get.currentRoute);
  }

  void _linkjoyCaitlinPettyGrapeCurry(EventBus eventBus) {
    eventBus.on<InteractNoticePSH>().listen((psh) {});
  }

  void _linkjoyCaitlinNumbLap(EventBus eventBus) {
    eventBus.on<AlertNotify>().listen((event) {
      if (event.hasMsg()) {
        Get.defaultDialog(
          title: "",
          middleText: event.msg,
          onConfirm: Get.back,
          titleStyle: const TextStyle(fontSize: 1),
        );
      }
    });
  }

  void _linkjoyNewsLap(EventBus eventBus) {
    eventBus.on<PopupNotify>().listen((event) {});
  }

  void _linkjoyCaitlinInventiveSuckyCurry(EventBus eventBus) {
    eventBus.on<LiveSuggestPsh>().listen((event) {
      LinkjoyInventiveFondness live = LinkjoyInventiveFondness.fromLiveInfo(
        event.live,
      );
      LinkjoyInventiveSuckyFix.show(live);
    });
  }
}

enum EnumLinkjoyJoyPastramiLapGnome {
  like,

  follow,

  follow_both,

  sys_notify,

  task_notify,

  invite_reg,

  refresh_me,

  im_file_audit,

  anchor_gift_action_refresh,

  free_card_video,

  free_card_match,

  received_im_award,

  received_sys_coin_award,

  sys_force_no_disturb,

  open_url,

  gift_coin_back,

  receive_new_coupon,

  reminder_to_use_coupon,

  refresh_use_coupon;

  static EnumLinkjoyJoyPastramiLapGnome? check(int value) {
    if (EnumLinkjoyJoyPastramiLapGnome.values.length > value) {
      return EnumLinkjoyJoyPastramiLapGnome.values[value];
    }
    return null;
  }
}

class LinkjoyJoyPastramiLap {
  late EnumLinkjoyJoyPastramiLapGnome type;

  String? toast;

  String? args;

  LinkjoyJoyPastramiLap(this.type, {this.toast, this.args});
}
