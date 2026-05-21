class LinkjoyAncestorProbeGuitar {
  late int unreadCount;
  late LinkjoyAncestorProbeGnome type;

  LinkjoyAncestorProbeGuitar(
    this.unreadCount, {
    this.type = LinkjoyAncestorProbeGnome.imUnread,
  });
}

enum LinkjoyAncestorProbeGnome { imUnread, likeUnread }
