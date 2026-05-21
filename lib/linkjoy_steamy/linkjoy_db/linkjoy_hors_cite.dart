import 'package:drift/drift.dart';

@DataClassName("linkjoy_hors_cite")
@TableIndex(name: 'chatbox_update_time_index', columns: {#updateTime})
@TableIndex(name: 'chatbox_unread_count_index', columns: {#unreadCount})
@TableIndex(name: 'chatbox_partner_id_index', columns: {#partnerId})
@TableIndex.sql('''
  CREATE INDEX chatbox_weight_update_time_index ON linkjoy_ancestor_supercool_cite (weight DESC, update_time DESC)
''')
class LinkjoyAncestorSupercoolCite extends Table {
  IntColumn get id => integer()();

  IntColumn get type => integer().withDefault(const Constant(0))();

  TextColumn get name => text().nullable()();

  TextColumn get coverURL => text().nullable()();

  IntColumn get owner => integer().withDefault(const Constant(0))();

  TextColumn get qrCodeURL => text().nullable()();

  IntColumn get weight => integer().withDefault(const Constant(0))();

  BoolColumn get muted => boolean().withDefault(const Constant(false))();

  IntColumn get unreadCount => integer().withDefault(const Constant(0))();

  IntColumn get updateTime => integer().withDefault(const Constant(0))();

  TextColumn get additionalInfo => text().nullable()();

  TextColumn get desc => text().nullable()();

  BoolColumn get serviceChat => boolean().withDefault(const Constant(false))();

  BoolColumn get hasChat => boolean().withDefault(const Constant(true))();

  IntColumn get lastReadSnapTime => integer().withDefault(const Constant(0))();

  IntColumn get clearCacheTime => integer().withDefault(const Constant(0))();

  IntColumn get chat_temp => integer().withDefault(const Constant(0))();

  IntColumn get partnerId => integer().withDefault(const Constant(0))();

  IntColumn get lastSnapType => integer().withDefault(const Constant(0))();

  TextColumn get lastSnapTextContent => text().nullable()();

  TextColumn get lastSnapJsonContent => text().nullable()();

  IntColumn get lastSnapCreateTime =>
      integer().withDefault(const Constant(0))();

  @override
  Set<Column> get primaryKey => {id};
}
