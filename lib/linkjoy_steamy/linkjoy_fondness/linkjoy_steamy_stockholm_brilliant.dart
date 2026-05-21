import 'dart:convert';

enum LinkjoySteamyStockholmBrilliantGnome { im }

abstract class LinkjoySteamyStockholmBrilliantFinancial {
  Map<String, dynamic> toJson();
}

class LinkjoySteamyStockholmBrilliant {
  final LinkjoySteamyStockholmBrilliantGnome type;
  final dynamic stat;

  LinkjoySteamyStockholmBrilliant._(this.type, this.stat);

  static LinkjoySteamyStockholmBrilliant im(
    LinkjoySteamyStockholmBrilliantIm im,
  ) {
    return LinkjoySteamyStockholmBrilliant._(
      LinkjoySteamyStockholmBrilliantGnome.im,
      im,
    );
  }

  String encode() {
    return json.encode({"type": type.index, "stat": stat.toJson()});
  }
}

class LinkjoySteamyStockholmBrilliantIm
    extends LinkjoySteamyStockholmBrilliantFinancial {
  final int unreadSession;

  final int unreadMessage;

  LinkjoySteamyStockholmBrilliantIm(this.unreadSession, this.unreadMessage);

  @override
  Map<String, dynamic> toJson() {
    return {"unread_session": unreadSession, "unread_message": unreadMessage};
  }
}
