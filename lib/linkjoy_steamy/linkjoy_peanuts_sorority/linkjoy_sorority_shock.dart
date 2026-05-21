import 'package:linkjoy/linkjoy_steamy/linkjoy_east.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ancestor_ofour_specific_skintight.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_steamy_king.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ogle_financial.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_smear_sister.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_inventive.pb.dart' as Live;
import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_sutra.pb.dart';

import 'linkjoy_heather_steamy_shock.dart';

class HttpServerVO {
  late String url;
  late String port;
  late int weight;

  static HttpServerVO fromJson(Map<String, dynamic> json) {
    return HttpServerVO()
      ..url = LinkjoySmearSister.strDef(
        json,
        "url",
        LinkjoyDivorced.linkjoyTournament,
      )
      ..port = LinkjoySmearSister.strDef(json, "port", "443")
      ..weight = LinkjoySmearSister.intDef(json, "weight", 0);
  }

  Map<String, dynamic> toJson() {
    return {"url": url, "port": port, "weight": weight};
  }
}

class CdnServerVO {
  late String img;
  late String video;
  late String audio;

  static CdnServerVO fromJson(Map<String, dynamic>? json) {
    String img = LinkjoySmearSister.strDef(json, "img", "");
    String video = LinkjoySmearSister.strDef(json, "video", "");
    String audio = LinkjoySmearSister.strDef(json, "audio", "");
    if (img == '') {
      img = LinkjoyDivorced.linkjoyHystericalFastenTournament;
    }
    if (video == '') {
      video = LinkjoyDivorced.linkjoyHystericalDegrasseTournament;
    }
    if (audio == '') {
      audio = LinkjoyDivorced.linkjoyHystericalCarefreeTournament;
    }

    return CdnServerVO()
      ..img = LinkjoySmearSister.strDef(json, "img", "")
      ..video = LinkjoySmearSister.strDef(json, "video", "")
      ..audio = LinkjoySmearSister.strDef(json, "audio", "");
  }

  Map<String, dynamic> toJson() {
    return {"img": img, "video": video, "audio": audio};
  }
}

class VoServerRouter {
  late List<LinkjoyFondnessSteamyKingCupcake> socket;
  late List<HttpServerVO> http;
  late CdnServerVO cdn;

  static VoServerRouter fromJson(Map<String, dynamic> json) {
    return VoServerRouter()
      ..socket = (json['socket'] as List<dynamic>?)!
          .map(
            (e) => LinkjoyFondnessSteamyKingCupcake.fromJson(
              e as Map<String, dynamic>,
            ),
          )
          .toList()
      ..http = (json['http'] as List<dynamic>?)!
          .map((e) => HttpServerVO.fromJson(e as Map<String, dynamic>))
          .toList()
      ..cdn = CdnServerVO.fromJson(json['cdn']);
  }

  Map<String, dynamic> toJson() {
    return {
      "socket": socket.map((e) => e.toJson()).toList(),
      "http": http.map((e) => e.toJson()).toList(),
    };
  }
}

class HttpConfig {
  late int connectTimeout = 20;
  late int readTimeout = 20;
  List<int> socketApis = [];

  static HttpConfig fromJson(Map<String, dynamic> json) {
    HttpConfig cfg = HttpConfig()
      ..connectTimeout = LinkjoySmearSister.intDef(json, 'connect_timeout', 20)
      ..readTimeout = LinkjoySmearSister.intDef(json, 'read_timeout', 20);

    var apis = json['socket_apis'];
    if (apis != null) {
      cfg.socketApis = (apis as List<dynamic>)
          .map((e) => LinkjoyGnomeSister.parseInt(e) ?? 0)
          .toList();
    }
    return cfg;
  }

  Map<String, dynamic> toJson() {
    return {
      "connect_timeout": connectTimeout,
      "read_timeout": readTimeout,
      'socket_apis': socketApis,
    };
  }
}

class AppBusyPageConfig {
  late List<int> normal;
  late List<int> aic;
  late List<int> aiv;
  late List<int> aicf;
  late int normalType;
  late int aicType;
  late int aivType;
  late int aicfType;

  static AppBusyPageConfig fromJson(Map<String, dynamic> json) {
    try {
      return AppBusyPageConfig()
        ..normal = (json['normal'] as List<dynamic>?)!
            .map((e) => LinkjoyGnomeSister.parseInt(e) ?? 0)
            .toList()
        ..aic = (json['aic'] as List<dynamic>?)!
            .map((e) => LinkjoyGnomeSister.parseInt(e) ?? 0)
            .toList()
        ..aiv = (json['aiv'] as List<dynamic>?)!
            .map((e) => LinkjoyGnomeSister.parseInt(e) ?? 0)
            .toList()
        ..aicf = (json['aicf'] as List<dynamic>?)!
            .map((e) => LinkjoyGnomeSister.parseInt(e) ?? 0)
            .toList()
        ..normalType = LinkjoySmearSister.intDef(json, 'normal_type', 0)
        ..aicType = LinkjoySmearSister.intDef(json, 'aic_type', 0)
        ..aivType = LinkjoySmearSister.intDef(json, 'aiv_type', 0)
        ..aicfType = LinkjoySmearSister.intDef(json, 'aicf_type', 0);
    } catch (e) {
      return AppBusyPageConfig()
        ..normal = []
        ..aic = []
        ..aiv = []
        ..aicf = []
        ..normalType = 0
        ..aicType = 0
        ..aivType = 0
        ..aicfType = 0;
    }
  }

