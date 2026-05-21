import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';

class LinkjoyHeatherSteamy {
  static const String SCHEMA = "m://";

  late String id;
  late String uri;

  bool closeable = true;

  double widthPercent = 1;

  double? aspectRatio;

  @override
  String toString() {
    return "$SCHEMA$id/$uri";
  }

  static LinkjoyHeatherSteamy? fromUrl(String routeUrl) {
    try {
      LinkjoyHeatherSteamy app = LinkjoyHeatherSteamy();
      int idx = routeUrl.indexOf("/", SCHEMA.length);
      if (idx == -1) {
        app.id = routeUrl.substring(SCHEMA.length);
        app.uri = "#/";
      } else {
        app.id = routeUrl.substring(SCHEMA.length, idx);
        app.uri = routeUrl.substring(idx + 1);
      }

      return app;
    } catch (e) {
      return null;
    }
  }

  static LinkjoyHeatherSteamy fromJson(Map<String, dynamic> json) {
    LinkjoyHeatherSteamy u = LinkjoyHeatherSteamy()
      ..id = json['id']
      ..uri = json['uri'];

    var tmp = json['width_percent'];
    if (tmp != null) {
      u.widthPercent = LinkjoyGnomeSister.parseDouble(tmp)!;
    }

    tmp = json['aspect_ratio'];
    if (tmp != null) {
      u.aspectRatio = LinkjoyGnomeSister.parseDouble(tmp);
    }

    return u;
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {"id": id, "uri": uri};

    map['width_percent'] = widthPercent;

    if (aspectRatio != null) {
      map['aspect_ratio'] = aspectRatio;
    }

    return map;
  }
}
