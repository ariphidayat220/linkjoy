import 'dart:core' as $core;

import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_access_courage.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class LiveStatus extends $pb.ProtobufEnum {
  static const LiveStatus UNKNOWN = LiveStatus._(
    0,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'UNKNOWN',
  );
  static const LiveStatus LIVE = LiveStatus._(
    1,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LIVE',
  );
  static const LiveStatus END = LiveStatus._(
    2,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'END',
  );
  static const LiveStatus PAUSE = LiveStatus._(
    3,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PAUSE',
  );
  static const LiveStatus ERROR_END = LiveStatus._(
    4,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'ERROR_END',
  );
  static const LiveStatus ALIVE_TIMEOUT = LiveStatus._(
    5,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'ALIVE_TIMEOUT',
  );

  static const $core.List<LiveStatus> values = <LiveStatus>[
    UNKNOWN,
    LIVE,
    END,
    PAUSE,
    ERROR_END,
    ALIVE_TIMEOUT,
  ];

  static final $core.Map<$core.int, LiveStatus> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static LiveStatus? valueOf($core.int value) => _byValue[value];

  const LiveStatus._($core.int v, $core.String n) : super(v, n);
}

class LivePkStatus extends $pb.ProtobufEnum {
  static const LivePkStatus INIT = LivePkStatus._(
    0,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INIT',
  );
  static const LivePkStatus CONFIRM_TIMEOUT = LivePkStatus._(
    1,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CONFIRM_TIMEOUT',
  );
  static const LivePkStatus CONFIRMED = LivePkStatus._(
    2,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'CONFIRMED',
  );
  static const LivePkStatus STREAM_TIMEOUT = LivePkStatus._(
    3,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'STREAM_TIMEOUT',
  );
  static const LivePkStatus STREAM_ERROR = LivePkStatus._(
    4,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'STREAM_ERROR',
  );
  static const LivePkStatus PK_ING = LivePkStatus._(
    5,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'PK_ING',
  );
  static const LivePkStatus PK_COMPLETE = LivePkStatus._(
    6,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'PK_COMPLETE',
  );
  static const LivePkStatus PK_END = LivePkStatus._(
    7,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'PK_END',
  );
  static const LivePkStatus MANUAL_END_BEFORE_COMPLETE = LivePkStatus._(
    8,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'MANUAL_END_BEFORE_COMPLETE',
  );
  static const LivePkStatus MANUAL_END_AFTER_COMPLETE = LivePkStatus._(
    9,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'MANUAL_END_AFTER_COMPLETE',
  );
  static const LivePkStatus END_WITH_ERROR = LivePkStatus._(
    10,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'END_WITH_ERROR',
  );

  static const $core.List<LivePkStatus> values = <LivePkStatus>[
    INIT,
    CONFIRM_TIMEOUT,
    CONFIRMED,
    STREAM_TIMEOUT,
    STREAM_ERROR,
    PK_ING,
    PK_COMPLETE,
    PK_END,
    MANUAL_END_BEFORE_COMPLETE,
    MANUAL_END_AFTER_COMPLETE,
    END_WITH_ERROR,
  ];

  static final $core.Map<$core.int, LivePkStatus> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static LivePkStatus? valueOf($core.int value) => _byValue[value];

  const LivePkStatus._($core.int v, $core.String n) : super(v, n);
}

class LivePkOpt extends $pb.ProtobufEnum {
  static const LivePkOpt OPT_NONE = LivePkOpt._(
    0,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'OPT_NONE',
  );
  static const LivePkOpt OPT_CONFIRMED = LivePkOpt._(
    2,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'OPT_CONFIRMED',
  );
  static const LivePkOpt OPT_STREAM_TIMEOUT = LivePkOpt._(
    3,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'OPT_STREAM_TIMEOUT',
  );
  static const LivePkOpt OPT_STREAM_ERROR = LivePkOpt._(
    4,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'OPT_STREAM_ERROR',
  );
  static const LivePkOpt OPT_PK_READY = LivePkOpt._(
    5,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'OPT_PK_READY',
  );
  static const LivePkOpt OPT_END_BEFORE_COMPLETE = LivePkOpt._(
    8,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'OPT_END_BEFORE_COMPLETE',
  );
  static const LivePkOpt OPT_END_AFTER_COMPLETE = LivePkOpt._(
    9,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'OPT_END_AFTER_COMPLETE',
  );
  static const LivePkOpt OPT_END_WITH_ERROR = LivePkOpt._(
    10,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'OPT_END_WITH_ERROR',
  );