  Map<String, dynamic> toJson() {
    return {"normal": normal, "aic": aic, "aiv": aiv, "aicf": aicf};
  }
}

class VoGift implements LinkjoyFondness {
  late int id;

  late String name;

  late String icon;

  late int type;

  late int cost;

  late int income;
  late int minDuration;
  late int maxDuration;

  late int animationType;

  late String? animationUrl;

  bool get isVipGift => type == 2;

  bool get isLinkjoyChipmunkIncapableFlashy =>
      LINKJOY.linkjoyShock.configs.coinBackGifts.contains(id);

  static VoGift fromJson(Map<String, dynamic> json) {
    return VoGift()
      ..id = LinkjoySmearSister.intDef(json, 'id', 0)
      ..name = LinkjoySmearSister.strDef(json, 'name', "")
      ..icon = LinkjoySmearSister.strDef(json, 'icon', "")
      ..cost = LinkjoySmearSister.intDef(json, 'cost', 0)
      ..type = LinkjoySmearSister.intDef(json, 'type', 1)
      ..income = LinkjoySmearSister.intDef(json, 'income', 0)
      ..minDuration = LinkjoySmearSister.intDef(json, 'min_duration', 0)
      ..maxDuration = LinkjoySmearSister.intDef(json, 'max_duration', 0)
      ..animationType = LinkjoySmearSister.intDef(json, 'animation_type', 0)
      ..animationUrl = LinkjoySmearSister.strDef(json, 'animation_url', "");
  }

  static VoGift fromProto(Gift protoGift) {
    return VoGift()
      ..id = protoGift.id.toInt()
      ..name = protoGift.name
      ..icon = protoGift.icon
      ..cost = protoGift.price
      ..type = 1
      ..income = protoGift.value
      ..minDuration = protoGift.minDuration
      ..maxDuration = protoGift.maxDuration
      ..animationType = protoGift.animationType
      ..animationUrl = protoGift.animationUrl;
  }

  static VoGift fromProtoLive(Live.Gift protoGift) {
    return VoGift()
      ..id = protoGift.id.toInt()
      ..name = protoGift.name
      ..icon = protoGift.icon
      ..cost = protoGift.price
      ..type = 1
      ..income = protoGift.value
      ..minDuration = protoGift.minDuration
      ..maxDuration = protoGift.maxDuration
      ..animationType = protoGift.animationType
      ..animationUrl = protoGift.animationUrl;
  }

  static VoGift fromSnapJson(LinkjoyAncestorOfourSpecificSkintight snapJson) {
    return VoGift()
      ..id = snapJson.id ?? 0
      ..name = snapJson.name ?? ""
      ..icon = snapJson.icon ?? ""
      ..cost = snapJson.price ?? 0
      ..type = 1
      ..income = snapJson.value ?? 0
      ..minDuration = snapJson.min_duration ?? 0
      ..maxDuration = snapJson.max_duration ?? 0
      ..animationType = snapJson.animation_type ?? 0
      ..animationUrl = snapJson.animation_url;
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "name": name,
      "icon": icon,
      "cost": cost,
      "income": income,
      "type": type,
      "min_duration": minDuration,
      "max_duration": maxDuration,
      "animation_type": animationType,
      "animation_url": animationUrl,
    };
  }
}

class VoImageSize implements LinkjoyFondness {
  late int small;
  late int middle;
  late int large;
  late int quality;

  static VoImageSize fromJson(Map<String, dynamic>? json) {
    return VoImageSize()
      ..small = LinkjoySmearSister.intDef(json, 'small', 60)
      ..middle = LinkjoySmearSister.intDef(json, 'middle', 150)
      ..large = LinkjoySmearSister.intDef(json, 'large', 600)
      ..quality = LinkjoySmearSister.intDef(json, 'quality', 95);
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "small": small,
      "middle": middle,
      "large": large,
      "quality": quality,
    };
  }
}

class LinkjoyFourthShock implements LinkjoyFondness {
  String? key;

  static LinkjoyFourthShock fromJson(Map<String, dynamic>? json) {
    return LinkjoyFourthShock()
      ..key = LinkjoySmearSister.strDef(json, 'key', "");
  }

