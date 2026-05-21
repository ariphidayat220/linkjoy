import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ancestor_convict.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:get/get.dart';

class LinkjoySororityConvictShock {
  List<CallExcitation> durationExcitations = [];

  List<CallExcitation> durationExcitationsMatch = [];

  int recordDuration = 0;

  int recordVoice = 0;

  int recordType = 0;

  static LinkjoySororityConvictShock fromJson(Map<String, dynamic> json) {
    LinkjoySororityConvictShock cfg = LinkjoySororityConvictShock();

    var records = json['duration_excitations'];
    if (records != null) {
      cfg.durationExcitations = (records as List<dynamic>?)!
          .map((e) => CallExcitation.fromJson(e as Map<String, dynamic>))
          .toList();

      cfg.durationExcitations.sort(
        (a, b) => a.noticeSec.compareTo(b.noticeSec),
      );
    }

    var matchRecords = json['duration_excitations_match'];
    if (matchRecords != null) {
      cfg.durationExcitationsMatch = (matchRecords as List<dynamic>?)!
          .map((e) => CallExcitation.fromJson(e as Map<String, dynamic>))
          .toList();

      cfg.durationExcitationsMatch.sort(
        (a, b) => a.noticeSec.compareTo(b.noticeSec),
      );
    }

    cfg.recordDuration = LinkjoySmearSister.intDef(json, "record_duration", 0);
    cfg.recordVoice = LinkjoySmearSister.intDef(json, "record_voice", 0);
    cfg.recordType = LinkjoySmearSister.intDef(json, "record_type", 0);

    return cfg;
  }

  CallExcitation? matchExcitation(int? sourceType, int callDuration) {
    List<CallExcitation> list = durationExcitations;
    if (sourceType == ChatCallSourceType.match.index) {
      list = durationExcitationsMatch;
    }
    if (list.isEmpty) return null;

    for (int i = list.length - 1; i >= 0; i--) {
      CallExcitation excitation = list[i];
      if (callDuration >= excitation.noticeSec &&
          callDuration < (excitation.awardSec + 10)) {
        if (excitation.received) {
          return null;
        } else {
          return excitation;
        }
      } else {
        continue;
      }
    }
    return null;
  }

  void received(int awardSec) {
    CallExcitation? excitation = durationExcitations.firstWhereOrNull(
      (e) => e.awardSec == awardSec,
    );
    excitation?.received = true;
  }
}

class CallExcitation {
  late int noticeSec;

  late int awardSec;

  late int awardCoins;

  bool received = false;

  static CallExcitation fromJson(Map<String, dynamic> json) {
    return CallExcitation()
      ..noticeSec = LinkjoySmearSister.intDef(json, "notice_sec", 0)
      ..awardSec = LinkjoySmearSister.intDef(json, "award_sec", 0)
      ..awardCoins = LinkjoySmearSister.intDef(json, "award_coins", 0);
  }

  bool available(int callDuration) {
    return callDuration >= awardSec;
  }
}
