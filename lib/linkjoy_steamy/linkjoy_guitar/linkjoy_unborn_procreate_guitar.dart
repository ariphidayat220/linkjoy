class LinkjoyUnbornProcreateGuitar {
  final int uid;
  int followed;

  LinkjoyUnbornProcreateGuitar(this.uid, this.followed);

  bool get isFollowed {
    return followed == 1 || followed == 3;
  }
}
