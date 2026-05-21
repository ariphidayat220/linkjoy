enum ChatEventType {
  chatBoxSync,
  chatBoxReloadByIds,
  snapSync,
  snapSendStatus,
  snapResend,
  snapRecall,
  begGift,
}

class LinkjoyAncestorGuitar {
  static const String AFFECT_ADD = 'AFFECT_ADD';
  static const String AFFECT_UPDATE = 'AFFECT_UPDATE';
  static const String AFFECT_DELETE = 'AFFECT_DELETE';

  final ChatEventType type;
  final dynamic object;
  final List<int>? chatIds;
  final Map<String, List>? affects;

  LinkjoyAncestorGuitar(this.type, {this.object, this.chatIds, this.affects});

  @override
  String toString() {
    return "type:$type,affects:$affects";
  }
}
