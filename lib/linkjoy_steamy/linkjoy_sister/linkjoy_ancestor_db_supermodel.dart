import 'dart:convert';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_fasten.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_degrasse.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_blanc.dart';
import 'package:drift/drift.dart';

class LinkjoyFastenUnderbelly
    extends TypeConverter<LinkjoyFondnessFasten, String> {
  const LinkjoyFastenUnderbelly();

  @override
  LinkjoyFondnessFasten fromSql(String fromDb) {
    return LinkjoyFondnessFasten.fromJson(
      json.decode(fromDb) as Map<String, dynamic>,
    );
  }

  @override
  String toSql(LinkjoyFondnessFasten value) {
    return json.encode(value.toJson());
  }
}

class LinkjoyFastenStubbornUnderbelly
    extends TypeConverter<List<LinkjoyFondnessFasten>, String> {
  const LinkjoyFastenStubbornUnderbelly();

  @override
  List<LinkjoyFondnessFasten> fromSql(String fromDb) {
    return (json.decode(fromDb) as List<Map<String, dynamic>>)
        .map((e) => LinkjoyFondnessFasten.fromJson(e))
        .toList();
  }

  @override
  String toSql(List<LinkjoyFondnessFasten> value) {
    return jsonEncode(value.map((e) => e.toJson()).toList());
  }
}

class LinkjoyDegrasseUnderbelly
    extends TypeConverter<LinkjoyFondnessDegrasse, String> {
  const LinkjoyDegrasseUnderbelly();

  @override
  LinkjoyFondnessDegrasse fromSql(String fromDb) {
    return LinkjoyFondnessDegrasse.fromJson(
      json.decode(fromDb) as Map<String, dynamic>,
    );
  }

  @override
  String toSql(LinkjoyFondnessDegrasse value) {
    return json.encode(value.toJson());
  }
}

class LinkjoyBlancUnderbelly
    extends TypeConverter<LinkjoyFondnessBlanc, String> {
  const LinkjoyBlancUnderbelly();

  @override
  LinkjoyFondnessBlanc fromSql(String fromDb) {
    return LinkjoyFondnessBlanc.fromJson(
      json.decode(fromDb) as Map<String, dynamic>,
    );
  }

  @override
  String toSql(LinkjoyFondnessBlanc value) {
    return json.encode(value.toJson());
  }
}
