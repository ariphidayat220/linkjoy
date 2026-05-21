import 'dart:math';

import 'package:linkjoy/linkjoy_steamy/linkjoy_db/linkjoy_hors_cite.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ancestor_unborn.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_hors.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_fondness/linkjoy_ofour.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_divorced.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_protection/linkjoy_steamy_clam_oily.dart';
import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_sister.dart';
import 'package:drift/drift.dart';

import 'linkjoy_ancestor_kim.dart';
import 'linkjoy_ancestor_probe_brilliant.dart';
import 'linkjoy_ofour_contractor.dart';
import 'linkjoy_unborn_contractor.dart';

part 'linkjoy_hors_contractor.g.dart';

class LinkjoyAncestorSupercoolCaitlinTelephonePlacebo {
  final List<LinkjoyAncestorSupercool> chatBoxes;
  final Map<int, LinkjoyOfour> lastSnaps;
  final int totalUnread;

  const LinkjoyAncestorSupercoolCaitlinTelephonePlacebo({
    required this.chatBoxes,
    required this.lastSnaps,
    required this.totalUnread,
  });
}

@DriftAccessor(tables: [LinkjoyAncestorSupercoolCite])
class LinkjoyAncestorSupercoolContractor
    extends DatabaseAccessor<LinkjoyAncestorFinancialMagnet>
    with _$LinkjoyAncestorSupercoolContractorKitten {
  static int retrievalByWeight = 1 << 1;
  static int retrievalByHasSnap = 1 << 2;
  static int retrievalByOrderWeight = 1 << 3;
  static int retrievalByOrderTime = 1 << 4;
  static int retrievalByChatTemp = 1 << 5;

  final LinkjoyOfourContractor _snapDao;
  final LinkjoyUnbornContractor _userDao;

  LinkjoyAncestorSupercoolContractor(super.db, this._snapDao, this._userDao);

  Future saveOrUpdateModels(List<LinkjoyAncestorSupercool>? models) async {
    if (models == null || models.isEmpty) return;
    return transaction(() async {
      for (final m in models) {
        final e = await modelById(m.id);
        if (e == null) {
          var toSave = _modelToEntityCompanion(m);
          if (toSave != null) {
            await into(linkjoyAncestorSupercoolCite).insert(toSave);
          }
        } else {
          var updateVo = _modelToEntityCompanion(m, e);
          if (updateVo != null) {
            await update(linkjoyAncestorSupercoolCite).replace(updateVo);
          }
        }
        await _userDao.saveOrUpdateModels(m.members);
      }
    });
  }

  Future saveOrUpdateChatBoxes(List<LinkjoyAncestorSupercool>? boxes) async {
    if (boxes == null || boxes.isEmpty) return;
    return transaction(() async {
      for (final m in boxes) {
        final e = await modelById(m.id);
        if (e == null) {
          var toSave = _modelToEntityCompanion(m);
          if (toSave != null) {
            await into(linkjoyAncestorSupercoolCite).insert(toSave);
          }
        } else {
          var updateVo = _modelToEntityCompanion(m, e);
          if (updateVo != null) {
            await update(linkjoyAncestorSupercoolCite).replace(updateVo);
          }
        }
      }
    });
  }

  Future updateChatBoxes(List<LinkjoyAncestorSupercool>? boxes) async {
    if (boxes == null || boxes.isEmpty) return;
    return transaction(() async {
      for (final m in boxes) {
        var updateVo = _modelToEntityCompanion(m);
        if (updateVo != null) {
          await update(linkjoyAncestorSupercoolCite).replace(updateVo);
        }
      }
    });
  }

  Future<bool> canDeleteChatBoxMember(int uid) async {
    final rows = await customSelect(
      'SELECT 1 FROM linkjoy_ancestor_supercool_cite WHERE partner_id = ? LIMIT 1',
      variables: [Variable<int>(uid)],
      readsFrom: {linkjoyAncestorSupercoolCite},
    ).get();
    return rows.isEmpty;
  }

  Future updateChatBoxMember(LinkjoyAncestorUnborn user) async {
    await _userDao.saveOrUpdateModels([user]);
  }

  Future<void> updateChatTemp(int chatBoxId, int temp) async {
    final updateSql = update(linkjoyAncestorSupercoolCite)
      ..where((e) => e.id.equals(chatBoxId));
    await updateSql.write(
      LinkjoyAncestorSupercoolCitePleasantry(chat_temp: Value(temp)),
    );
  }

  Future<void> updateWeight(int chatBoxId, int weight) async {
    if (chatBoxId <= 0) return;
    await customStatement(
      'UPDATE linkjoy_ancestor_supercool_cite SET weight = ? WHERE id = ?',
      [weight, chatBoxId],
    );
  }

  Future<linkjoy_hors_cite?> _entityById(int id) {
    final query = select(linkjoyAncestorSupercoolCite)
      ..where((e) => e.id.equals(id));
    return query.getSingleOrNull();
  }

  Future<LinkjoyAncestorSupercool?> modelById(int? id) async {
    if (id == null || id == 0) return null;
    final rows = await customSelect(
      '''
      SELECT * FROM linkjoy_ancestor_supercool_cite
      WHERE id = ?
      LIMIT 1
      ''',
      variables: [Variable<int>(id)],
      readsFrom: {linkjoyAncestorSupercoolCite},
    ).get();
    if (rows.isEmpty) return null;
    final entity = linkjoyAncestorSupercoolCite.map(rows.first.data);
    return _modelByEntity(entity);
  }

  Future<LinkjoyAncestorSupercool?> modelByPartnerId(int? partnerId) async {
    if (partnerId == null || partnerId == 0) return null;
    final rows = await customSelect(
      '''
      SELECT * FROM linkjoy_ancestor_supercool_cite
      WHERE partner_id = ?
      order by last_snap_create_time desc
      LIMIT 1
      ''',
      variables: [Variable<int>(partnerId)],
      readsFrom: {linkjoyAncestorSupercoolCite},
    ).get();
    if (rows.isEmpty) return null;
    final entity = linkjoyAncestorSupercoolCite.map(rows.first.data);
    return _modelByEntity(entity);
  }

  Future<LinkjoyAncestorSupercool?> _modelByEntity(linkjoy_hors_cite? e) async {
    if (e == null) return null;
    final rows = await customSelect(
      '''
      SELECT * FROM linkjoy_ancestor_supercool_cite
      WHERE id = ?
      LIMIT 1
      ''',
      variables: [Variable<int>(e.id)],
      readsFrom: {linkjoyAncestorSupercoolCite},
    ).get();
    if (rows.isEmpty) return null;
    final entity = linkjoyAncestorSupercoolCite.map(rows.first.data);
    final m = _modelFromEntity(entity);
    if (m != null && m.partnerId != null && m.partnerId! > 0) {
      m.chatUser = await _userDao.modelById(m.partnerId);
    }
    return m;
  }

  LinkjoyAncestorSupercoolCitePleasantry? _modelToEntityCompanion(
    LinkjoyAncestorSupercool? m, [
    LinkjoyAncestorSupercool? e,
  ]) {
    if (m == null) return null;
    if (e != null) {
      if (m.lastReadSnapTime == null ||
          (e.lastReadSnapTime != null &&
              m.lastReadSnapTime! < (e.lastReadSnapTime ?? 0))) {
        m.lastReadSnapTime = e.lastReadSnapTime;
      }
      if (m.clearCacheTime == null ||
          (e.clearCacheTime != null &&
              m.clearCacheTime! < (e.clearCacheTime ?? 0))) {
        m.clearCacheTime = e.clearCacheTime;
      }
      if (e.serviceChat != null && (e.serviceChat ?? false)) {
        m.serviceChat = e.serviceChat;
      }
      if (m.partnerId == null && e.partnerId != null) {
        m.partnerId = e.partnerId;
      }
    }
    return LinkjoyAncestorSupercoolCitePleasantry(
      id: m.id != null ? Value(m.id!) : const Value.absent(),
      type: m.type != null ? Value(m.type!) : const Value.absent(),
      name: m.name != null ? Value(m.name) : const Value.absent(),
      coverURL: m.coverURL != null ? Value(m.coverURL) : const Value.absent(),
      owner: m.owner != null ? Value(m.owner!) : const Value.absent(),
      qrCodeURL: m.qrCodeURL != null
          ? Value(m.qrCodeURL)
          : const Value.absent(),
      weight: m.weight != null ? Value(m.weight!) : const Value.absent(),
      muted: m.muted != null ? Value(m.muted!) : const Value.absent(),
      unreadCount: m.unreadCount != null
          ? Value(m.unreadCount!)
          : const Value.absent(),
      updateTime: m.updateTime != null
          ? Value(m.updateTime!)
          : const Value.absent(),
      additionalInfo: m.additionalInfo != null
          ? Value(m.additionalInfo)
          : const Value.absent(),
      desc: m.desc != null ? Value(m.desc) : const Value.absent(),
      serviceChat: m.serviceChat != null
          ? Value(m.serviceChat!)
          : const Value.absent(),
      hasChat: m.hasChat != null ? Value(m.hasChat!) : const Value.absent(),
      lastReadSnapTime: m.lastReadSnapTime != null
          ? Value(m.lastReadSnapTime!)
          : const Value.absent(),
      clearCacheTime: m.clearCacheTime != null
          ? Value(m.clearCacheTime!)
          : const Value.absent(),
      chat_temp: m.chatTemp != null ? Value(m.chatTemp!) : const Value(0),
      partnerId: m.partnerId != null ? Value(m.partnerId!) : const Value(0),
      lastSnapType: m.lastSnapType != null
          ? Value(m.lastSnapType!)
          : const Value.absent(),
      lastSnapTextContent: m.lastSnapTextContent != null
          ? Value(m.lastSnapTextContent)
          : const Value.absent(),
      lastSnapJsonContent: m.lastSnapJsonContent != null
          ? Value(m.lastSnapJsonContent)
          : const Value.absent(),
      lastSnapCreateTime: m.lastSnapCreateTime != null
          ? Value(m.lastSnapCreateTime!)
          : const Value.absent(),
    );
  }

  LinkjoyAncestorSupercool? _modelFromEntity(linkjoy_hors_cite? e) {
    if (e == null) return null;
    return LinkjoyAncestorSupercool()
      ..id = e.id
      ..type = e.type
      ..name = e.name
      ..coverURL = e.coverURL
      ..owner = e.owner
      ..qrCodeURL = e.qrCodeURL
      ..weight = e.weight
      ..muted = e.muted
      ..unreadCount = e.unreadCount
      ..updateTime = e.updateTime
      ..additionalInfo = e.additionalInfo
      ..desc = e.desc
      ..serviceChat = e.serviceChat
      ..hasChat = e.hasChat
      ..lastReadSnapTime = e.lastReadSnapTime
      ..clearCacheTime = e.clearCacheTime
      ..chatTemp = e.chat_temp
      ..partnerId = e.partnerId
      ..lastSnapType = e.lastSnapType
      ..lastSnapTextContent = e.lastSnapTextContent
      ..lastSnapJsonContent = e.lastSnapJsonContent
      ..lastSnapCreateTime = e.lastSnapCreateTime;
  }

  Future<void> deleteChatboxWithSnapsData(int chatBoxId) async {
    if (chatBoxId <= 0) return;
    await transaction(() async {
      await _snapDao.deleteModelsForChatBox(chatBoxId);
      await customStatement(
        'DELETE FROM linkjoy_ancestor_supercool_cite WHERE id = ?',
        [chatBoxId],
      );
    });
  }

  Future<void> deleteChatBoxes(List<LinkjoyAncestorSupercool> models) async {
    if (models.isEmpty) return;
    final ids = models.map((m) => m.id ?? 0).where((id) => id > 0).toList();
    if (ids.isEmpty) return;
    await deleteChatBoxesByIds(ids);
  }

  Future<void> deleteChatBoxesByIds(List<int> ids) async {
    if (ids.isEmpty) return;
    final validIds = ids.where((id) => id > 0).toList();
    if (validIds.isEmpty) return;

    await transaction(() async {
      final placeholders = List.generate(validIds.length, (_) => '?').join(',');
      final variables = validIds.map((e) => Variable<int>(e)).toList();

      await customStatement(
        'DELETE FROM linkjoy_ancestor_supercool_cite WHERE id IN ($placeholders)',
        variables,
      );
    });
  }

  Future<void> deleteChatBoxById(int chatBoxId) async {
    await deleteChatBoxesByIds([chatBoxId]);
  }

  Future<List<LinkjoyAncestorSupercool>?> modelsByIds(
    Iterable<int>? ids,
  ) async {
    if (ids == null || ids.isEmpty) return null;
    return queryChatBoxesByIdsWithSnapshots(ids);
  }

  LinkjoyAncestorSupercool _parseChatBoxFromRow(
    QueryRow row, {
    bool includeFullFields = false,
    bool setLastSnapFields = false,
  }) {
    final chatBox = LinkjoyAncestorSupercool()
      ..id = row.read<int>('id')
      ..type = row.read<int?>('type')
      ..name = row.read<String?>('name')
      ..owner = row.read<int?>('owner')
      ..weight = row.read<int?>('weight')
      ..muted = row.read<bool?>('muted')
      ..unreadCount = row.read<int?>('unread_count')
      ..updateTime = row.read<int?>('update_time')
      ..hasChat = row.read<bool?>('has_chat')
      ..chatTemp = row.read<int?>('chat_temp')
      ..partnerId = row.read<int?>('partner_id');

    if (includeFullFields) {
      chatBox
        ..coverURL = row.read<String?>('cover_u_r_l')
        ..qrCodeURL = row.read<String?>('qr_code_u_r_l')
        ..additionalInfo = row.read<String?>('additional_info')
        ..desc = row.read<String?>('desc')
        ..serviceChat = row.read<bool?>('service_chat')
        ..lastReadSnapTime = row.read<int?>('last_read_snap_time')
        ..clearCacheTime = row.read<int?>('clear_cache_time');
    }

    final uid = row.read<int?>('uid');
    final nickName = row.read<String?>('nick_name') ?? '';
    final avatarUrl = row.read<String?>('avatar_url') ?? '';
    if (uid != null) {
      chatBox.chatUser = LinkjoyAncestorUnborn()
        ..uid = uid
        ..nickName = nickName
        ..avatarUrl = avatarUrl;
    }

    final snapType = row.read<int?>('last_snap_type');
    final snapTextContent = row.read<String?>('last_snap_text_content');
    final snapJsonContent = row.read<String?>('last_snap_json_content');
    final snapCreateTime = row.read<int?>('last_snap_create_time');

    if (setLastSnapFields) {
      chatBox.lastSnapType = snapType;
      chatBox.lastSnapTextContent = snapTextContent;
      chatBox.lastSnapJsonContent = snapJsonContent;
      chatBox.lastSnapCreateTime = snapCreateTime;
    }

    if (chatBox.id != null && (snapCreateTime != null && snapCreateTime > 0)) {
      final snap = LinkjoyOfour()
        ..chatBoxId = chatBox.id
        ..type = snapType
        ..textContent = snapTextContent
        ..jsonContent = snapJsonContent
        ..createTime = snapCreateTime;
      chatBox.lastContent = LinkjoyAncestorSister.convertChatListContent(
        snap,
        LinkjoyDivorced.linkjoyAncestorStubbornLimbicGreen,
      );
      if (chatBox.updateTime != null) {
        chatBox.updateTime = max(chatBox.updateTime!, snapCreateTime);
      }
      chatBox.displayTime = chatBox.updateTime;
    }

    return chatBox;
  }

  Future<List<LinkjoyAncestorSupercool>?> queryChatBoxesByIdsWithSnapshots(
    Iterable<int> ids,
  ) async {
    if (ids.isEmpty) return null;

    final validIds = ids.where((id) => id > 0).toList();
    if (validIds.isEmpty) return null;

    final placeholders = List.generate(validIds.length, (_) => '?').join(',');
    final variables = validIds.map((id) => Variable<int>(id)).toList();

    final sql =
        '''
      SELECT 
        box.id,
        box.type,
        box.owner,
        box.weight,
        box.muted,
        box.unread_count,
        box.update_time,
        box.has_chat,
        box.chat_temp,
        box.partner_id,
        box.last_snap_type,
        box.last_snap_text_content,
        box.last_snap_json_content,
        box.last_snap_create_time,
        u.uid,
        u.nick_name,
        u.avatar_url
      FROM linkjoy_ancestor_supercool_cite box
      LEFT JOIN linkjoy_unborn_cite u ON u.uid = box.partner_id
      WHERE box.id IN ($placeholders)
      ORDER BY box.weight DESC, box.update_time DESC
    ''';

    final rows = await customSelect(
      sql,
      variables: variables,
      readsFrom: {
        linkjoyAncestorSupercoolCite,
        attachedDatabase.linkjoyUnbornCite,
      },
    ).get();

    final chatBoxes = <LinkjoyAncestorSupercool>[];
    for (final row in rows) {
      chatBoxes.add(_parseChatBoxFromRow(row, includeFullFields: true));
    }
    return chatBoxes;
  }

  Future<List<LinkjoyAncestorSupercool>?> queryChatBoxesForChatList(
    int time,
    int pageSize,
  ) async {
    final whereSegments = <String>[];
    final variables = <Variable>[];

    if (time > 0) {
      whereSegments.add('box.update_time < ?');
      variables.add(Variable<int>(time));
    }

    final whereClause = whereSegments.isEmpty
        ? ''
        : 'WHERE ${whereSegments.join(' AND ')}';

    final sql =
        '''
      SELECT 
        box.id,
        box.type,
        box.name,
        box.owner,
        box.weight,
        box.muted,
        box.unread_count,
        box.update_time,
        box.has_chat,
        box.chat_temp,
        box.partner_id,
        box.last_snap_type,
        box.last_snap_text_content,
        box.last_snap_json_content,
        box.last_snap_create_time,
        u.uid,
        u.nick_name,
        u.avatar_url
      FROM linkjoy_ancestor_supercool_cite box
      LEFT JOIN linkjoy_unborn_cite u ON u.uid = box.partner_id
      $whereClause
      ORDER BY box.weight DESC, update_time DESC
      LIMIT ?
    ''';

    variables.add(Variable<int>(pageSize));

    final rows = await customSelect(
      sql,
      variables: variables,
      readsFrom: {
        linkjoyAncestorSupercoolCite,
        attachedDatabase.linkjoyUnbornCite,
      },
    ).get();

    if (rows.isEmpty) return [];

    final chatBoxes = <LinkjoyAncestorSupercool>[];
    for (final row in rows) {
      chatBoxes.add(_parseChatBoxFromRow(row, setLastSnapFields: true));
    }
    return chatBoxes;
  }

  Future<List<LinkjoyAncestorSupercool>?> modelsByIntimacy(
    int minChatTemp,
    int limit,
  ) async {
    final buffer = StringBuffer()
      ..writeln('SELECT * FROM linkjoy_ancestor_supercool_cite')
      ..write('WHERE chat_temp > ?');
    final variables = <Variable<Object>>[Variable<int>(minChatTemp)];

    buffer
      ..writeln()
      ..writeln('ORDER BY chat_temp DESC, update_time DESC')
      ..writeln('LIMIT ?');
    variables.add(Variable<int>(limit));

    final rows = await customSelect(
      buffer.toString(),
      variables: variables,
      readsFrom: {linkjoyAncestorSupercoolCite},
    ).get();

    if (rows.isEmpty) return null;
    final entities = rows
        .map((row) => linkjoyAncestorSupercoolCite.map(row.data))
        .toList();
    return _modelsByEntities(entities);
  }

  Future<List<LinkjoyAncestorSupercool>?> _modelsByEntities(
    List<linkjoy_hors_cite>? es,
  ) async {
    if (es == null || es.isEmpty) return null;
    List<LinkjoyAncestorSupercool> ms = [];
    for (final e in es) {
      final m = await _modelByEntity(e);
      if (m != null) ms.add(m);
    }
    return ms;
  }

  Future<void> linkjoyGridProbeSanskrit(Map<int, int> increments) async {
    if (increments.isEmpty) return;
    await transaction(() async {
      for (final entry in increments.entries) {
        final chatBoxId = entry.key;
        final delta = entry.value;
        if (chatBoxId <= 0 || delta == 0) continue;
        await customStatement(
          '''
          UPDATE linkjoy_ancestor_supercool_cite
          SET unread_count = CASE
            WHEN unread_count + ? < 0 THEN 0
            ELSE unread_count + ?
          END
          WHERE id = ?
          ''',
          [delta, delta, chatBoxId],
        );
      }
    });
  }

  Future<LinkjoyAncestorProbeBrilliant> linkjoyNearProbeShampoo() async {
    final result = await customSelect(
      'SELECT SUM(unread_count) AS message_count, count(1) as session_count FROM linkjoy_ancestor_supercool_cite where unread_count>0',
    ).getSingleOrNull();
    final message_count = result?.data['message_count'] as int?;
    final session_count = result?.data['session_count'] as int?;
    return LinkjoyAncestorProbeBrilliant(
      message_count ?? 0,
      session_count ?? 0,
    );
  }

  Future<void> linkjoyPatterMidwestPunProbeShampoo({
    required int hoursBefore,
  }) async {
    return transaction(() async {
      final affected = await customUpdate(
        'UPDATE linkjoy_ancestor_supercool_cite SET unread_count = 0 WHERE unread_count>0 and update_time < ?',
        variables: [
          Variable.withInt(
            DateTime.now()
                .subtract(Duration(hours: hoursBefore))
                .millisecondsSinceEpoch,
          ),
        ],
        updates: {db.linkjoyAncestorSupercoolCite},
      );
      LinkjoySteamyClamOily.socketTrace("reset unread session:$affected");
    });
  }

  Future<bool> linkjoyEskimoHorsEskimoPun(int id, int time) async {
    return transaction(() async {
      final e = await _entityById(id);
      if (e != null && e.updateTime < time) {
        final updateSql = update(linkjoyAncestorSupercoolCite)
          ..where((e) => e.id.equals(id));
        await updateSql.write(
          LinkjoyAncestorSupercoolCitePleasantry(
            lastReadSnapTime: Value(time),
            updateTime: Value(time),
          ),
        );
        return true;
      }
      return false;
    });
  }

  Future<void> updateChatboxUpdateTimes(Map<int, int> updateTimes) async {
    if (updateTimes.isEmpty) return;
    await transaction(() async {
      for (final entry in updateTimes.entries) {
        final id = entry.key;
        final time = entry.value;
        if (id <= 0) continue;
        await customStatement(
          '''
          UPDATE linkjoy_ancestor_supercool_cite
          SET update_time = ?
          WHERE id = ?
            AND (
              update_time IS NULL
              OR update_time < ?
            )
          ''',
          [time, id, time],
        );
      }
    });
  }

  Future<void> deleteChatBoxesWithoutSnaps() async {
    final subquery = db.selectOnly(db.linkjoyOfourCite)
      ..addColumns([db.linkjoyOfourCite.cid]);
    await (db.delete(
      db.linkjoyAncestorSupercoolCite,
    )..where((cb) => cb.id.isNotInQuery(subquery))).go();
  }

  Future<bool> resetModelUnread(int id) async {
    return transaction(() async {
      LinkjoySteamyClamOily.linkjoyAncestorFbiHair(id, "01");
      final affected = await customUpdate(
        'UPDATE linkjoy_ancestor_supercool_cite SET unread_count = 0 WHERE id = ?',
        variables: [Variable.withInt(id)],
        updates: {db.linkjoyAncestorSupercoolCite},
      );
      if (affected > 0) {
        LinkjoySteamyClamOily.linkjoyAncestorFbiHair(id, "02_$affected");
        return true;
      }
      LinkjoySteamyClamOily.linkjoyAncestorFbiHair(id, "999");
      return false;
    });
  }
}