  static const $core.List<LivePkOpt> values = <LivePkOpt>[
    OPT_NONE,
    OPT_CONFIRMED,
    OPT_STREAM_TIMEOUT,
    OPT_STREAM_ERROR,
    OPT_PK_READY,
    OPT_END_BEFORE_COMPLETE,
    OPT_END_AFTER_COMPLETE,
    OPT_END_WITH_ERROR,
  ];

  static final $core.Map<$core.int, LivePkOpt> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static LivePkOpt? valueOf($core.int value) => _byValue[value];

  const LivePkOpt._($core.int v, $core.String n) : super(v, n);
}

class LiveFailReason extends $pb.ProtobufEnum {
  static const LiveFailReason NONE = LiveFailReason._(
    0,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NONE',
  );
  static const LiveFailReason FROM_CONFIRM_TIMEOUT = LiveFailReason._(
    1,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'FROM_CONFIRM_TIMEOUT',
  );
  static const LiveFailReason TO_CONFIRM_TIMEOUT = LiveFailReason._(
    2,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'TO_CONFIRM_TIMEOUT',
  );
  static const LiveFailReason FROM_STREAM_TIMEOUT = LiveFailReason._(
    3,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'FROM_STREAM_TIMEOUT',
  );
  static const LiveFailReason TO_STREAM_TIMEOUT = LiveFailReason._(
    4,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'TO_STREAM_TIMEOUT',
  );
  static const LiveFailReason FROM_STREAM_ERROR = LiveFailReason._(
    5,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'FROM_STREAM_ERROR',
  );
  static const LiveFailReason TO_STREAM_ERROR = LiveFailReason._(
    6,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'TO_STREAM_ERROR',
  );
  static const LiveFailReason FROM_MANUAL_END = LiveFailReason._(
    7,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'FROM_MANUAL_END',
  );
  static const LiveFailReason TO_MANUAL_END = LiveFailReason._(
    8,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'TO_MANUAL_END',
  );
  static const LiveFailReason FROM_KEEPALIVE_END = LiveFailReason._(
    9,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'FROM_KEEPALIVE_END',
  );
  static const LiveFailReason TO_KEEPALIVE_END = LiveFailReason._(
    10,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'TO_KEEPALIVE_END',
  );
  static const LiveFailReason FROM_ERROR_END = LiveFailReason._(
    11,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'FROM_ERROR_END',
  );
  static const LiveFailReason TO_ERROR_END = LiveFailReason._(
    12,
    const $core.bool.fromEnvironment('protobuf.omit_enum_names')
        ? ''
        : 'TO_ERROR_END',
  );

  static const $core.List<LiveFailReason> values = <LiveFailReason>[
    NONE,
    FROM_CONFIRM_TIMEOUT,
    TO_CONFIRM_TIMEOUT,
    FROM_STREAM_TIMEOUT,
    TO_STREAM_TIMEOUT,
    FROM_STREAM_ERROR,
    TO_STREAM_ERROR,
    FROM_MANUAL_END,
    TO_MANUAL_END,
    FROM_KEEPALIVE_END,
    TO_KEEPALIVE_END,
    FROM_ERROR_END,
    TO_ERROR_END,
  ];

  static final $core.Map<$core.int, LiveFailReason> _byValue =
      $pb.ProtobufEnum.initByValue(values);

  static LiveFailReason? valueOf($core.int value) => _byValue[value];

  const LiveFailReason._($core.int v, $core.String n) : super(v, n);
}