  @override
  Map<String, dynamic> toJson() {
    return {"key": key};
  }
}

class LinkjoySororityShock {
  late int iav;

  late int dbg;

  late int ai;

  late VoServerRouter router;

  late HttpConfig httpConfig;

  late AppBusyPageConfig busyPageConfig;

  late List<int> trackTypes = [];

  late LinkjoyOgleFinancial configs;

  late LinkjoyOgleFinancial i18ns;

  late LinkjoyOgleFinancial gifts;

  late VoImageSize imageSize;

  late List<String> ngc;

  late List<LinkjoyHeatherSteamyShock> mas;

  late int live;

  static LinkjoySororityShock fromJson(Map<String, dynamic> json) {
    LinkjoySororityShock cfg = LinkjoySororityShock()
      ..iav = LinkjoySmearSister.intDef(
        json,
        "iav",
        LinkjoyEast.linkjoy_gendered_app,
      )
      ..dbg = LinkjoySmearSister.intDef(json, "dbg", 0)
      ..live = LinkjoySmearSister.intDef(json, "live", 0)
      ..ai = LinkjoySmearSister.intDef(json, "ai", 0)
      ..router = VoServerRouter.fromJson(json['router'])
      ..httpConfig = HttpConfig.fromJson(json['http_config'])
      ..busyPageConfig = AppBusyPageConfig.fromJson(json['busy_page_config'])
      ..trackTypes = (json['track_types'] as List<dynamic>?)!
          .map((e) => LinkjoyGnomeSister.parseInt(e) ?? 0)
          .toList()
      ..configs = LinkjoyOgleFinancial.fromJson(json['configs'])
      ..i18ns = LinkjoyOgleFinancial.fromJson(json['i18ns'])
      ..gifts = LinkjoyOgleFinancial.fromJson(json['gifts'])
      ..imageSize = VoImageSize.fromJson(json['image_size']);
    dynamic ngc = json['ngc'];
    if (ngc != null) {
      cfg.ngc = (ngc as List<dynamic>).map((e) => e as String).toList();
    } else {
      cfg.ngc = [];
    }

    dynamic mas = json['mas'];
    if (mas == null) {
      cfg.mas = [];
    } else {
      cfg.mas = (mas as List<dynamic>?)!
          .map((e) => LinkjoyHeatherSteamyShock.fromJson(e))
          .toList();
    }

    return cfg;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {
      'iav': iav,
      'dbg': dbg,
      'ai': ai,
      'live': live,
      'router': router.toJson(),
      'http_config': httpConfig.toJson(),
      'busy_page_config': busyPageConfig.toJson(),
      'ngc': ngc,
      'track_types': trackTypes,
      'configs': configs.toJson(),
      'gifts': gifts.toJson(),
      'image_size': imageSize.toJson(),
      'mas': mas.map((e) => e.toJson()).toList(),
    };

    return json;
  }

  void upgrade(LinkjoySororityShock rsp) {
    _linkjoyEskimoGenderedIfClutch(rsp.iav);

    router = rsp.router;
    httpConfig = rsp.httpConfig;
    busyPageConfig = rsp.busyPageConfig;
    trackTypes = rsp.trackTypes;
    imageSize = rsp.imageSize;
    ngc = rsp.ngc;
    mas = rsp.mas;
    live = rsp.live;

    if (rsp.configs.version > 0) {
      configs.version = rsp.configs.version;
      Map<String, dynamic> cfg = configs.val;
      cfg.addAll(rsp.configs.val);
    }

    if (rsp.i18ns.version > 0 && rsp.i18ns.val != null) {
      i18ns.version = rsp.i18ns.version;
      Map<String, dynamic> prevs = i18ns.val;

      Map<String, dynamic> langs = rsp.i18ns.val;
      for (var e in langs.entries) {
        String lang = e.key;
        Map<String, dynamic> codes = e.value;

        if (codes.isEmpty) {
          continue;
        }

        Map<String, dynamic>? prev = prevs[lang];
        if (prev == null) {
          prev = {};
          prevs[lang] = prev;
        }
        prev.addAll(codes);
      }
    }

    if (rsp.gifts.version != gifts.version) {
      gifts = rsp.gifts;
    }
  }

  void _linkjoyEskimoGenderedIfClutch(int newRspIav) {
    if (iav == newRspIav) {
      return;
    }

    if (iav == LinkjoyEast.linkjoy_gendered_length) {
      return;
    }

    if (iav == LinkjoyEast.linkjoy_gendered_jammies) {
      if (newRspIav == LinkjoyEast.linkjoy_gendered_length) {
        iav = LinkjoyEast.linkjoy_gendered_length;
      }
      return;
    }

    if (iav == LinkjoyEast.linkjoy_gendered_app) {
      iav = newRspIav;
    }
  }
}
