import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ofour.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_sister.dart';

class LinkjoyAncestorOfourAholdKetchup {
  static const int GROUP_MAX_CAPACITY = 10;

  static const int GROUP_INTERVAL_IN_MILLISECONDS = 5 * 60 * 1000;

  static List<LinkjoyAncestorOfourAholdKetchup>? sortSnaps(
    List<LinkjoyOfour>? snaps, {
    LinkjoyOfour? moreFirstSnap,
    LinkjoyAncestorOfourAholdKetchup? lastGroup,
    bool autoTranslate = false,
  }) {
    if (snaps == null || snaps.isEmpty) return null;

    snaps.sort((a, b) => a.createTime!.compareTo(b.createTime!));

    LinkjoyAncestorOfourAholdKetchup? group = lastGroup;
    final ret = <LinkjoyAncestorOfourAholdKetchup>[];
    for (final s in snaps) {
      if (s.isCallJsonSnap ||
          group == null ||
          group.isBeyondCapacity() ||
          group.isBeyondTimeInterval(s.createTime ?? 0) ||
          (moreFirstSnap != null && s == moreFirstSnap)) {
        group = LinkjoyAncestorOfourAholdKetchup(
          ChatDateItem(s.createTime ?? 0),
        );
        ret.insert(0, group);
      }

      s.autoTranslate = autoTranslate;
      group.snaps.insert(0, s);
    }
    return ret;
  }

  final ChatDateItem dateItem;
  List<LinkjoyOfour> snaps = [];

  LinkjoyAncestorOfourAholdKetchup(this.dateItem);

  bool isEmpty() => snaps.isEmpty;

  bool isBeyondCapacity() => snaps.length >= GROUP_MAX_CAPACITY;

  bool isBeyondTimeInterval(int milliseconds) =>
      (dateItem.milliSeconds - milliseconds).abs() >
      GROUP_INTERVAL_IN_MILLISECONDS;
}

class ChatDateItem {
  final int milliSeconds;

  ChatDateItem(this.milliSeconds);

  String get showText => LinkjoyAncestorSister.formatMessageTime(milliSeconds);
}

class ChatNewItem {}
