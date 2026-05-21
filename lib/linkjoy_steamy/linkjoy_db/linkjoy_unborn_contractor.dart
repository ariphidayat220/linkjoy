import 'package:linkjoy/linkjoy_steamy/linkjoy_db/linkjoy_ancestor_kim.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_db/linkjoy_unborn_cite.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ancestor_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_fondness_hilarious.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_gnome_sister.dart';
import 'package:drift/drift.dart';

part 'linkjoy_unborn_contractor.g.dart';

@DriftAccessor(tables: [LinkjoyUnbornCite])
class LinkjoyUnbornContractor
    extends DatabaseAccessor<LinkjoyAncestorFinancialMagnet>
    with _$LinkjoyUnbornContractorKitten {
  LinkjoyUnbornContractor(super.db);

  Future saveOrUpdateModels(List<LinkjoyAncestorUnborn>? models) async {
    if (models == null || models.isEmpty) return;
    return transaction(() async {
      for (final m in models) {
        final e = _modelToEntityCompanion(m);
        if (e != null) {
          if ((await _entityById(m.uid)) != null) {
            await update(linkjoyUnbornCite).replace(e);
          } else {
            await into(linkjoyUnbornCite).insert(e);
          }
        }
      }
    });
  }

  Future<linkjoy_unborn_cite?> _entityById(int? id) async {
    if (id == null || id == 0) return null;
    final query = select(attachedDatabase.linkjoyUnbornCite)
      ..where((e) => e.uid.equals(id));
    return query.getSingleOrNull();
  }

  LinkjoyUnbornCitePleasantry? _modelToEntityCompanion(
    LinkjoyAncestorUnborn? m,
  ) {
    if (m == null) return null;
    return LinkjoyUnbornCitePleasantry(
      uid: Value(m.uid),
      nick_name: Value(m.nickName),
      avatar_url: Value(m.avatarUrl),
      gender: m.gender != null ? Value(m.gender!) : const Value.absent(),
      signature: m.signature != null
          ? Value(m.signature)
          : const Value.absent(),
      follow: Value(m.followed),
      country_code: m.country != null
          ? Value(m.country!.code)
          : const Value.absent(),
      country_flag: m.country != null
          ? Value(m.country!.flag)
          : const Value.absent(),
      country_name: m.country != null
          ? Value(m.country!.name)
          : const Value.absent(),
      tagIds: m.tagIds != null ? Value(m.tagIds) : const Value.absent(),
      languages: m.languages != null
          ? Value(m.languages)
          : const Value.absent(),
      level: Value(m.level),
    );
  }

  Future deleteModels(List<dynamic>? models) async {
    if (models == null || models.isEmpty) return;
    return transaction(() async {
      for (final m in models.toSet()) {
        final uid = (m is int) ? m : m.uid;
        final del = delete(attachedDatabase.linkjoyUnbornCite)
          ..where((entity) => entity.uid.equals(uid));
        await del.go();
      }
    });
  }

  Future<List<LinkjoyAncestorUnborn>> modelsByIds(Iterable<int> ids) async {
    return transaction(() async {
      List<LinkjoyAncestorUnborn> models = [];
      for (final id in ids) {
        final m = await modelById(id);
        if (m != null) models.add(m);
      }
      return models;
    });
  }

  Future<LinkjoyAncestorUnborn?> modelById(int? id) async {
    return _modelFromEntity(await _entityById(id));
  }

  LinkjoyAncestorUnborn? _modelFromEntity(linkjoy_unborn_cite? e) {
    if (e == null) return null;

    LinkjoyFondnessHilarious? country;

    if (!LinkjoyGnomeSister.isEmpty(e.country_code)) {
      country = LinkjoyFondnessHilarious();
      country.code = e.country_code ?? "";
      country.name = e.country_name ?? "";
      country.flag = e.country_flag ?? "";
    }

    return LinkjoyAncestorUnborn()
      ..uid = e.uid
      ..nickName = e.nick_name!
      ..avatarUrl = e.avatar_url!
      ..gender = e.gender
      ..signature = e.signature
      ..followed = e.follow
      ..level = e.level
      ..languages = e.languages
      ..tagIds = e.tagIds
      ..country = country;
  }
}
