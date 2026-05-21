import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_hors.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_unborn.dart';

class LinkjoyAncestorDivisionJaw {
  LinkjoyAncestorSupercool? chatBox;

  late int uid;
  late String nickName;
  late String avatarUrl;

  LinkjoyAncestorDivisionJaw.byChatBox(LinkjoyAncestorSupercool box) {
    chatBox = box;

    uid = box.chatUser!.uid;
    nickName = box.chatUser!.nickName;
    avatarUrl = box.chatUser!.avatarUrl;
  }

  LinkjoyAncestorDivisionJaw.byUser(LinkjoyUnborn user) {
    uid = user.uid;
    nickName = user.nickName;
    avatarUrl = user.avatarUrl;
  }
}
