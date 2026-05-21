import 'dart:core' as $core;

import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_access_courage.dart';
import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'linkjoy_deli.pbenum.dart';
import 'linkjoy_sutra.pb.dart' as $1;
import 'im_object.pb.dart' as $3;

export 'linkjoy_deli.pbenum.dart';

class GetUserOnlineTimeReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'GetUserOnlineTimeReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterC9(),
          ),
          createEmptyInstance: create,
        )
        ..p<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'uids',
          $pb.PbFieldType.KU6,
        )
        ..hasRequiredFields = false;

  GetUserOnlineTimeReq._() : super();

  factory GetUserOnlineTimeReq({$core.Iterable<$fixnum.Int64>? uids}) {
    final _result = create();
    if (uids != null) {
      _result.uids.addAll(uids);
    }
    return _result;
  }

  factory GetUserOnlineTimeReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory GetUserOnlineTimeReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  GetUserOnlineTimeReq clone() =>
      GetUserOnlineTimeReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  GetUserOnlineTimeReq copyWith(void Function(GetUserOnlineTimeReq) updates) =>
      super.copyWith((message) => updates(message as GetUserOnlineTimeReq))
          as GetUserOnlineTimeReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUserOnlineTimeReq create() => GetUserOnlineTimeReq._();

  GetUserOnlineTimeReq createEmptyInstance() => create();

  static $pb.PbList<GetUserOnlineTimeReq> createRepeated() =>
      $pb.PbList<GetUserOnlineTimeReq>();

  @$core.pragma('dart2js:noInline')
  static GetUserOnlineTimeReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetUserOnlineTimeReq>(create);
  static GetUserOnlineTimeReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get uids => $_getList(0);
}

class GetUserOnlineTimeRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'GetUserOnlineTimeRsp',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$core.int>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'code',
          $pb.PbFieldType.OU3,
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'msg',
        )
        ..pc<$1.UserOnlineTime>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'onlineTimes',
          $pb.PbFieldType.PM,
          subBuilder: $1.UserOnlineTime.create,
        )
        ..hasRequiredFields = false;

  GetUserOnlineTimeRsp._() : super();

  factory GetUserOnlineTimeRsp({
    $core.int? code,
    $core.String? msg,
    $core.Iterable<$1.UserOnlineTime>? onlineTimes,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (onlineTimes != null) {
      _result.onlineTimes.addAll(onlineTimes);
    }
    return _result;
  }

  factory GetUserOnlineTimeRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory GetUserOnlineTimeRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  GetUserOnlineTimeRsp clone() =>
      GetUserOnlineTimeRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  GetUserOnlineTimeRsp copyWith(void Function(GetUserOnlineTimeRsp) updates) =>
      super.copyWith((message) => updates(message as GetUserOnlineTimeRsp))
          as GetUserOnlineTimeRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static GetUserOnlineTimeRsp create() => GetUserOnlineTimeRsp._();

  GetUserOnlineTimeRsp createEmptyInstance() => create();

  static $pb.PbList<GetUserOnlineTimeRsp> createRepeated() =>
      $pb.PbList<GetUserOnlineTimeRsp>();

  @$core.pragma('dart2js:noInline')
  static GetUserOnlineTimeRsp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetUserOnlineTimeRsp>(create);
  static GetUserOnlineTimeRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);

  @$pb.TagNumber(1)
  set code($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);

  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);

  @$pb.TagNumber(2)
  set msg($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);

  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$1.UserOnlineTime> get onlineTimes => $_getList(2);
}

class CustomerServiceReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
    const $core.bool.fromEnvironment('protobuf.omit_message_names')
        ? ''
        : 'CustomerServiceReq',
    package: $pb.PackageName(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : pP.linkjoyLatterC9(),
    ),
    createEmptyInstance: create,
  )..hasRequiredFields = false;

  CustomerServiceReq._() : super();

  factory CustomerServiceReq() => create();

  factory CustomerServiceReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory CustomerServiceReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  CustomerServiceReq clone() => CustomerServiceReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  CustomerServiceReq copyWith(void Function(CustomerServiceReq) updates) =>
      super.copyWith((message) => updates(message as CustomerServiceReq))
          as CustomerServiceReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomerServiceReq create() => CustomerServiceReq._();

  CustomerServiceReq createEmptyInstance() => create();

  static $pb.PbList<CustomerServiceReq> createRepeated() =>
      $pb.PbList<CustomerServiceReq>();

  @$core.pragma('dart2js:noInline')
  static CustomerServiceReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CustomerServiceReq>(create);
  static CustomerServiceReq? _defaultInstance;
}

class CustomerServiceRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'CustomerServiceRsp',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$core.int>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'code',
          $pb.PbFieldType.OU3,
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'msg',
        )
        ..aOM<$3.Chatbox>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'chatbox',
          subBuilder: $3.Chatbox.create,
        )
        ..hasRequiredFields = false;

  CustomerServiceRsp._() : super();

  factory CustomerServiceRsp({
    $core.int? code,
    $core.String? msg,
    $3.Chatbox? chatbox,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    if (chatbox != null) {
      _result.chatbox = chatbox;
    }
    return _result;
  }

  factory CustomerServiceRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory CustomerServiceRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  CustomerServiceRsp clone() => CustomerServiceRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  CustomerServiceRsp copyWith(void Function(CustomerServiceRsp) updates) =>
      super.copyWith((message) => updates(message as CustomerServiceRsp))
          as CustomerServiceRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomerServiceRsp create() => CustomerServiceRsp._();

  CustomerServiceRsp createEmptyInstance() => create();

  static $pb.PbList<CustomerServiceRsp> createRepeated() =>
      $pb.PbList<CustomerServiceRsp>();

  @$core.pragma('dart2js:noInline')
  static CustomerServiceRsp getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CustomerServiceRsp>(create);
  static CustomerServiceRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);

  @$pb.TagNumber(1)
  set code($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);

  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);

  @$pb.TagNumber(2)
  set msg($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);

  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);

  @$pb.TagNumber(3)
  $3.Chatbox get chatbox => $_getN(2);

  @$pb.TagNumber(3)
  set chatbox($3.Chatbox v) {
    setField(3, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasChatbox() => $_has(2);

  @$pb.TagNumber(3)
  void clearChatbox() => clearField(3);

  @$pb.TagNumber(3)
  $3.Chatbox ensureChatbox() => $_ensure(2);
}

class TipNotify extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'TipNotify',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterC9(),
          ),
          createEmptyInstance: create,
        )
        ..aOS(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'iconUrl',
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'msg',
        )
        ..hasRequiredFields = false;

  TipNotify._() : super();

  factory TipNotify({$core.String? iconUrl, $core.String? msg}) {
    final _result = create();
    if (iconUrl != null) {
      _result.iconUrl = iconUrl;
    }
    if (msg != null) {
      _result.msg = msg;
    }
    return _result;
  }

  factory TipNotify.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory TipNotify.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  TipNotify clone() => TipNotify()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  TipNotify copyWith(void Function(TipNotify) updates) =>
      super.copyWith((message) => updates(message as TipNotify)) as TipNotify;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static TipNotify create() => TipNotify._();

  TipNotify createEmptyInstance() => create();

  static $pb.PbList<TipNotify> createRepeated() => $pb.PbList<TipNotify>();

  @$core.pragma('dart2js:noInline')
  static TipNotify getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TipNotify>(create);
  static TipNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get iconUrl => $_getSZ(0);

  @$pb.TagNumber(1)
  set iconUrl($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasIconUrl() => $_has(0);

  @$pb.TagNumber(1)
  void clearIconUrl() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get msg => $_getSZ(1);

  @$pb.TagNumber(2)
  set msg($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasMsg() => $_has(1);

  @$pb.TagNumber(2)
  void clearMsg() => clearField(2);
}

class BalanceInsufficientNotify extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'BalanceInsufficientNotify',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'balance',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  BalanceInsufficientNotify._() : super();

  factory BalanceInsufficientNotify({$fixnum.Int64? balance}) {
    final _result = create();
    if (balance != null) {
      _result.balance = balance;
    }
    return _result;
  }

  factory BalanceInsufficientNotify.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory BalanceInsufficientNotify.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  BalanceInsufficientNotify clone() =>
      BalanceInsufficientNotify()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  BalanceInsufficientNotify copyWith(
    void Function(BalanceInsufficientNotify) updates,
  ) =>
      super.copyWith((message) => updates(message as BalanceInsufficientNotify))
          as BalanceInsufficientNotify;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static BalanceInsufficientNotify create() => BalanceInsufficientNotify._();

  BalanceInsufficientNotify createEmptyInstance() => create();

  static $pb.PbList<BalanceInsufficientNotify> createRepeated() =>
      $pb.PbList<BalanceInsufficientNotify>();

  @$core.pragma('dart2js:noInline')
  static BalanceInsufficientNotify getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<BalanceInsufficientNotify>(create);
  static BalanceInsufficientNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get balance => $_getI64(0);

  @$pb.TagNumber(1)
  set balance($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasBalance() => $_has(0);

  @$pb.TagNumber(1)
  void clearBalance() => clearField(1);
}

class CustomerOnlineNotify extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'CustomerOnlineNotify',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'uid',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  CustomerOnlineNotify._() : super();

  factory CustomerOnlineNotify({$fixnum.Int64? uid}) {
    final _result = create();
    if (uid != null) {
      _result.uid = uid;
    }
    return _result;
  }

  factory CustomerOnlineNotify.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory CustomerOnlineNotify.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  CustomerOnlineNotify clone() =>
      CustomerOnlineNotify()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  CustomerOnlineNotify copyWith(void Function(CustomerOnlineNotify) updates) =>
      super.copyWith((message) => updates(message as CustomerOnlineNotify))
          as CustomerOnlineNotify;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static CustomerOnlineNotify create() => CustomerOnlineNotify._();

  CustomerOnlineNotify createEmptyInstance() => create();

  static $pb.PbList<CustomerOnlineNotify> createRepeated() =>
      $pb.PbList<CustomerOnlineNotify>();

  @$core.pragma('dart2js:noInline')
  static CustomerOnlineNotify getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CustomerOnlineNotify>(create);
  static CustomerOnlineNotify? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get uid => $_getI64(0);

  @$pb.TagNumber(1)
  set uid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);

  @$pb.TagNumber(1)
  void clearUid() => clearField(1);
}

class RecoverStateReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
    const $core.bool.fromEnvironment('protobuf.omit_message_names')
        ? ''
        : 'RecoverStateReq',
    package: $pb.PackageName(
      const $core.bool.fromEnvironment('protobuf.omit_message_names')
          ? ''
          : pP.linkjoyLatterC9(),
    ),
    createEmptyInstance: create,
  )..hasRequiredFields = false;

  RecoverStateReq._() : super();

  factory RecoverStateReq() => create();

  factory RecoverStateReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory RecoverStateReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  RecoverStateReq clone() => RecoverStateReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  RecoverStateReq copyWith(void Function(RecoverStateReq) updates) =>
      super.copyWith((message) => updates(message as RecoverStateReq))
          as RecoverStateReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RecoverStateReq create() => RecoverStateReq._();

  RecoverStateReq createEmptyInstance() => create();

  static $pb.PbList<RecoverStateReq> createRepeated() =>
      $pb.PbList<RecoverStateReq>();

  @$core.pragma('dart2js:noInline')
  static RecoverStateReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RecoverStateReq>(create);
  static RecoverStateReq? _defaultInstance;
}

class UserStatusPSH extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'UserStatusPSH',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterC9(),
          ),
          createEmptyInstance: create,
        )
        ..pc<UserStatus>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'list',
          $pb.PbFieldType.PM,
          subBuilder: UserStatus.create,
        )
        ..hasRequiredFields = false;

  UserStatusPSH._() : super();

  factory UserStatusPSH({$core.Iterable<UserStatus>? list}) {
    final _result = create();
    if (list != null) {
      _result.list.addAll(list);
    }
    return _result;
  }

  factory UserStatusPSH.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory UserStatusPSH.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  UserStatusPSH clone() => UserStatusPSH()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  UserStatusPSH copyWith(void Function(UserStatusPSH) updates) =>
      super.copyWith((message) => updates(message as UserStatusPSH))
          as UserStatusPSH;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserStatusPSH create() => UserStatusPSH._();

  UserStatusPSH createEmptyInstance() => create();

  static $pb.PbList<UserStatusPSH> createRepeated() =>
      $pb.PbList<UserStatusPSH>();

  @$core.pragma('dart2js:noInline')
  static UserStatusPSH getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserStatusPSH>(create);
  static UserStatusPSH? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<UserStatus> get list => $_getList(0);
}

class UserStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'UserStatus',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'uid',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'status',
          $pb.PbFieldType.OU3,
        )
        ..a<$fixnum.Int64>(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'liveId',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..hasRequiredFields = false;

  UserStatus._() : super();

  factory UserStatus({
    $fixnum.Int64? uid,
    $core.int? status,
    $fixnum.Int64? liveId,
  }) {
    final _result = create();
    if (uid != null) {
      _result.uid = uid;
    }
    if (status != null) {
      _result.status = status;
    }
    if (liveId != null) {
      _result.liveId = liveId;
    }
    return _result;
  }

  factory UserStatus.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory UserStatus.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  UserStatus clone() => UserStatus()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  UserStatus copyWith(void Function(UserStatus) updates) =>
      super.copyWith((message) => updates(message as UserStatus)) as UserStatus;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UserStatus create() => UserStatus._();

  UserStatus createEmptyInstance() => create();

  static $pb.PbList<UserStatus> createRepeated() => $pb.PbList<UserStatus>();

  @$core.pragma('dart2js:noInline')
  static UserStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<UserStatus>(create);
  static UserStatus? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get uid => $_getI64(0);

  @$pb.TagNumber(1)
  set uid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);

  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get status => $_getIZ(1);

  @$pb.TagNumber(2)
  set status($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);

  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get liveId => $_getI64(2);

  @$pb.TagNumber(3)
  set liveId($fixnum.Int64 v) {
    $_setInt64(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasLiveId() => $_has(2);

  @$pb.TagNumber(3)
  void clearLiveId() => clearField(3);
}

class EventSubscribeReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'EventSubscribeReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$core.int>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'type',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'status',
          $pb.PbFieldType.OU3,
        )
        ..hasRequiredFields = false;

  EventSubscribeReq._() : super();

  factory EventSubscribeReq({$core.int? type, $core.int? status}) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (status != null) {
      _result.status = status;
    }
    return _result;
  }

  factory EventSubscribeReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory EventSubscribeReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  EventSubscribeReq clone() => EventSubscribeReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  EventSubscribeReq copyWith(void Function(EventSubscribeReq) updates) =>
      super.copyWith((message) => updates(message as EventSubscribeReq))
          as EventSubscribeReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static EventSubscribeReq create() => EventSubscribeReq._();

  EventSubscribeReq createEmptyInstance() => create();

  static $pb.PbList<EventSubscribeReq> createRepeated() =>
      $pb.PbList<EventSubscribeReq>();

  @$core.pragma('dart2js:noInline')
  static EventSubscribeReq getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<EventSubscribeReq>(create);
  static EventSubscribeReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);

  @$pb.TagNumber(1)
  set type($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);

  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get status => $_getIZ(1);

  @$pb.TagNumber(2)
  set status($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);

  @$pb.TagNumber(2)
  void clearStatus() => clearField(2);
}

