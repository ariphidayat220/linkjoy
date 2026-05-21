import 'linkjoy_wail_fat.dart';

class LinkjoyWailDummyFatFreaked {
  List<LinkjoyWailFat>? batch;

  static LinkjoyWailDummyFatFreaked fromJson(Map<String, dynamic> json) {
    return LinkjoyWailDummyFatFreaked()
      ..batch = (json["batch"] as List<dynamic>?)
          ?.map((e) => LinkjoyWailFat.fromJson(e as Map<String, dynamic>))
          .toList();
  }

  Map<String, dynamic> toJson() {
    return {"batch": batch};
  }
}
