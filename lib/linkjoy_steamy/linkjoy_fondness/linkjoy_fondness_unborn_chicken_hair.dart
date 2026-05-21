import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_sutra.pb.dart';

class LinkjoyFondnessUnbornChickenHair {
  int? uid;
  int? onlineTime;
  bool? online;

  bool? onLive;

  int? roomId;
  bool? isPrivateLive;
  int? roomType;
  String? roomTopicName;
  bool? onCall;

  bool get isBusy => onCall == true;

  bool get isOnline => online == true;

  static LinkjoyFondnessUnbornChickenHair fromProto(
    UserOnlineTime userOnlineTime,
  ) {
    return LinkjoyFondnessUnbornChickenHair()
      ..uid = userOnlineTime.uid.toInt()
      ..onCall = userOnlineTime.isOnCall
      ..online = userOnlineTime.isOnline
      ..onLive = userOnlineTime.isOnLive
      ..onlineTime = userOnlineTime.onlineTime.toInt()
      ..roomId = userOnlineTime.roomId.toInt();
  }
}
