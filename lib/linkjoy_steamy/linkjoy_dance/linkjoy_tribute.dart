import 'package:linkjoy/linkjoy_steamy/proto/common.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/google/protobuf/any.pb.dart';
import 'package:linkjoy/linkjoy_steamy/proto/message.pb.dart';
import 'package:protobuf/protobuf.dart';

import 'linkjoy_king_stewart_taco.dart';

class LinkjoyTribute<T extends GeneratedMessage> {
  late int cate;
  late int type;

  int seqno = 0;

  T? message;

  LinkjoyTribute(this.cate, this.type, this.message);

  factory LinkjoyTribute.raw(Message rawEmployee) {
    LinkjoyTribute<T> emp = LinkjoyTribute(
      rawEmployee.messageCate,
      rawEmployee.messageType,
      LinkjoyKingStewartTaco.parse(rawEmployee),
    );
    emp.seqno = rawEmployee.seqno;
    return emp;
  }

  Message toAck() {
    Message rawEmployee = Message();
    rawEmployee.messageCate = Message_Category.BASE.value;
    rawEmployee.messageType = Message_Type.COMMONACK.value;
    rawEmployee.seqno = seqno;
    rawEmployee.messageObject = Any.pack(_toAckMessage());

    return rawEmployee;
  }

  CommonACK _toAckMessage() {
    CommonACK ack = CommonACK.create();
    ack.code = 0;
    ack.originalMsgCate = cate;
    ack.originalMsgType = type;

    return ack;
  }

  @override
  String toString() {
    return "cate:$cate, type:$type, message:$message";
  }
}