class InteractNoticePSH extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'InteractNoticePSH',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterC9(),
          ),
          createEmptyInstance: create,
        )
        ..aOS(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'fromAvatar',
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'fromName',
        )
        ..aOS(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'toAvatar',
        )
        ..aOS(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'toName',
        )
        ..e<InteractNoticePSH_InteractNoticeAction>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'action',
          $pb.PbFieldType.OE,
          defaultOrMaker: InteractNoticePSH_InteractNoticeAction.GIFT,
          valueOf: InteractNoticePSH_InteractNoticeAction.valueOf,
          enumValues: InteractNoticePSH_InteractNoticeAction.values,
        )
        ..aOS(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'resultIcon',
        )
        ..aOS(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'resultDesc',
        )
        ..hasRequiredFields = false;

  InteractNoticePSH._() : super();

  factory InteractNoticePSH({
    $core.String? fromAvatar,
    $core.String? fromName,
    $core.String? toAvatar,
    $core.String? toName,
    InteractNoticePSH_InteractNoticeAction? action,
    $core.String? resultIcon,
    $core.String? resultDesc,
  }) {
    final _result = create();
    if (fromAvatar != null) {
      _result.fromAvatar = fromAvatar;
    }
    if (fromName != null) {
      _result.fromName = fromName;
    }
    if (toAvatar != null) {
      _result.toAvatar = toAvatar;
    }
    if (toName != null) {
      _result.toName = toName;
    }
    if (action != null) {
      _result.action = action;
    }
    if (resultIcon != null) {
      _result.resultIcon = resultIcon;
    }
    if (resultDesc != null) {
      _result.resultDesc = resultDesc;
    }
    return _result;
  }

  factory InteractNoticePSH.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory InteractNoticePSH.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  InteractNoticePSH clone() => InteractNoticePSH()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  InteractNoticePSH copyWith(void Function(InteractNoticePSH) updates) =>
      super.copyWith((message) => updates(message as InteractNoticePSH))
          as InteractNoticePSH;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static InteractNoticePSH create() => InteractNoticePSH._();

  InteractNoticePSH createEmptyInstance() => create();

  static $pb.PbList<InteractNoticePSH> createRepeated() =>
      $pb.PbList<InteractNoticePSH>();

  @$core.pragma('dart2js:noInline')
  static InteractNoticePSH getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<InteractNoticePSH>(create);
  static InteractNoticePSH? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fromAvatar => $_getSZ(0);

  @$pb.TagNumber(1)
  set fromAvatar($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasFromAvatar() => $_has(0);

  @$pb.TagNumber(1)
  void clearFromAvatar() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fromName => $_getSZ(1);

  @$pb.TagNumber(2)
  set fromName($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasFromName() => $_has(1);

  @$pb.TagNumber(2)
  void clearFromName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get toAvatar => $_getSZ(2);

  @$pb.TagNumber(3)
  set toAvatar($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasToAvatar() => $_has(2);

  @$pb.TagNumber(3)
  void clearToAvatar() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get toName => $_getSZ(3);

  @$pb.TagNumber(4)
  set toName($core.String v) {
    $_setString(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasToName() => $_has(3);

  @$pb.TagNumber(4)
  void clearToName() => clearField(4);

  @$pb.TagNumber(5)
  InteractNoticePSH_InteractNoticeAction get action => $_getN(4);

  @$pb.TagNumber(5)
  set action(InteractNoticePSH_InteractNoticeAction v) {
    setField(5, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasAction() => $_has(4);

  @$pb.TagNumber(5)
  void clearAction() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get resultIcon => $_getSZ(5);

  @$pb.TagNumber(6)
  set resultIcon($core.String v) {
    $_setString(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasResultIcon() => $_has(5);

  @$pb.TagNumber(6)
  void clearResultIcon() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get resultDesc => $_getSZ(6);

  @$pb.TagNumber(7)
  set resultDesc($core.String v) {
    $_setString(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasResultDesc() => $_has(6);

  @$pb.TagNumber(7)
  void clearResultDesc() => clearField(7);
}

class AwardNoticePSH extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'AwardNoticePSH',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterC9(),
          ),
          createEmptyInstance: create,
        )
        ..aOS(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'avatar',
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'name',
        )
        ..aOS(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'action',
        )
        ..a<$core.int>(
          4,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'coin',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          5,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'cardVideo',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          6,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'cardMatch',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          7,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'cardIm',
          $pb.PbFieldType.OU3,
        )
        ..a<$core.int>(
          8,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'cardKey',
          $pb.PbFieldType.OU3,
        )
        ..hasRequiredFields = false;

  AwardNoticePSH._() : super();

  factory AwardNoticePSH({
    $core.String? avatar,
    $core.String? name,
    $core.String? action,
    $core.int? coin,
    $core.int? cardVideo,
    $core.int? cardMatch,
    $core.int? cardIm,
    $core.int? cardKey,
  }) {
    final _result = create();
    if (avatar != null) {
      _result.avatar = avatar;
    }
    if (name != null) {
      _result.name = name;
    }
    if (action != null) {
      _result.action = action;
    }
    if (coin != null) {
      _result.coin = coin;
    }
    if (cardVideo != null) {
      _result.cardVideo = cardVideo;
    }
    if (cardMatch != null) {
      _result.cardMatch = cardMatch;
    }
    if (cardIm != null) {
      _result.cardIm = cardIm;
    }
    if (cardKey != null) {
      _result.cardKey = cardKey;
    }
    return _result;
  }

  factory AwardNoticePSH.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory AwardNoticePSH.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  AwardNoticePSH clone() => AwardNoticePSH()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  AwardNoticePSH copyWith(void Function(AwardNoticePSH) updates) =>
      super.copyWith((message) => updates(message as AwardNoticePSH))
          as AwardNoticePSH;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static AwardNoticePSH create() => AwardNoticePSH._();

  AwardNoticePSH createEmptyInstance() => create();

  static $pb.PbList<AwardNoticePSH> createRepeated() =>
      $pb.PbList<AwardNoticePSH>();

  @$core.pragma('dart2js:noInline')
  static AwardNoticePSH getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<AwardNoticePSH>(create);
  static AwardNoticePSH? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get avatar => $_getSZ(0);

  @$pb.TagNumber(1)
  set avatar($core.String v) {
    $_setString(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasAvatar() => $_has(0);

  @$pb.TagNumber(1)
  void clearAvatar() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);

  @$pb.TagNumber(2)
  set name($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);

  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get action => $_getSZ(2);

  @$pb.TagNumber(3)
  set action($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasAction() => $_has(2);

  @$pb.TagNumber(3)
  void clearAction() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get coin => $_getIZ(3);

  @$pb.TagNumber(4)
  set coin($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  @$pb.TagNumber(4)
  $core.bool hasCoin() => $_has(3);

  @$pb.TagNumber(4)
  void clearCoin() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get cardVideo => $_getIZ(4);

  @$pb.TagNumber(5)
  set cardVideo($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  @$pb.TagNumber(5)
  $core.bool hasCardVideo() => $_has(4);

  @$pb.TagNumber(5)
  void clearCardVideo() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get cardMatch => $_getIZ(5);

  @$pb.TagNumber(6)
  set cardMatch($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  @$pb.TagNumber(6)
  $core.bool hasCardMatch() => $_has(5);

  @$pb.TagNumber(6)
  void clearCardMatch() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get cardIm => $_getIZ(6);

  @$pb.TagNumber(7)
  set cardIm($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  @$pb.TagNumber(7)
  $core.bool hasCardIm() => $_has(6);

  @$pb.TagNumber(7)
  void clearCardIm() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get cardKey => $_getIZ(7);

  @$pb.TagNumber(8)
  set cardKey($core.int v) {
    $_setUnsignedInt32(7, v);
  }

  @$pb.TagNumber(8)
  $core.bool hasCardKey() => $_has(7);

  @$pb.TagNumber(8)
  void clearCardKey() => clearField(8);
}

class RedDotPSH extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'RedDotPSH',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$core.int>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'type',
          $pb.PbFieldType.OU3,
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'toast',
        )
        ..aOS(
          3,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'args',
        )
        ..hasRequiredFields = false;

  RedDotPSH._() : super();

  factory RedDotPSH({
    $core.int? type,
    $core.String? toast,
    $core.String? args,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    if (toast != null) {
      _result.toast = toast;
    }
    if (args != null) {
      _result.args = args;
    }
    return _result;
  }

  factory RedDotPSH.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory RedDotPSH.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  RedDotPSH clone() => RedDotPSH()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  RedDotPSH copyWith(void Function(RedDotPSH) updates) =>
      super.copyWith((message) => updates(message as RedDotPSH)) as RedDotPSH;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RedDotPSH create() => RedDotPSH._();

  RedDotPSH createEmptyInstance() => create();

  static $pb.PbList<RedDotPSH> createRepeated() => $pb.PbList<RedDotPSH>();

  @$core.pragma('dart2js:noInline')
  static RedDotPSH getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RedDotPSH>(create);
  static RedDotPSH? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get type => $_getIZ(0);

  @$pb.TagNumber(1)
  set type($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);

  @$pb.TagNumber(1)
  void clearType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get toast => $_getSZ(1);

  @$pb.TagNumber(2)
  set toast($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasToast() => $_has(1);

  @$pb.TagNumber(2)
  void clearToast() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get args => $_getSZ(2);

  @$pb.TagNumber(3)
  set args($core.String v) {
    $_setString(2, v);
  }

  @$pb.TagNumber(3)
  $core.bool hasArgs() => $_has(2);

  @$pb.TagNumber(3)
  void clearArgs() => clearField(3);
}

class RelationTempPSH extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'RelationTempPSH',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$fixnum.Int64>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'uid',
          $pb.PbFieldType.OU6,
          defaultOrMaker: $fixnum.Int64.ZERO,
        )
        ..a<$core.int>(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'temp',
          $pb.PbFieldType.OU3,
        )
        ..hasRequiredFields = false;

  RelationTempPSH._() : super();

  factory RelationTempPSH({$fixnum.Int64? uid, $core.int? temp}) {
    final _result = create();
    if (uid != null) {
      _result.uid = uid;
    }
    if (temp != null) {
      _result.temp = temp;
    }
    return _result;
  }

  factory RelationTempPSH.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory RelationTempPSH.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  RelationTempPSH clone() => RelationTempPSH()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  RelationTempPSH copyWith(void Function(RelationTempPSH) updates) =>
      super.copyWith((message) => updates(message as RelationTempPSH))
          as RelationTempPSH;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static RelationTempPSH create() => RelationTempPSH._();

  RelationTempPSH createEmptyInstance() => create();

  static $pb.PbList<RelationTempPSH> createRepeated() =>
      $pb.PbList<RelationTempPSH>();

  @$core.pragma('dart2js:noInline')
  static RelationTempPSH getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<RelationTempPSH>(create);
  static RelationTempPSH? _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get uid => $_getI64(0);

  @$pb.TagNumber(1)
  set uid($fixnum.Int64 v) {
    $_setInt64(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasUid() => $_has(0);

  @$pb.TagNumber(1)
  void clearUid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get temp => $_getIZ(1);

  @$pb.TagNumber(2)
  set temp($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasTemp() => $_has(1);

  @$pb.TagNumber(2)
  void clearTemp() => clearField(2);
}

class HttpReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'HttpReq',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$core.int>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'api',
          $pb.PbFieldType.OU3,
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'params',
        )
        ..hasRequiredFields = false;

  HttpReq._() : super();

  factory HttpReq({$core.int? api, $core.String? params}) {
    final _result = create();
    if (api != null) {
      _result.api = api;
    }
    if (params != null) {
      _result.params = params;
    }
    return _result;
  }

  factory HttpReq.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory HttpReq.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  HttpReq clone() => HttpReq()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  HttpReq copyWith(void Function(HttpReq) updates) =>
      super.copyWith((message) => updates(message as HttpReq)) as HttpReq;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HttpReq create() => HttpReq._();

  HttpReq createEmptyInstance() => create();

  static $pb.PbList<HttpReq> createRepeated() => $pb.PbList<HttpReq>();

  @$core.pragma('dart2js:noInline')
  static HttpReq getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HttpReq>(create);
  static HttpReq? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get api => $_getIZ(0);

  @$pb.TagNumber(1)
  set api($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasApi() => $_has(0);

  @$pb.TagNumber(1)
  void clearApi() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get params => $_getSZ(1);

  @$pb.TagNumber(2)
  set params($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasParams() => $_has(1);

  @$pb.TagNumber(2)
  void clearParams() => clearField(2);
}

class HttpRsp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      $pb.BuilderInfo(
          const $core.bool.fromEnvironment('protobuf.omit_message_names')
              ? ''
              : 'HttpRsp',
          package: $pb.PackageName(
            const $core.bool.fromEnvironment('protobuf.omit_message_names')
                ? ''
                : pP.linkjoyLatterC9(),
          ),
          createEmptyInstance: create,
        )
        ..a<$core.int>(
          1,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'code',
          $pb.PbFieldType.OU3,
        )
        ..aOS(
          2,
          const $core.bool.fromEnvironment('protobuf.omit_field_names')
              ? ''
              : 'result',
        )
        ..hasRequiredFields = false;

  HttpRsp._() : super();

  factory HttpRsp({$core.int? code, $core.String? result}) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (result != null) {
      _result.result = result;
    }
    return _result;
  }

  factory HttpRsp.fromBuffer(
    $core.List<$core.int> i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromBuffer(i, r);

  factory HttpRsp.fromJson(
    $core.String i, [
    $pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY,
  ]) => create()..mergeFromJson(i, r);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
    'Will be removed in next major version',
  )
  HttpRsp clone() => HttpRsp()..mergeFromMessage(this);

  @$core.Deprecated(
    'Using this can add significant overhead to your binary. '
    'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
    'Will be removed in next major version',
  )
  HttpRsp copyWith(void Function(HttpRsp) updates) =>
      super.copyWith((message) => updates(message as HttpRsp)) as HttpRsp;
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static HttpRsp create() => HttpRsp._();

  HttpRsp createEmptyInstance() => create();

  static $pb.PbList<HttpRsp> createRepeated() => $pb.PbList<HttpRsp>();

  @$core.pragma('dart2js:noInline')
  static HttpRsp getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HttpRsp>(create);
  static HttpRsp? _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get code => $_getIZ(0);

  @$pb.TagNumber(1)
  set code($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);

  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get result => $_getSZ(1);

  @$pb.TagNumber(2)
  set result($core.String v) {
    $_setString(1, v);
  }

  @$pb.TagNumber(2)
  $core.bool hasResult() => $_has(1);

  @$pb.TagNumber(2)
  void clearResult() => clearField(2);
}
