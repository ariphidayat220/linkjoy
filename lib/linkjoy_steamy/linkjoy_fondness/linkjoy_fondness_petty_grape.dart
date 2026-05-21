import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_deli.pb.dart';

class LinkjoyPettyGrape {
  late String fromAvatar;
  late String fromName;
  late String toAvatar;
  late String toName;

  late int action;
  late String resultIcon;
  late String resultDesc;

  LinkjoyPettyGrape();

  static LinkjoyPettyGrape fromProto(InteractNoticePSH protoObj) {
    LinkjoyPettyGrape notice = LinkjoyPettyGrape();
    notice.fromAvatar = protoObj.fromAvatar;
    notice.fromName = protoObj.fromName;
    notice.toAvatar = protoObj.toAvatar;
    notice.toName = protoObj.toName;
    notice.action = protoObj.action.value;
    notice.resultIcon = protoObj.resultIcon;
    notice.resultDesc = protoObj.resultDesc;
    return notice;
  }
}
