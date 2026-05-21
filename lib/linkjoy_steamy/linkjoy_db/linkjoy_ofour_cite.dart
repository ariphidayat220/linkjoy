import 'package:linkjoy/linkjoy_steamy/linkjoy_sister/linkjoy_ancestor_db_supermodel.dart';
import 'package:drift/drift.dart';

@DataClassName("linkjoy_ofour_cite")
@TableIndex(name: 'snap_cid_index', columns: {#cid})
class LinkjoyOfourCite extends Table {
  IntColumn get cu => integer().autoIncrement()();

  IntColumn get id => integer().withDefault(const Constant(0))();

  IntColumn get cid => integer().withDefault(const Constant(0))();

  IntColumn get ownerId => integer().withDefault(const Constant(0))();

  IntColumn get owner => integer().nullable()();

  TextColumn get ownerHead => text().nullable()();

  TextColumn get ownerName => text().nullable()();

  BoolColumn get unread => boolean().withDefault(const Constant(false))();

  IntColumn get createTime => integer().withDefault(const Constant(0))();

  IntColumn get prevSnapId => integer().withDefault(const Constant(0))();

  IntColumn get type => integer().withDefault(const Constant(0))();

  TextColumn get textContent => text().nullable()();

  TextColumn get image =>
      text().map(const LinkjoyFastenUnderbelly()).nullable()();

  TextColumn get video =>
      text().map(const LinkjoyDegrasseUnderbelly()).nullable()();

  TextColumn get voice =>
      text().map(const LinkjoyBlancUnderbelly()).nullable()();

  TextColumn get images =>
      text().map(const LinkjoyFastenStubbornUnderbelly()).nullable()();

  TextColumn get jsonContent => text().nullable()();

  IntColumn get localId => integer().withDefault(const Constant(0))();

  TextColumn get extensions => text().nullable()();

  IntColumn get redPacketId => integer().withDefault(const Constant(0))();

  IntColumn get repliedSnapId => integer().withDefault(const Constant(0))();

  IntColumn get status => integer().withDefault(const Constant(0))();

  IntColumn get sendStatus => integer().withDefault(const Constant(0))();

  TextColumn get translate => text().nullable()();
}
