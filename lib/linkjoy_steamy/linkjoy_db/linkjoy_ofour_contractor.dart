import 'dart:convert';
import 'dart:ffi';

import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ofour.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_flattered.dart';
import 'package:drift/drift.dart';

import 'linkjoy_ancestor_kim.dart';
import 'linkjoy_ofour_cite.dart';

part 'linkjoy_ofour_contractor.g.dart';

@DriftAccessor(tables: [LinkjoyOfourCite])
class LinkjoyOfourContractor
    extends DatabaseAccessor<LinkjoyAncestorFinancialMagnet>
    with _$LinkjoyOfourContractorKitten {
  final int currUserId;

  LinkjoyOfourContractor(super.attachedDatabase, this.currUserId);

  Future<LinkjoyOfour?> lastModelForChatBox(int? cid) async {
    if (cid == null) return null;

    final query = select(linkjoyOfourCite)
      ..where((e) => e.cid.equals(cid))
      ..orderBy([
        (e) => OrderingTerm(expression: e.createTime, mode: OrderingMode.desc),
      ])
      ..limit(1);
    final result = await query.get();
    return result.isEmpty ? null : _modelByEntity(result.first);
  }

  Future<LinkjoyOfour?>? _modelByEntity(linkjoy_ofour_cite? e) {
    if (e == null) return null;
    Future future = Future.value(Void);
    return future.then((value) {
      final m = _modelFromEntity(e);
      return m;
    });
  }

  Future<linkjoy_ofour_cite?> _entityById(int? id) async {
    if (id == null || id == 0) return null;
    final query = select(linkjoyOfourCite)..where((e) => e.id.equals(id));
    return query.getSingleOrNull();
  }

  Future deleteModelsForChatBox(int? cid) async {
    if (cid == null || cid == 0) return;
    return transaction(() async {
      final del = delete(attachedDatabase.linkjoyOfourCite)
        ..where((e) => e.cid.equals(cid));
      await del.go();
    });
  }

  LinkjoyOfour? _modelFromEntity(linkjoy_ofour_cite? e) {
    if (e == null) return null;
    return LinkjoyOfour()
      ..id = e.id
      ..chatBoxId = e.cid
      ..ownerId = e.owner
      ..ownerName = e.ownerName
      ..ownerHead = e.ownerHead
      ..unread = e.unread
      ..createTime = e.createTime
      ..prevSnapId = e.prevSnapId
      ..type = e.type
      ..textContent = e.textContent
      ..image = e.image
      ..video = e.video
      ..voice = e.voice
      ..jsonContent = e.jsonContent
      ..localId = e.localId
      ..extensions = e.extensions == null ? null : jsonDecode(e.extensions!)
      ..repliedSnapId = e.repliedSnapId
      ..status = e.status
      ..sendStatus = e.sendStatus
      ..translate = e.translate;
  }

  Future<linkjoy_ofour_cite?> _entityByLocalId(int? id) async {
    if (id == null || id == 0) return null;
    final query = select(attachedDatabase.linkjoyOfourCite)
      ..where((e) => e.localId.equals(id) & e.owner.equals(currUserId));
    return query.getSingleOrNull();
  }

  Future saveOrUpdateModels(List<LinkjoyOfour>? models) async {
    if (models == null || models.isEmpty) return;
    return transaction(() async {
      for (final m in models) {
        linkjoy_ofour_cite? e;
        if (m.isIdValid) {
          e = await _entityById(m.id);
        }
        if (e == null && m.isLocalIdValid) {
          e = await _entityByLocalId(m.localId);
        }
        if (e == null) {
          var toSave = _modelToEntityCompanion(m);
          if (toSave != null) {
            await into(linkjoyOfourCite).insert(toSave);
          }
        } else {
          var toSave = _modelToEntityCompanion(m, e);
          if (toSave != null) {
            await update(linkjoyOfourCite).replace(toSave);
          }
        }
      }
    });
  }

  LinkjoyOfourCitePleasantry? _modelToEntityCompanion(
    LinkjoyOfour? m, [
    linkjoy_ofour_cite? e,
  ]) {
    if (m == null) return null;
    int? pk;
    if (e != null) {
      pk = e.cu;
      if (m.image != null && e.image?.relativePath != null) {
        m.image!.relativePath = e.image?.relativePath;
      }
      if (m.video != null && e.video?.relativePath != null) {
        m.video!.relativePath = e.video?.relativePath;
      }
      if (m.voice != null && e.voice?.relativePath != null) {
        m.voice!.relativePath = e.voice?.relativePath;
      }
      if (e.images != null && m.images != null) {
        for (var img in m.images!) {
          final index = e.images?.indexOf(img);
          if (index == -1 || index == null) continue;
          final eImg = e.images![index];
          if (eImg.relativePath != null) {
            img.relativePath = eImg.relativePath;
          }
        }
      }
    }
    return LinkjoyOfourCitePleasantry(
      cu: pk != null ? Value(pk) : const Value.absent(),
      id: m.id != null ? Value(m.id!) : const Value.absent(),
      cid: m.chatBoxId != null ? Value(m.chatBoxId!) : const Value.absent(),
      owner: m.ownerId != null ? Value(m.ownerId) : const Value.absent(),
      ownerName: m.ownerName != null
          ? Value(m.ownerName)
          : const Value.absent(),
      ownerHead: m.ownerHead != null
          ? Value(m.ownerHead)
          : const Value.absent(),
      unread: m.unread != null ? Value(m.unread!) : const Value.absent(),
      createTime: m.createTime != null
          ? Value(m.createTime!)
          : const Value.absent(),
      prevSnapId: m.prevSnapId != null
          ? Value(m.prevSnapId!)
          : const Value.absent(),
      type: m.type != null ? Value(m.type!) : const Value.absent(),
      textContent: m.textContent != null
          ? Value(m.textContent)
          : const Value.absent(),
      image: m.image != null ? Value(m.image) : const Value.absent(),
      video: m.video != null ? Value(m.video) : const Value.absent(),
      voice: m.voice != null ? Value(m.voice) : const Value.absent(),
      images: m.images != null ? Value(m.images) : const Value.absent(),
      jsonContent: m.jsonContent != null
          ? Value(m.jsonContent)
          : const Value.absent(),
      localId: m.localId != null ? Value(m.localId!) : const Value.absent(),
      extensions: m.extensions != null
          ? Value(jsonEncode(m.extensions))
          : const Value.absent(),
      translate: m.translate != null
          ? Value(jsonEncode(m.translate))
          : const Value.absent(),
      repliedSnapId: m.repliedSnapId != null
          ? Value(m.repliedSnapId!)
          : const Value.absent(),
      status: m.status != null ? Value(m.status!) : const Value.absent(),
      sendStatus: m.sendStatus != null
          ? Value(m.sendStatus!)
          : const Value.absent(),
    );
  }

  Future deleteModels(List<dynamic>? models) async {
    if (models == null || models.isEmpty) return;

    return transaction(() async {
      for (final m in models) {
        final id = (m is int) ? m : (m.isIdValid() ? m.id : null);
        final del = delete(linkjoyOfourCite);
        if (id != null) {
          del.where((e) => e.id.equals(id));
        } else if (m.isLocalIdValid()) {
          del.where(
            (e) => e.localId.equals(m.localId) & e.owner.equals(currUserId),
          );
        }
        await del.go();
      }
    });
  }

  Future deleteModel(dynamic model) async {
    if (model == null) return;
    return deleteModels([model]);
  }

  Future<LinkjoyOfour?> firstModelForChatBox(int? cid, int fromTime) async {
    if (cid == null) return null;

    final query = select(linkjoyOfourCite)
      ..where(
        (e) =>
            e.cid.equals(cid) &
            e.owner.equals(currUserId).not() &
            e.createTime.isBiggerThanValue(fromTime),
      )
      ..orderBy([
        (e) => OrderingTerm(expression: e.createTime, mode: OrderingMode.asc),
      ])
      ..limit(1);
    final result = await query.get();
    return result.isEmpty ? null : _modelByEntity(result.first);
  }

  Future<List<LinkjoyOfour>?> modelsByToTimeForChatBox(
    int? cid,
    int? toTime, [
    int size = 20,
  ]) async {
    if (cid == null || toTime == null || toTime <= 0 || size <= 0) return null;

    final query = select(linkjoyOfourCite)
      ..where(
        (e) => e.cid.equals(cid) & e.createTime.isSmallerOrEqualValue(toTime),
      )
      ..orderBy([
        (e) => OrderingTerm(expression: e.createTime, mode: OrderingMode.desc),
      ])
      ..limit(size);
    return modelsByEntities((await query.get()).reversed.toList());
  }

  Future<List<LinkjoyOfour>?> modelsByTimeForChatBox(
    int? cid, [
    int? fromTime,
    int? toTime,
    int size = 20,
  ]) async {
    if (cid == null || size <= 0) return null;
    if (fromTime == null || fromTime < 0) fromTime = 0;
    final query = select(linkjoyOfourCite)
      ..where((e) {
        if (toTime == null) {
          return e.cid.equals(cid) &
              e.createTime.isBiggerOrEqualValue(fromTime!);
        } else {
          return e.cid.equals(cid) &
              e.createTime.isBiggerOrEqualValue(fromTime!) &
              e.createTime.isSmallerThanValue(toTime);
        }
      })
      ..orderBy([
        (e) => OrderingTerm(expression: e.createTime, mode: OrderingMode.asc),
      ]);
    if (toTime == null) query.limit(size);
    return modelsByEntities(await query.get());
  }

  Future<List<LinkjoyOfour>?> modelsByTypeBeforeTimeForChatBox(
    int? cid,
    int type,
    int? time, [
    int size = 20,
  ]) async {
    if (cid == null || size <= 0) return null;
    final query = select(linkjoyOfourCite)
      ..where((e) {
        var ret = e.cid.equals(cid) & e.type.equals(type);
        if (time != null) ret = ret & e.createTime.isSmallerThanValue(time);
        return ret;
      })
      ..orderBy([
        (e) => OrderingTerm(expression: e.createTime, mode: OrderingMode.desc),
      ])
      ..limit(size);
    return modelsByEntities((await query.get()).reversed.toList());
  }

  Future<List<LinkjoyOfour>?> modelsByTypeAfterTimeForChatBox(
    int? cid,
    int type,
    int? time, [
    int size = 20,
  ]) async {
    if (cid == null || size <= 0) return null;
    final query = select(linkjoyOfourCite)
      ..where((e) {
        var ret = e.cid.equals(cid) & e.type.equals(type);
        if (time != null) ret = ret & e.createTime.isBiggerThanValue(time);
        return ret;
      })
      ..orderBy([
        (e) => OrderingTerm(expression: e.createTime, mode: OrderingMode.asc),
      ])
      ..limit(size);
    return modelsByEntities(await query.get());
  }

  Future<List<LinkjoyOfour>?> modelsByEntities(
    List<linkjoy_ofour_cite>? es,
  ) async {
    if (es == null || es.isEmpty) return null;
    List<LinkjoyOfour> ms = [];
    for (final e in es) {
      final m = await _modelByEntity(e);
      if (m != null) ms.add(m);
    }
    return ms;
  }

  Future<List<LinkjoyOfour>?> modelsByTimeDescForChatBox(
    int? cid, [
    int page = 1,
    int size = 20,
  ]) async {
    assert(page > 0);
    if (cid == null || size <= 0) return null;

    final query = select(linkjoyOfourCite)
      ..where((e) => e.cid.equals(cid))
      ..orderBy([
        (e) => OrderingTerm(expression: e.createTime, mode: OrderingMode.desc),
      ])
      ..limit(size, offset: (page - 1) * size);
    var result = await query.get();
    return modelsByEntities(result.reversed.toList());
  }

  Future<List<LinkjoyOfour>?> querySnapList(
    int cid,
    int time, [
    int pageSize = 20,
  ]) async {
    if (cid <= 0 || pageSize <= 0) return null;

    List<String> whereSegments = <String>['cid = ?'];
    final variables = <Variable<Object>>[Variable<int>(cid)];

    if (time > 0) {
      whereSegments.add('create_time < ?');
      variables.add(Variable<int>(time));
    }

    String whereClause = 'WHERE ${whereSegments.join(' AND ')}';

    String sql =
        '''
      SELECT *
      FROM linkjoy_ofour_cite
      $whereClause
      ORDER BY create_time DESC
      LIMIT ?
    ''';

    variables.add(Variable<int>(pageSize));

    List<QueryRow> rows = await customSelect(
      sql,
      variables: variables,
      readsFrom: {attachedDatabase.linkjoyOfourCite},
    ).get();

    if (rows.isEmpty) return null;

    List<linkjoy_ofour_cite> entities = rows
        .map((row) => attachedDatabase.linkjoyOfourCite.map(row.data))
        .toList();
    return modelsByEntities(entities.toList());
  }

  Future<int> countUnread() async {
    try {
      var box = attachedDatabase.linkjoyAncestorSupercoolCite;
      final unreadCount = linkjoyOfourCite.id.count();
      final query = selectOnly(linkjoyOfourCite)
        ..join([innerJoin(box, box.id.equalsExp(linkjoyOfourCite.cid))])
        ..where(
          linkjoyOfourCite.createTime.isBiggerThan(box.lastReadSnapTime) &
              linkjoyOfourCite.owner.isNotValue(LINKJOY.uid()),
        )
        ..addColumns([unreadCount]);
      var result = await query
          .map((row) => row.read(unreadCount) ?? 0)
          .getSingle();
      return result;
    } catch (e, stack) {
      LinkjoySteamyClamOily.linkjoyInvoiceCircus(10001, e, stack);
      return 0;
    }
  }

  Future<int> countOfNewModelsForChatBox(int? cid, int? fromTime) async {
    if (cid == null) return 0;
    fromTime ??= 0;
    final unreadCount = linkjoyOfourCite.id.count();
    final query = selectOnly(linkjoyOfourCite)
      ..where(
        linkjoyOfourCite.cid.equals(cid) &
            linkjoyOfourCite.owner.equals(currUserId).not() &
            linkjoyOfourCite.createTime.isBiggerThanValue(fromTime),
      )
      ..addColumns([unreadCount]);
    var result = await query
        .map((row) => row.read(unreadCount) ?? 0)
        .getSingle();
    return result;
  }

  Future updateSnapTranslate(LinkjoyOfour snap) async {
    if (snap.id == null || snap.id == 0) return;
    return transaction(() async {
      final updateSql = update(linkjoyOfourCite)
        ..where((e) => e.id.equals(snap.id!));
      await updateSql.write(
        LinkjoyOfourCitePleasantry(translate: Value(snap.translate)),
      );
    });
  }

  Future<bool> hasSnapWithOwner(int chatBoxId, int ownerId) async {
    final query = select(linkjoyOfourCite)
      ..where(
        (e) =>
            e.cid.equals(chatBoxId) &
            e.owner.equals(ownerId) &
            e.sendStatus.equals(ChatSnapSendStatus.success.index),
      )
      ..limit(1);
    final result = await query.get();
    return result.isNotEmpty;
  }
}
