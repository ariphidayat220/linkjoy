import 'dart:core' as $core;

import 'package:linkjoy/linkjoy_steamy/proto/linkjoy_access_courage.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class InteractNoticePSH_InteractNoticeAction extends $pb.ProtobufEnum {
  static const InteractNoticePSH_InteractNoticeAction GIFT =
      InteractNoticePSH_InteractNoticeAction._(
        0,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'GIFT',
      );
  static const InteractNoticePSH_InteractNoticeAction CALL =
      InteractNoticePSH_InteractNoticeAction._(
        1,
        const $core.bool.fromEnvironment('protobuf.omit_enum_names')
            ? ''
            : 'CALL',
      );

  static const $core.List<InteractNoticePSH_InteractNoticeAction> values =
      <InteractNoticePSH_InteractNoticeAction>[GIFT, CALL];

  static final $core.Map<$core.int, InteractNoticePSH_InteractNoticeAction>
  _byValue = $pb.ProtobufEnum.initByValue(values);

  static InteractNoticePSH_InteractNoticeAction? valueOf($core.int value) =>
      _byValue[value];

  const InteractNoticePSH_InteractNoticeAction._($core.int v, $core.String n)
    : super(v, n);
}
